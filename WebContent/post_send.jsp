<%@page import="java.sql.Timestamp"%>
<%@page import="java.text.SimpleDateFormat"%>
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
<title>Insert title here</title>
</head>
<body>
<form action="post_list.jsp" method="post">
	<%
	int readcnt = 0;
	
	Timestamp today_date = new Timestamp(System.currentTimeMillis());
	
	request.setCharacterEncoding("UTF-8");
	
	String writer=request.getParameter("writer");
	String pwd = request.getParameter("pwd");
	String title = request.getParameter("title");
	String body = request.getParameter("body");
	
	Class.forName("com.mysql.jdbc.Driver");
	String db_address = "jdbc:mysql://localhost:3306/basicjsp";
	String db_username = "jspid";
	String db_pwd = "rudals";
	
	Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
	
	int num = 0;
	String insertQuery = "SELECT MAX(num) from basicjsp.board_19831049";
	PreparedStatement psmt = connection.prepareStatement(insertQuery);
	ResultSet result = psmt.executeQuery();
	
	if(result.next())
	{
		num = result.getInt("MAX(num)")+1;
	}
	
	insertQuery = "INSERT INTO basicjsp.board_19831049(num, password, title, writer, content, reg_date) VALUES (?,?,?,?,?,?)";
	psmt = connection.prepareStatement(insertQuery);
	psmt.setInt(1, num);
	psmt.setString(2,pwd);
	psmt.setString(3,title);
	psmt.setString(4, writer);
	psmt.setString(5, body);
	psmt.setTimestamp(6, today_date);
	psmt.executeUpdate();
	%>
	</form>
</body>
</html>