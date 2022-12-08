<%@page import="java.sql.Timestamp"%>
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
	<title>신규 게시글 저장 (JSP전송)_19831049 이민혁</title>
</head>
<body>
	<form action="post_list.jsp" method="post">
		<input type="button" value="글 목록 보기" onclick="location.href='post_list.jsp'">
		<%
		try
		{
			int readcnt = 0;
	
			Timestamp today_date = new Timestamp(System.currentTimeMillis());
	
			request.setCharacterEncoding("UTF-8");
	
			String writer=request.getParameter("writer");
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
	
			insertQuery = "INSERT INTO basicjsp.board_19831049(num, title, writer, content, reg_date) VALUES (?,?,?,?,?)";
			psmt = connection.prepareStatement(insertQuery);
			psmt.setInt(1, num);
			psmt.setString(2,title);
			psmt.setString(3, writer);
			psmt.setString(4, body);
			psmt.setTimestamp(5, today_date);
			psmt.executeUpdate();
	
			response.sendRedirect("post_list.jsp");
		}
		catch (Exception ex)
		{
			System.out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
		}
		%>
	</form>
</body>
</html>