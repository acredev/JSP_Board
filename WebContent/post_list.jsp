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
	<form action="post_read.jsp" method="post">
		<%
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
				<td>글번호</td>
				<td>작성자</td>
				<td>제목</td>
				<td>작성날짜</td>
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
			</tr>
			<%
			}
			%>
		</table>
	</form>
</body>
</html>