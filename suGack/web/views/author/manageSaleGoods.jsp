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
		height:80px;
		padding-top:20px;
		padding-left:20px;
	}
	.manageSaleTitle h2{
		margin:0 auto;
	}
	.manageSaleContents{
		border:1px solid black;
		height:150px;
		margin-bottom:20px;
	}
	.manageSaleTable{
		border:1px solid black;
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
						작가<strong>HOME</strong></a>
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
						<p>상품 조회 날짜로 검색</p>
						<button style="width: 200px;">검색</button>
					</div>

					<div class="manageSaleTable">
						<table>
							<tr>
								<th>NO.</th>
								<th>상품명</th>
								<th>판매가</th>
								<th>수정</th>
							</tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							<tr><td></td><td></td><td></td><td></td></tr>
							
						</table>
					</div>
					<ul class="pagination">
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li class="disabled"><a href="#">4</a></li>
						<li><a href="#">5</a></li>
					</ul>






				</section>
			</div>
		</div>
		<%@ include file="authorMenuBar.jsp" %>
	</div>
			
</body>
</html>