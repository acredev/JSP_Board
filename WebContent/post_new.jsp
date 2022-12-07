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
	<h1>글 작성하기</h1>
	<form action="post_new_send.jsp" method="post">
		<table>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer" style="width:100%"></td>
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
				<td colspan="2">
					<button type="submit" value="글 작성">글 작성</button>
					<button type="button" value="글 목록으로 돌아가기" onclick="location.href='post_list.jsp'">글 목록으로 돌아가기</button>
					<button type="reset" value="입력내용 초기화">입력내용 초기화</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>