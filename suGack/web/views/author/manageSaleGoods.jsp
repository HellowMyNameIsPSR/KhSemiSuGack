<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수작 - 판매 작품 관리</title>
<style>
	.manageSaleTitle{
		border:1px solid black;
		height:50px;
		margin-bottom:20px;
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
						판매 작품<strong>관리</strong>
					</a>
				</header>
				<section id="contents">
					<header class="main">
						<h1>판매 상품관리</h1>
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







				</section>
			</div>
		</div>
		<%@ include file="authorMenuBar.jsp" %>
	</div>
			
</body>
</html>