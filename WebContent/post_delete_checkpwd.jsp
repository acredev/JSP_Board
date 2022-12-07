<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="./style/style.css" type="text/css">
</head>
<body>
	<h1>글 삭제 - 비밀번호 확인</h1>
	<form action="post_delete_send.jsp" method="post">
		<table>
			<tr>
				<td>글 비밀번호</td>
				<td><input type="password" name="pwd" style="width:100%"></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" value="글 삭제">글 삭제</button>
					<button type="button" value="닫기" onclick="self.close();">닫기</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>