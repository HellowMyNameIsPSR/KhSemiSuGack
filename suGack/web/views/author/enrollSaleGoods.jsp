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
		border: 2px solid lightgray;
		margin: 20px 0px 20px 0px;
		box-shadow: 2px 2px lightgray;
		min-width:900px;
	}
	
	.listTitle {
		border-bottom: 1px solid lightgray;
		margin: 20px 0px 20px 0px;
		padding-left: 20px;
		min-width:900px;
	}
	
	.listContents {
		margin: 20px 0px 20px 0px;
		padding-left: 20px;
		padding-right: 20px;
		min-width:900px;
	}
	
	.listContents div {
		margin: 20px 0px 20px 0px;
	}
	
	.unit {
		display: inline;
		width: 200px;
		min-width:900px;
	}
	
	.optionTitle {
		border-top: 1px solid lightgray;
		border-bottom: 1px solid lightgray;
		margin: 20px 0px 20px 0px;
		padding: 20px 0px 0px 20px;
		min-width:900px;
	}
	
	.subtext {
		margin: 10px 0 0;
		font-size: 12px;
		ling-height: 18px;
		color: skyblue;
		min-width:900px;
	}
	
	
	.priceBox tr {
		background: white !important;
		border-color: white !important;
	}
	
	.priceBox tr td {
		border: 1px solid lightgray;
		text-align: center;
	}
	
	.priceBox tr td input {
		width: 100%;
	}
	
	.searchBox {
		display: none;
	}
	
	
	searchTable tr {
		background: white !important;
		border: 1px solid lightgray;
		display: block;
	}
	
	.checkBox {
		border: 1px solid skyblue;
		display: none;
		padding: 10px 10px 10px 10px;
		min-width:800px;
	}
	.checkBox div{
		display:inline-block;
		margin:0px 20px 0px 0px;
		border-right: 1px solid skyblue;
		width:21%;
		min-width:120px;
	}
	
	.searchBox tr td input {
		border: none;
	}
	
	.saleBtn{
		width: 150px;
		height: 40px;
		text-align: center;
		font-size: 13px;
		display: inline-block;
		border-radius: 5px 5px 5px 5px;
	}
	
	a {
		border-bottom: none !important;
	}
	
	.saleBtn:hover {
		background: skyblue;
		cursor: pointer;
	}
	
	
	.optionBox{
		border: 1px solid skyblue;
		padding:10px 10px 10px 10px;
	}
	.optionTable{
		border:none;
	}
	.optionTable tr>td{
		background:white;
		border: 1px solid skyblue;
	}
	
	#iconBox{
		display: table-cell;
		border:1px solid gray;
		width:30px !important;
		height:30px;
		vertical-align: middle;
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
								<h2 >카테고리</h2>
							</div>
							<div class="listContents">
								<div>
									<button type="button" class="saleBtn" id="search" >카테고리명 검색</button>
									<button type="button" class="saleBtn" id="checked">카테고리명 선택</button>
								</div>
								<div class="searchBox">
									<table class="searchTable">
										<tr>
											<td><input type="text" placeholder="카테고리명 입력"
												style="width: 100%;"></td>
											<td width="7%"><span class="glyphicon glyphicon-search"></span></td>
										</tr>
									</table>
								</div>



								<div class="checkBox">
									<div style="margin-left:40px;">
										<input type="checkbox" id="category" class=""> <label for="category">가죽</label><br>
										<input type="checkbox" id="category1" class=""> <label for="category1">가죽</label><br>
										<input type="checkbox" id="category2" class=""> <label for="category2">가죽</label><br>
										<input type="checkbox" id="category3" class=""> <label for="category3">가죽</label><br>
										<input type="checkbox" id="category4" class=""> <label for="category4">가죽</label><br>
										<input type="checkbox" id="category5" class=""> <label for="category5">가죽</label><br>
									</div>
									<div>
										<input type="checkbox" id="category6" class=""> <label for="category6">가죽</label><br>
										<input type="checkbox" id="category7" class=""> <label for="category7">가죽</label><br>
										<input type="checkbox" id="category8" class=""> <label for="category8">가죽</label><br>
										<input type="checkbox" id="category9" class=""> <label for="category9">가죽</label><br>
										<input type="checkbox" id="category10" class=""> <label for="category10">가죽</label><br>
										<input type="checkbox" id="category11" class=""> <label for="category11">가죽</label><br>
									</div>
									<div>
										<input type="checkbox" id="category12" class=""> <label for="category12">가죽</label><br>
										<input type="checkbox" id="category13" class=""> <label for="category13">가죽</label><br>
										<input type="checkbox" id="category14" class=""> <label for="category14">가죽</label><br>
										<input type="checkbox" id="category15" class=""> <label for="category15">가죽</label><br>
										<input type="checkbox" id="category16" class=""> <label for="category16">가죽</label><br>
										<input type="checkbox" id="category17" class=""> <label for="category17">가죽</label><br>
									</div>
									<div style="border-right:none;">
										<input type="checkbox" id="category18" class=""> <label for="category18">가죽</label><br>
										<input type="checkbox" id="category19" class=""> <label for="category19">가죽</label><br>
										<input type="checkbox" id="category20" class=""> <label for="category20">가죽</label><br>
										<input type="checkbox" id="category21" class=""> <label for="category21">가죽</label><br>
										<input type="checkbox" id="category22" class=""> <label for="category22">가죽</label><br>
										<input type="checkbox" id="category23" class=""> <label for="category23">가죽</label><br>
									</div>
								
								</div>



								<script>
									$(function(){
										$("#search").click(function(){
											$(".searchBox").show();
											$(".checkBox").hide()
										});
										$("#checked").click(function(){
											$(".searchBox").hide();
											$(".checkBox").show()
										});
									});
								</script>
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
									<button type="button" class="saleBtn">설정함</button>
									<button type="button" class="saleBtn">설정안함</button>
								</div>
								<div class="optionBox">
									<table class="optionTable">
										<tr align="center">
											<td>옵션명</td>
											<td>옵션값</td>
											<td colspan="3">추가비용</td>
										</tr>
										<tr>
											<td  style="padding-left:20px;">
												<input type="text" placeholder="옵션명 입력">
											</td>
											<td>
												<input type="text" placeholder="옵션값 입력">
											</td>
											<td>
												<input type="number" placeholder="추가비용 입력">
											</td>
											<td align="center">
												<span id="iconBox" class="glyphicon glyphicon-minus"></span>
											</td>
											<td align="center">
												<span id="iconBox"class="glyphicon glyphicon-plus"></span>
											</td>
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