<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 - 회원관리</title>
<style>
	 .container{
	width: 80%;`
	}
	.checkbox-inline{
		background: red;
	}
	
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body class="is-preload">
<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->
		<div id="main">
			<div class="inner">
				<!-- Header -->
				<header id="header">
					<a href="adminHome.jsp" class="logo">
						Admin<strong>HOME</strong>
					</a>
				</header>
				<section id="contents">
					<header class="main">
						<h3>회원정보조회</h3>
	
									
						<form action="">
							<table class="table table-bordered">
								<tr>
									<td style="width:180px;">개인정보</td>
									<td style="width:150px;">
										<select name="" id="" style="width: 330px;">
											<option value="">이메일</option>
											<option value="">이름</option>
											<option value="">닉네임</option>
										</select>
									</td>
									
									<td  colspan="2" style="width:600px;">
										<input type="text" />
									</td>
								</tr>
								
								<tr>
									<td>회원유형</td>
									<td style="width:150px;">
										<input type="radio" /><label>유형1</label>
									</td>
									
									<td  colspan="2" style="width:600px;">
										<input type="text" />
									</td>
								</tr>
								<tr>
									<td>가입일</td>
									<td><input type="date" style="width:300px;"/></td>
									<td style="width:30px;"><label style="font-size:15px; text-align:center;">~</label></td>
									<td style="width:500px;">
										<input type="date" style="width:300px;"/>
									</td>
								</tr>
								<tr>
									<td>
										<select name="" id="">
											<option value="">주문일</option>
											<option value="">결제일</option>
										</select>
									</td>
									<td colspan="3">
									<input type="date" style="width:600px;"/>
									</td>
								</tr>
								<tr>
									<td style="width:180px;">주문정보</td>
									<td style="width:150px;">
										<select name="" id="" style="width: 330px;">
											<option value="">상품</option>
											<option value="">펀딩</option>
										</select>
									</td>
									
									<td  colspan="2" style="width:600px;">
										<input type="text" placeholder="상품명 입력"/>
									</td>
								</tr>

							</table>	
							<input type="submit" value="조회" style="float:right">					
						</form>
						
								<table class="table table-bordered" style="border:2px solid gray; text-align:center">
			<tr style="background:lightgray;">
				<td>번호</td>
				<td>분류</td>
				<td>펀딩명</td>
				<td>펀딩코드</td>
				<td>펀딩등록일</td>
				<td>펀딩마감일</td>
				<td>펀딩진행률</td>
				<td>판매자</td>
			</tr>
			<tr>
				<td>1</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>3</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>4</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>5</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<div class="row" style="padding-left:200px">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</div>
						
						</div>
					</header>
					<!-- Contents area -->
				</section>
			</div>
		<%@ include file="adminMenubar.jsp" %>
	</div>
			
</body>
</html>