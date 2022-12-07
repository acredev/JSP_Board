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
<title>게시글 수정(JSP전송)_19831049 이민혁</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		Class.forName("com.mysql.jdbc.Driver");
		String db_address = "jdbc:mysql://localhost:3306/basicjsp";
		String db_username = "jspid";
		String db_pwd = "rudals";
		
		Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
		
		String insertQuery = "SELECT * FROM basicjsp.board_19831049 WHERE num = ?";
		PreparedStatement psmt = connection.prepareStatement(insertQuery);
		psmt.setInt(1,num);
		ResultSet result = psmt.executeQuery();
		
		if (result.next()) {
			insertQuery = "UPDATE basicjsp.board_19831049 set title=?, writer=?, content=? WHERE num=?";
			psmt = connection.prepareStatement(insertQuery);
			psmt.setString(1, title);
			psmt.setString(2, writer);
			psmt.setString(3, body);
			psmt.setInt(4, num);
			psmt.executeUpdate();
			
			response.sendRedirect("post_list.jsp");
		}
	%>
</body>
</html>