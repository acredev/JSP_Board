<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 삭제_19831049 이민혁</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	int num = Integer.parseInt(request.getParameter("num"));
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		String db_address = "jdbc:mysql://localhost:3306/basicjsp";
		String db_username = "jspid";
		String db_pwd = "rudals";
	
		Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
	
		String insertQuery = "DELETE FROM basicjsp.board_19831049 WHERE num = ?";
	
		PreparedStatement psmt = connection.prepareStatement(insertQuery);
		psmt.setInt(1, num);
		psmt.executeUpdate();
		response.sendRedirect("post_list.jsp");
	}
	
	catch (Exception ex)
	{
		System.out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
	}
	%>
</body>
</html>