<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수작 - 판매 작품 관리</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
	.manageSaleTitle{
		border:2px solid lightgray;
		margin: 20px 0px 20px 0px;
		box-shadow:2px 2px lightgray;
		height:70px;
		padding-top:15px;
		padding-left:20px;
	}
	.manageSaleTitle h2{
		margin:0 auto;
	}
	
	.manageSaleContents{
		border:1px solid gray;
		margin: 20px 0px 20px 0px;
		box-shadow:2px 2px lightgray;
		height:150px;
	}
	.manageSaleTable{
		border:2px solid lightgray;
		margin: 20px 0px 20px 0px;
		box-shadow:2px 2px lightgray;
		height:500px;
	}
	.listTable tr>td{
		border:1px solid darkgray;
		font-size:13px;
		text-align:center;
		background:white;
	}
	.listTable tr>th{
		border:1px solid darkgray;
		font-size:13px;
		text-align:center;
		background:lightgray;
		padding-top:7px;
		padding-botton:7px;
	}
	
</style>
</head>
<body class="is-preload">
<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->
		<div id="main">
			<div class="inner">
				<!-- Header -->
				<header id="header">
					<a href="authorHome.jsp" class="logo">
						&nbsp;
						<strong style="font-size:20px;">HOME</strong>
					</a>
				</header>
				<section id="contents">
					<header class="main">
						<h2>판매 상품관리</h2>
					</header>
					<!-- Contents area -->


					<div class="manageSaleTitle">
						<h2>상품 조회 및 수정</h2>
					</div>

					<div class="manageSaleContents" align="center">
						<br>
						<p>상품 조회 날짜로 검색 api 찾아서 하기</p>
						<button style="width: 150px;">검색</button>
					</div>



					
					<div class="manageSaleTable">
						<table class="listTable">
							<tr>
								<th style="width:30px;"><strong>NO.</strong></th>
								<th><strong>상품명</strong></th>
								<th><strong>판매가</strong></th>
								<th style="width:50px;"><strong>수정</strong></th>
							</tr>
							<tr><td>1</td><td>키링</td><td>50000</td><td></td></tr>
							<tr><td>2</td><td>에어팟케이스</td><td>50000</td><td></td></tr>
							<tr><td>3</td><td>지갑</td><td>50000</td><td></td></tr>
							<tr><td>4</td><td>몰라</td><td>50000</td><td></td></tr>
						</table>
					</div>
				






				</section>
			</div>
		</div>
		<%@ include file="authorMenuBar.jsp" %>
	</div>
			
</body>
</html>