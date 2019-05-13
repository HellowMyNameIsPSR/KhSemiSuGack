<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.semi.admin.model.vo.*"%>
<% 
ArrayList<SearchMember> list = (ArrayList<SearchMember>) request.getAttribute("list");
%>    
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
	
									
						<div>
							<table class="table table-bordered">
								<tr>
									<td style="width:180px;">개인정보</td>
									<td style="width:150px;">
										<select name="searchType" id="searchType" style="width: 330px;">
											<option value="email">이메일</option>
											<option value="name">이름</option>d
										</select>
									</td>
									
									<td  colspan="2" style="width:600px;">
										<input type="text" name="searchText">
									</td>
								</tr>
								
								<tr>
									<td>회원유형</td>
									<td style="width:150px;">
										<input type="radio" name="memberType" value="일반회원 " id="radio1"/><label for="radio1">일반회원</label>
										<input type="radio" name="memberType" value="판매회원" id="radio2" /><label for="radio2">판매회원</label>
									</td>
									
								</tr>
								<tr>
									<td>가입일</td>
									<td><input type="date" name="joinStart" style="width:300px;"/></td>
									<td style="width:30px;"><label style="font-size:15px; text-align:center;">~</label></td>
									<td style="width:500px;">
										<input type="date" name="joinLast" style="width:300px;"/>
									</td>
								</tr>
								<tr>
									<td>생년월일</td>
									<td><input type="date" name="birthDateStart" style="width:300px;"/></td>
									<td style="width:30px;"><label style="font-size:15px; text-align:center;">~</label></td>
									<td style="width:500px;">
										<input type="date" name="birthDateLast" style="width:300px;"/>
									</td>
								</tr>
								<tr>
									<td style="width:180px;">성별</td>
									<td colspan="3" style="width:150px;">
										<input type="radio" name="gender" value="M" id="radio3"/><label for="radio3">남자</label>
										<input type="radio" name="gender" value="F" id="radio4" /><label for="radio4">여자</label>
									</td>
									
									
								</tr>

							</table>	
							<button id="search" style="float:right;">조회</button>				
						</div>
						
								<table class="table table-bordered" style="border:2px solid gray; text-align:center">
			<tr style="background:lightgray;">
				<td>번호</td>
				<td>회원유형</td>
				<td>회원이메일</td>
				<td>회원이름</td>
				<td>회원가입일</td>
				<td>생년월일</td>
				<td>성별</td>
				
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
	<script>
	$("#search").click(function(){
		var searchType = $("#searchType").val();
		var joinStart = $("input[name='joinStart']").val();
		$.ajax({
			url:"memberCheck.ad",
			data:
			type:"get",
			success:function(data){
				console.log(data);
				$tableBody = $("#userInfoTable tbody");
				
				$tableBody.html('');
				
				$.each(data, function(index, value){
					var $tr = $("<tr>");
					var $noTd = $("<td>").text(value.userNo);
					var $nameTd = $("<td>").text(decodeURIComponent(value.userName));
					var $nationTd = $("<td>").text(decodeURIComponent(value.userNation));
					
					$tr.append($noTd);
					$tr.append($nameTd);
					$tr.append($nationTd);
					$tableBody.append($tr);
					
				})
			}
			
		});
	})
	</script>
</body>
</html>