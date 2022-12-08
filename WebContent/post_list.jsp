<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 목록_19831049 이민혁</title>
	<link rel="stylesheet" href="./style/style.css" type="text/css">
</head>
<body>
	<form action="post_read.jsp" method="get">
		<h1>게시글 목록</h1>
		<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String db_address = "jdbc:mysql://localhost:3306/basicjsp";
			String db_username = "jspid";
			String db_pwd = "rudals";
		
			Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
		
			String insertQuery = "SELECT * FROM basicjsp.board_19831049 order by num desc";
			PreparedStatement psmt = connection.prepareStatement(insertQuery);
			ResultSet result = psmt.executeQuery();
		%>
		
			<table border="1">
				<tr>
					<td colspan = "5">
						<h3>제목을 클릭하면 게시글을 상세 열람할 수 있습니다.</h3>
					</td>
				</tr>
				<tr>
					<td>글번호</td>
					<td>작성자</td>
					<td>제목</td>
					<td>작성날짜</td>
					<td>관리</td>
				</tr>
				<%
				while(result.next())
				{
				%>
				<tr>
					<td><%=result.getInt("num") %></td>
					<td><%=result.getString("writer") %></td>
					<td><a href="post_read.jsp?num=<%=result.getInt("num") %>"><%=result.getString("title") %></a></td>
					<td><%=result.getTimestamp("reg_date") %></td>
					<td>
						<button type="button" value="수정" onClick="location.href='post_modify.jsp?num=<%=result.getString("num") %>'">수정</button>
						<button type="button" value="삭제" onClick="location.href='post_delete.jsp?num=<%=result.getString("num") %>'">삭제</button>
					</td>
				</tr>
				<%
				}
				%>
				<tr>
					<td colspan = "5">
						<button type="button" onclick="location.href='post_new.jsp'">신규 게시글 작성</button>
					</td>
				</tr>
			</table>
		<%
		}
		catch (Exception ex)
		{
			System.out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
		}
		%>		
	</form>
</body>
</html>