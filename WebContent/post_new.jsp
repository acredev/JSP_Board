<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>글 작성하기</h1>
	<form action="post_new_send.jsp" method="post">
		<table border="1">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer"></td>
			</tr>
			<tr>
				<td>글 비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="20" name="body"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="글 작성"></td>
			</tr>
		</table>
	</form>
</body>
</html>