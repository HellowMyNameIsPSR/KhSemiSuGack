<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수작 - 개인정보수정</title>
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
						<strong>개인정보</strong>수정
					</a>
				</header>
				<section id="contents">
					<header class="main">
						<h1>판매자 정보수정</h1>
					</header>
					<!-- Contents area -->
					
					
					
					
					<div class="listBox">
						<div class="contents">
							<h2>판매자정보</h2>
						</div>
						<div class="contents">
							 <h4>판매자유형</h4>
						</div>
						<div class="contents">
							 <h4>이름</h4>
						</div>
						<div class="contents">
							 <h4>사업장 위치</h4>
						</div>
					</div>
					
					<div class="listBox">
						<div class="contents">
							<h2>배송정보</h2>
						</div>
						<div class="contents">
							 <h4>출고지주소</h4>
						</div>
						<div class="contents">
							 <h4>반품/교환지 주소</h4>
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