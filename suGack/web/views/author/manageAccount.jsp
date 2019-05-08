<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수작 - 작가계좌관리</title>
<style>
	.listBox {
		border-top:1px solid black;
		border-left:1px solid black;
		border-right:1px solid black;
		margin: 20px 0px 20px 0px;
	}
	.contents {
		border-bottom:1px solid gray;
		margin: 20px 0px 20px 0px;
		padding-left:20px;
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
						계좌<strong>관리</strong>
					</a>
				</header>
				<section id="contents">
					<header class="main">
						<h1>계좌관리</h1>
					</header>
					<!-- Contents area -->
					
					
					
					
					
						<div class="listBox">
						<div class="contents">
							<h2>정산정보</h2>
						</div>
						<div class="contents">
							 <h4>대금입금계좌</h4>
						</div>

					</div>
					


					<div align="center">
						<button style="width:150px">취소</button>
						<button style="width:150px; background:lightgray;">확인</button>
					</div>
				</section>
			</div>
		</div>
		<%@ include file="authorMenuBar.jsp" %>
	</div>
			
</body>
</html>