<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수작 - 판매 관리</title>
<style>
.menuBar {
	height: 40px;
	width: 100%;
	background: gray;
	font-size: 11pt;
	border: 1px solid black;
}

.menuBar ul {
	display: table;
	margin-left: auto;
	margin-right: auto;
}

.menuBar li {
	display: inline;
	float: left;
}

.menuBar li>a {
	color: white;
	display: inline-block;
	width: 200px;
	text-align: center;
	line-height: 40px;
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
						판매 <strong>관리</strong>
					</a>
				</header>
				<section id="contents">
					<header class="main">
						<h1>판매 관리</h1>
					</header>
					<!-- Contents area -->

					<nav class="menuBar">
						<ul>
							<li><a href="manageSale.jsp">주문조회</a></li>
							<li><a href="manageSaleExchange.jsp">교환관리</a></li>
							<li><a href="manageSaleReturn.jsp">반품관리</a></li>
							<li style="background:black"><a href="manageSaleCancel.jsp">취소관리</a></li>
						</ul>
					</nav>
					<table style="border:1px solic black;">
						<tr align="center" style="height:100px; border:1px solid black;">
							<td colspan="4">취소조회</td>
							<td colspan="4">날짜관련</td>
						</tr>
						<tr align="center" style="border:1px solid black;">
							<td>번호</td>
							<td>상품주문번호</td>
							<td>주문일시</td>
							<td>주문상태</td>
							<td>상품명</td>
							<td>수량</td>
							<td>구매자명</td>
							<td>구매자ID</td>
						</tr>
						<tr align="center" style="height:800px;border:1px solid black;">
							<td colspan="8">취소조회</td>
						</tr>
					</table>
					








				</section>
			</div>
		</div>
		<%@ include file="authorMenuBar.jsp" %>
	</div>
			
</body>
</html>