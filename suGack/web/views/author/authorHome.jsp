<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수작 - 작가홈</title>
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
						Author<strong>HOME</strong>
					</a>
				</header>
				<section id="contents">
					<header class="main">
						<h1>판매자 홈</h1>
					</header>
					<!-- Contents area -->
					
					
					
					
					<div style="border:1px solid black;width:900px;height:200px;">
						<table style="height:200px">
							<tr align="center">
								<td style="border-right:1px solid black;"><a href="manageSale.jsp">입금관련</a></td>
								<td style="border-right:1px solid black;"><a href="">배송관련</a></td>
								<td style="border-right:1px solid black;"><a href="">취소관련</a></td>
								<td>정산관련</td>
							</tr>
						</table>
					</div>
					<br><br>
					<div style="border:1px solid black;width:900px;height:200px;">
						<table style="height:200px">
							<tr align="center">
								<td colspan="2" style="border-right:1px solid black;"><a href="saleStatistics.jsp">판매 매출 통계</a></td>
								<td style="border-right:1px solid black;"><a href="manageSale.jsp">판매현황</a></td>
								<td>공지사항</td>
							</tr>
						</table>
					</div>
					<br><br>
					<div style="border:1px solid black;width:900px;height:200px;">
						<table style="height:200px">
							<tr align="center">
								<td colspan="2" style="border-right:1px solid black;">펀딩 매출 통계</td>
								<td style="border-right:1px solid black;">펀딩현황</td>
								<td><a href="managePost.jsp">최근 문의/리뷰</a></td>
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