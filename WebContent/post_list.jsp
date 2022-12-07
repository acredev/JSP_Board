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
	<script language="javascript">
		function popup_modifypwd() {
			window.open("post_modify_checkpwd.jsp", "게시글 수정 - 비밀번호 확인", "width=800, height=400, left=200, top=100");
		}
		function popup_deletepwd() {
			window.open("post_delete_checkpwd.jsp", "게시글 삭제 - 비밀번호 확인", "width=800, height=400, left=200, top=100");
		}
	</script>
	<link rel="stylesheet" href="./style/style.css" type="text/css">
</head>
<body>
	<form action="post_read.jsp" method="post">
		<h1>글 목록</h1>
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
				<td colspan = "5">
					<button type="button" value="새 글 작성하기" onclick="location.href='post_new.jsp'">새 글 작성하기</button>
					<p>제목을 클릭하면 글 상세보기로 이동합니다.</p>
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
					<button type="button" value="수정" onClick="popup_modifypwd();">수정</button>
					<button type="button" value="삭제" onClick="popup_deletepwd();">삭제</button>
				</td>
			</tr>
			<%
			}
			%>
		</table>
	</form>
</body>
</html>