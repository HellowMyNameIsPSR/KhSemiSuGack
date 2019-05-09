<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style>
	.joinForm{
		border:1px solid lightgray;
		width:600px;
		height:650px;
		padding:30px;
	}
	table{
		margin-top:50px;
	}
	input{
		padding:5px;
	}
	.btn{
		width:100px;
	}
	.btn-block{
		width:300px;
	}
	form{
		margin-top:20px;
	}
	h2{
		margin-bottom:20px;
	}
</style>
</head>
<body>
<%@ include file="../main/mainMenubar.jsp" %>
	<div class="container" align="center">			
			<div class="joinForm" align="center">
				<h2 align="center">회원가입</h2>
			
				<form action="<%= request.getContextPath() %>/insertMember.me" method="post" class="form-horizontal">
					<div class="form-group">
						<label class="control-label col-sm-3">이메일</label>
						<div class="col-sm-6">
							<input type="email" name="email" class="form-control">
						</div>
						<button class="col-sm-2 btn btn-primary">중복확인</button>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">비밀번호</label>
						<div class="col-sm-6">
							<input type="password" name="password" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">비밀번호확인</label>
						<div class="col-sm-6">
							<input type="password" name="password2" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">핸드폰</label>
						<div class="col-sm-6">
							<input type="tel" name="phone" class="form-control">
						</div>
						<button class="col-sm-2 btn btn-primary">인증</button>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">이름</label>
						<div class="col-sm-6">
							<input type="text" name="name" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">닉네임</label>
						<div class="col-sm-6">
							<input type="text" name="nickName" class="form-control">
						</div>
						<button class="col-sm-2 btn btn-primary">중복확인</button>
					</div>
					<div class="col-sm-3"></div>
					<div class="col-sm-6">
					<button type="submit" class="btn btn-primary btn-md btn-block">회원가입</button>
					<button type="reset" class="btn btn-default btn-md btn-block"> 취소 </button>
					</div>
				</form>
					<br>
					
			
			</div>
			
		
	</div>
</body>
</html>




















