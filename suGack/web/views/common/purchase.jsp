<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매하기</title>

<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<style>
		<%@ include file="../assets/css/main.html" %>
	</style>
<style>
	.name{
		width:100%;
		font-size:30px;
	}
</style>
</head>
<body>

<!-- Wrapper -->
	<div id="wrapper">
	
		<!-- Main -->
		<div id="main">
				
			<div class="inner">
				
				<!-- Header -->
				
				<header id="header">
					<div class="name">구매하기</div>
				</header>
				
				<section id="contents">
				
					<div class="container" >
					<div class="row">
					<div class="col-sm-5 product" style="background-color:lavender; margin-left:30px; height:100%;">
				
					<table>
						<tr>
							<td colspan="3">구매자정보 및 배송지정보</td>
						</tr>
						<tr>
							<td>받는사람</td>
							<td colspan="2"><input type="text">
						</tr>
						
						<tr>
							<td>연락처</td>
							<td><input type="tel"></td>
							<td><button>변경하기</button></td>
						</tr>
						
						<tr>
							<td colspan="2">
								<select>
									<option>주소1</option>
									<option>주소2</option>
								</select>
							</td>
						</tr>
						
						<tr>
							<td>우편번호</td>
							<td><input type="text"></td>
							<td><button>우편번호 찾기</button></td>
						</tr>
						
						<tr>
							<td>기본주소</td>
							<td colspan="2"><input type="text">
						</tr>
						
						<tr>
							<td>상세주소</td>
							<td colspan="2"><input type="text">
						</tr>
					</table>
					</div>
					
					
				
					<div class="col-sm-2 product"></div>
					
					
					
					<br>
					<br>
						<div class="col-sm-5 product" style="background-color:lavenderblush; height:100%;">
						<div class="outer">
					<table style="width:423px; height:420px;">
						<tr>
							<td colspan="3">**님의 작품입니다</td>
						</tr>
						<tr>
							<td><label style="font-size:20px;">품명 및 모델명</label></td>
						
						</tr>
						
						<tr>
							<td colspan="2">내용</td>
							
							<td ><label>가격</label></td>
							
						</tr>
						
						<tr>
							<td colspan="2">내용</td>
							
							<td ><label>가격</label></td>
							
						</tr>
						
						
						<tr>
							<td colspan="2">배송비</td>
							
							<td ><label>가격</label></td>
							
						</tr>
						
						<tr>
							<td colspan="2" style="font-size:20px;">최종 결제금액</td>
							
							<td ><label style="font-size:20px; color:red;">가격</label></td>
							
						</tr>
						
					</table>
					
					
					</div>
				</div>
					
					</div>
				
					
					<hr>
					
					<div class="ok" style="float:right;">
					<input type="checkbox" value="전체동의" checked><label>전체동의</label>
					</div>
					
					<label>이용약관</label>
					<textarea readonly="readonly" style="overflow-y:scroll"></textarea>
					<br><br>
					
					
					<label>이용약관</label>
					<textarea readonly="readonly" style="overflow-y:scroll"></textarea>
					
					<div class="ok" style="float:right;" >
					<input type="checkbox" value="동의" checked><label>동의합니다.</label>
					</div>
					
					<br><br>
					
					<label>이용약관</label>
					<textarea readonly="readonly" style="overflow-y:scroll"></textarea>
					
					<div class="ok" style="float:right;" >
					<input type="checkbox" value="동의" checked><label>동의합니다.</label>
					</div>
					
					<div class="buyArea" style="text-align:center;">
					<br><br>
					<input type="submit" value="구매하기" style="width:200px; height:50px;">
					</div>
				</div>	
					
					<!-- Contents area -->
				</section>
			</div>
		</div>
		
	</div>
			
</body>
</html>