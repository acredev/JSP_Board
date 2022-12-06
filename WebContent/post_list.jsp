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
		<%
		Class.forName("com.mysql.jdbc.Driver");
		String db_address = "jdbc:mysql://localhost:3306/basicjsp";
		String db_username = "jspid";
		String db_pwd = "rudals";
		
		Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
		
		String insertQuery = "SELECT * FROM basicjsp.board_19831049";
		PreparedStatement psmt = connection.prepareStatement(insertQuery);
		ResultSet result = psmt.executeQuery();
		%>
		
		<table border="1">
			<tr>
				<td>글번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>내용</td>
				<td>작성날짜</td>
				
				<%
				while(result.next())
				{
				%>
					<tr>
						<td><%=result.getInt("num") %></td>
						<td><%=result.getString("title") %></td>
						<td><%=result.getString("writer") %></td>
						<td><%=result.getString("content") %></td>
						<td><%=result.getTimestamp("reg_date") %></td>
					</tr>
					<%
					}
					%>
		</table>
	</body>
</html>