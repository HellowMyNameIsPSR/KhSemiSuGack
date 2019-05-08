<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<!-- <link rel="stylesheet" href="../assets/css/main.css" type="text/css"/> -->
	<style>
		<%@ include file="../assets/css/main.html" %>
	</style>
	<title></title>
</head>
<!-- Sidebar -->
<div id="sidebar">
	<div class="inner">
		<!-- Logo -->
		<section class="alt">
			<a href="#">LOGO</a>
		</section>
		<!-- Menu -->
		<nav id="menu">
			<header class="major">
				<h2>Menu</h2>
			</header>
			<ul>
				<li><a href="authorHome.jsp">HOME</a></li>
				<li>
					<span class="opener">판매 작품</span>
					<ul>
						<li><a href="enrollSaleGoods.jsp">판매 작품 등록</a>
						<li><a href="manageSaleGoods.jsp">판매 작품 관리</a>
						<li><a href="manageSale.jsp">판매 관리</a>
						<li><a href="managePost.jsp">문의 / 리뷰 관리</a>
						<li><a href="saleStatistics.jsp">판매 통계</a>
					</ul>
				</li>
				<li>
					<span class="opener">펀딩 작품</span>
					<ul>
						<li><a href="fundingGuide.jsp">펀딩 가이드</a>
						<li><a href="enrollFundingGoods.jsp">펀딩 작품 등록</a>
						<li><a href="makingApplication.jsp">제작 신청</a>
						<li><a href="makingApplicationHistory.jsp">제작 신청 내역</a>
						<li><a href="fundingStatistics.jsp">펀딩 통계</a>
					</ul>
				</li>
				<li><a href="authorStory.jsp">작가이야기</a></li>
				<li>
					<span class="opener">개인정보</span>
					<ul>
						<li><a href="editAuthorInfo.jsp">개인정보 수정</a>
						<li><a href="manageAccount.jsp">계좌 관리</a>
						<li><a href="deleteAuthor.jsp">회원 탈퇴</a>
					</ul>
				</li>
				<li><a href="#">고객센터</a>
			</ul>
		</nav>
		<!-- Footer -->
		<footer id="footer">
			<ul class="contact">
				<li class="fa-envelope-o">information@untitled.tld</li>
				<li class="fa-phone">(000)000-000</li>
				<li class="fa-home">1234 Somewhere Road #8524 <br>
				Nashville, TN 00000-0000</li>
			</ul>
			<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>
			.Design:<a href="https://html5up.net">HTML5 UP</a>.</p>
		</footer>
	</div>
</div>
<!-- script -->
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/browser.min.js"></script>
<script src="../assets/js/breakpoints.min.js"></script>
<script src="../assets/js/util.js"></script>
<script src="../assets/js/main.js"></script>