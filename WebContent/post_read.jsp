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
	<title>게시글 상세열람_19831049 이민혁</title>
	<link rel="stylesheet" href="./style/style.css" type="text/css">
</head>
<body>
	<h1>게시글 상세열람</h1>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String num=request.getParameter("num");
	
	Class.forName("com.mysql.jdbc.Driver");
	String db_address = "jdbc:mysql://localhost:3306/basicjsp";
	String db_username = "jspid";
	String db_pwd = "rudals";
	
	Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
	
	String insertQuery = "SELECT * FROM basicjsp.board_19831049 WHERE num=" + num;
	PreparedStatement psmt = connection.prepareStatement(insertQuery);
	ResultSet result = psmt.executeQuery();
	%>
	
	<table border="1">
		<%
		while(result.next())
		{
		%>
			<tr>
				<td>게시글 번호</td>
				<td><%=result.getInt("num") %></td>
			</tr>
			<tr>
				<td>작성날짜</td>
				<td><%=result.getTimestamp("reg_date") %></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%=result.getString("writer") %></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><%=result.getString("title") %></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><%=result.getString("content") %></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type=button onclick="location.href='post_new.jsp'">신규 게시글 작성</button>
					<button type=button onclick="location.href='post_list.jsp'">돌아가기</button>
				</td>
			</tr>
		<%
		}
		%>
	</table>
</body>
</html>