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
	<title>게시글 수정_19831049 이민혁</title>
	<link rel="stylesheet" href="./style/style.css" type="text/css">
</head>
<body>
	<h1>게시글 수정</h1>
	<%
	try
	{
		request.setCharacterEncoding("UTF-8");
	
		int num = Integer.parseInt(request.getParameter("num"));
	
		Class.forName("com.mysql.jdbc.Driver");
		String db_address = "jdbc:mysql://localhost:3306/basicjsp";
		String db_username = "jspid";
		String db_pwd = "rudals";
	
		Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
	
		String insertQuery = "SELECT * FROM basicjsp.board_19831049 WHERE num=?";
		PreparedStatement psmt = connection.prepareStatement(insertQuery);
		psmt.setInt(1, num);
		ResultSet result = psmt.executeQuery();
		%>
	
		<%
		while(result.next())
		{
		%>
			<form action="post_modify_send.jsp" method="post">
			<input type="hidden" name="num" value="<%=result.getInt("num") %>">
			<table border="1">
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer" value="<%=result.getString("writer") %>"></td>
				</tr>
				<tr>
					<td>글제목</td>
					<td><input type="text" name="title" value="<%=result.getString("title") %>"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><input type="text" name="body" value="<%=result.getString("content") %>"></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit">글 수정하기</button>
						<button type="reset">내용 원상복귀</button>
						<button type="button" onclick="location.href='post_list.jsp'">글 목록으로 돌아가기</button>
					</td>
				</tr>
			</table>
			</form>
		<%
		}
		
	}
	catch (Exception ex)
	{
		System.out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
	}
	%>
</body>
</html>