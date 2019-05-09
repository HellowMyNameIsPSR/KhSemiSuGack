<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수작 - 판매 작품 등록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<style>
	.listBox {
		border:2px solid lightgray;
		margin: 20px 0px 20px 0px;
		box-shadow:2px 2px lightgray;
	}
	.listTitle {
		border-bottom:1px solid lightgray;
		margin: 20px 0px 20px 0px;
		padding-left:20px;
	}
	.listContents {
		margin: 20px 0px 20px 0px;
		padding-left:20px;
		padding-right:20px;
	}
	.listContents div{
		margin: 20px 0px 20px 0px;
	}
	.unit {
		display:inline;
		width:200px;
	}
	.optionTitle {
		border-top:1px solid lightgray;
		border-bottom:1px solid lightgray;
		margin: 20px 0px 20px 0px;
		padding:20px 0px 0px 20px;
	}
	.subtext{
		margin:10px 0 0;
		font-size:12px;
		ling-height:18px;
		color:skyblue;
	}
	.numBox{
		display:inline;
	}
	.priceBox tr{
		background:white !important;
		border-color:white !important;
	}
	.priceBox tr td{
		border:1px solid lightgray;
		text-align:center;
	}
	.priceBox tr td input{
		width:100%;
	}
	.searchBox tr{
		background:white !important;
		border:1px solid lightgray;
		s
	}
	.searchBox tr td input{
		border:none;
	}
	.option{
		width:150px;
		height:40px;
		text-align:center;
		font-size:13px;
		display:inline-block;
		border-radius: 5px 5px 5px 5px;
	}
	a {
		border-bottom: none !important;
	}
	.option:hover{
		background:skyblue;
		cursor:pointer;
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
						class="glyphicon glyphicon-home"></span> &nbsp; <strong
						style="font-size: 20px;">HOME</strong>
					</a>
				</header>
				<section id="contents">
					<header class="main">
						<h2>판매 작품등록</h2>
					</header>
					<!-- Contents area -->

					<form id="salesInsert" action="" method="post">

						<div class="listBox">
							<div class="listTitle">
								<h2>카테고리</h2>
							</div>
							<div class="listContents">
								<div>
									<button onclick="">카테고리명 검색</button>
									<button onclick="">카테고리명 선택</button>
								</div>
								<div>
									<table class="searchBox">
										<tr>
											<td><input type="text" placeholder="카테고리명 입력"
												style="width: 100%;"></td>
											<td width="7%"><span class="glyphicon glyphicon-search"></span></td>
										</tr>
									</table>
								</div>
								<p class="subtext">※ 상품과 맞지 않는 카테고리에 등록할 경우 강제 이동되거나 판매중지,
									판매금지 될 수 있습니다.</p>
							</div>
						</div>


						<div class="listBox">
							<div class="listTitle">
								<h2>상품명</h2>
							</div>
							<div class="listContents">
								<div class="">
									<input type="text" placeholder="상품명 입력" style="width: 100%;">
								</div>
								<p class="subtext">※판매 상품과 직접 관련이 없는 다른 상품명 입력 시 관리자에 의해 판매
									금지될 수 있습니다.</p>
							</div>
						</div>

						<div class="listBox">
							<div class="listTitle">
								<h2>상품가격</h2>
							</div>
							<div class="listContents">
								<div>
									<table class="priceBox" style="background: white;">
										<tr>
											<td style="width: 8%">판매가</td>
											<td><input type="number" placeholder="숫자만 입력"></td>
											<td align="center" style="font-size: 15px;">원</td>
											<td style="width: 8%">할인율</td>
											<td><input type="number" placeholder="숫자만 입력"></td>
											<td style="font-size: 15px;">%</td>
										</tr>
									</table>
								</div>
								<p class="subtext">※ 판매가격의 매출수수료 5%가 과금됩니다.</p>
							</div>
						</div>

						<div class="listBox">
							<div class="listTitle">
								<h2>옵션 선택</h2>
							</div>



							<div class="listContents">

								<div>
									<a data-toggle="collapse" href="#collapse1">
										<button class="option">설정함</button>
									</a> <a data-toggle="collapse" href="#collapse1">
										<button class="option">설정안함</button>
									</a>
								</div>
								<div id="collapse1" class="panel-collapse collapse">
									<table class="panel-body">
										<tr>
											<th>옵션입력</th>
											<th>옵션명</th>
											<th>옵션값</th>
											<th>추가비용</th>
										</tr>
										<tr>
											<td></td>
											<td><input type="text" placeholder="ex) 색상, 크기, 재질"></td>
											<td><input type="text" placeholder="ex) 색상, 크기, 재질"></td>
											<td><input type="text" placeholder="숫자입력"></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td><input type="text" placeholder="ex) 색상, 크기, 재질"></td>
											<td><input type="text" placeholder="숫자입력"></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td><input type="text" placeholder="ex) 색상, 크기, 재질"></td>
											<td><input type="text" placeholder="숫자입력"></td>
										</tr>
										<tr>
											<td colspan="4" align="center">+ 옵션추가</td>
										</tr>
									</table>
								</div>
							</div>

						</div>




						<div class="listBox">
							<div class="listTitle">
								<h2>상품이미지</h2>
							</div>
							<div class="listContents"
								style="border-bottom: 1px solid lightgray;">
								<h4>대표이미지</h4>
								<div
									style="border: 1px solid black; width: 150px; height: 150px; margin-left: 100px;'"></div>
								<p class="subtext">※ 권장 크기 : 640px * 640px</p>
							</div>
							<div class="listContents">
								<h4>추가이미지</h4>
								<div
									style="border: 1px solid black; width: 150px; height: 150px; margin-left: 100px;'"></div>
								<p class="subtext">
									※ 권장 크기 : 640px * 640px<br> &nbsp; &nbsp; 추가이미지는 최대 7개까지
									설정할 수 있습니다.<br> &nbsp; &nbsp; jpg, jpeg, gif, png, bmp 형식의
									정지 이미지만 등록됩니다.
								</p>
							</div>
						</div>


						<div class="listBox">
							<div class="listTitle">
								<h2>상품상세설명</h2>
							</div>
							<div class="listContents" style="height: 300px;"></div>
						</div>

						<div class="listBox">
							<div class="listTitle">
								<h2>배송</h2>
							</div>
							<div class="listContents" style="height: 100px;">
								<button>무료(판매자 부담)</button>
								<button>유료(구매자 부담)</button>
							</div>
						</div>


						<div align="center">
							<button style="width: 150px;">취소</button>
							<button style="width: 150px;">등록하기</button>
						</div>

					</form>






				</section>
			</div>
		</div>
		<%@ include file="authorMenuBar.jsp"%>
	</div>

</body>
</html>