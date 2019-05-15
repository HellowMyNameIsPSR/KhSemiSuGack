<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수작 - 판매 관리</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<%@ include file="../assets/css/author.html" %>
<style>
	.saleMenu{
		border:2px solid lightgray;
		margin: 20px 0px 20px 0px;
		box-shadow:2px 2px lightgray;
		min-width:650px;
		
	}
	.saleMenu tr>td{
		border:1px solid lightgray;
		box-shadow:2px 2px lightgray;
		background: radial-gradient(white, #F6FFFF) fixed;
		text-align:center;
	}
	
	.menuA:hover{
		background:skyblue;
		cursor:pointer
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
					<a href="authorHome.jsp" class="logo"> <span
						class="glyphicon glyphicon-home"></span> &nbsp; 
						<strong style="font-size: 20px;">HOME</strong>
					</a>
				</header>
				<section id="contents">
					<header class="main">
						<h2>판매 관리</h2>
					</header>
					<!-- Contents area -->
					<div class="manageSaleTitle">
						<h2>주문조회</h2>	<p>
					</div>
					
					
					<nav>
						<table class="saleMenu">
							<tr>
								<td class="menuA" onClick = " location.href='manageSale.jsp'">주문조회</td>
								<td class="menuA" onClick = " location.href='manageSaleExchange.jsp'">교환관리</td>
								<td class="menuA" onClick = " location.href='manageSaleReturn.jsp'">반품관리</td>
								<td class="menuA" onClick = " location.href='manageSaleCancel.jsp'">취소관리</td>
							</tr>
						</table>
					</nav>

					<table class="inquiryTable">
						<tr>
							<td>조회 기간</td>
							<td>
								<input name="wrDate1" type="date" style="margin-right:50px;">
								<span class="glyphicon glyphicon-minus"></span>
								<input name="wrDate2" type="date" style="margin-left:50px;">
							</td>
						</tr>
						<tr align="center">
							<td colspan="3">
								<button type="submit" class="all-btn" style="width:150px; height:40px;">검색</button>
							</td>
						</tr>
					</table>

					
					<div class="manageSaleTable">
						<table class="listTable">
							<tr>
								<th style="width:30px;"><strong>NO.</strong></th>
								<th><strong>상품주문번호</strong></th>
								<th><strong>주문일시</strong></th>
								<th><strong>주문상태</strong></th>
								<th><strong>상품명</strong></th>
								<th style="width:50px;"><strong >수량</strong></th>
								<th><strong>구매자명</strong></th>
								<th><strong>구매자ID</strong></th>
							</tr>
						</table>
					</div>
					
					
	
					
						
					








				</section>
			</div>
		</div>
		<%@ include file="authorMenuBar.jsp" %>
	</div>
			
</body>
</html>