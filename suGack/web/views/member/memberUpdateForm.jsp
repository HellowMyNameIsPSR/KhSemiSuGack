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
			<h3 align="center">회원정보수정</h3>
			<form>
				<table align="center">
					<tr>
						<td>이메일</td>
						<td><input type="email" id="email" readonly></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" id="password"></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><input type="password" id="password2"></td>
					</tr>
					<tr>
						<td>핸드폰 번호</td>
						<td><input type="tel" id="phone"></td>
						<td><button>인증하기</button></td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td><input type="text" id="nickname"></td>
						<td><button>중복확인</button></td>
					</tr>
					<tr>
						<td>성별</td>
						<td>
							<input type="radio" name="gender" id="male" value="M"> <label for="male">남자</label>
							&nbsp;&nbsp;
							<input type="radio" name="gender" id="female" value="F"> <label for="female">여자</label>
						</td>
					<tr>
					<tr>
						<td>생년월일</td>
						<td><input type="date" id="birth"></td>
					</tr>
				</table>
				<br>
				<button type="submit">정보수정</button>
				<button type="reset">취소</button>
			</form>
		
	</div>
</body>
</html>




















