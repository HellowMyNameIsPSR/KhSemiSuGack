<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<style>
	tr{
		height:50px;
	}
</style>
</head>
<body>
	<div class="container" align="center">
		<div class="logo" style="height:150px;" align="center">로고가 들어갈 자리</div>
			<h3 align="center">회원가입</h3>
			<%-- <form action="<%= request.getContextPath() %>/insertMember.me" method="post"> --%>
			<form action="#" method="post">
				<table align="center">
					<tr>
						<td>이메일</td>
						<td><input type="email" name="email"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="password"></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><input type="password" name="password2"></td>
					</tr>
					<tr>
						<td>핸드폰 번호</td>
						<td><input type="tel" name="phone"></td>
						<td><button>인증하기</button></td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td><input type="text" name="nickName"></td>
						<td><button>중복확인</button></td>
					</tr>
				</table>
				<br>
				<button type="submit">회원가입</button>
				<button type="reset">취소</button>
			</form>
		
	</div>
</body>
</html>




















