<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수작 - 판매 작품 등록</title>
<style>
	.listBox {
		border:1px solid black;
		margin: 20px 0px 20px 0px;
	}
	.listTitle {
		border-bottom:1px solid gray;
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
		border-top:1px solid black;
		border-bottom:1px solid black;
		margin: 20px 0px 20px 0px;
		padding:20px 0px 0px 20px;
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
					<a href="authorHome.jsp" class="logo"> 판매 작품<strong>등록</strong>
					</a>
				</header>
				<section id="contents">
					<header class="main">
						<h1>판매 작품등록</h1>
					</header>
					<!-- Contents area -->


					
					<div class="listBox">
						<div class="listTitle">
							<h2>카테고리</h2>
						</div>
						<div class="listContents">
							<div>
								<button>카테고리명 검색</button>
								<button>카테고리명 선택</button>
							</div>
							<div class="">
								<input type="text" placeholder="카테고리명 입력" style="width:100%;">
							</div>
								<p>※ 상품과 맞지 않는 카테고리에 등록할 경우 강제 이동되거나 판매중지, 판매금지 될 수 있습니다.</p>
						</div>
					</div>
					
					
					<div class="listBox">
						<div class="listTitle">
							<h2>상품명</h2>
						</div>
						<div class="listContents">
							<div class="">
								<input type="text" placeholder="상품명 입력" style="width:100%;">
							</div>
							<p>※ 어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구</p>
						</div>
					</div>
					
					<div class="listBox">
						<div class="listTitle">
							<h2>상품가격</h2>
						</div>
						<div class="listContents">
							<div>
								<label style="display:inline;margin:0px 0px 0px 0px;">판매가</label>
								<input type="number" placeholder="숫자만 입력" style="width:40%;display:inline;">
								<div class="unit">원</div>
								<label style="display:inline;margin:0px 0px 0px 15px;">할인율</label>
								<input type="number" placeholder="숫자만 입력" style="width:40%;display:inline;">
								<div class="unit">%</div>
							</div>
							<p>※ 어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구</p>
						</div>
					</div>

					<div class="listBox">
						<div class="listTitle">
							<h2>옵션 선택</h2>
						</div>
						<div class="listContents">
							<div>
								<button style="width: 150px">설정함</button>
								<button style="width: 150px">설정안함</button>
							</div>
						</div>
						<div class="optionTitle ">
							<h2>옵션 입력</h2>
						</div>
						<div class="listContents">
							<div>
								<table>
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
						<div class="listContents" style="border-bottom:1px solid black;">
							<h4>대표이미지</h4>
							<div style="border:1px solid black; width:150px;height:150px;margin-left:100px;'"></div>
							<p>※ 어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구</p>
						</div>
						<div class="listContents" style="border-bottom:1px solid black;">
							<h4>추가이미지</h4>
							<div style="border:1px solid black; width:150px;height:150px;margin-left:100px;'"></div>
							<p>※ 어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구</p>
						</div>
					</div>


					<div class="listBox">
						<div class="listTitle">
							<h2>상품상세설명</h2>
						</div>
						<div class="listContents" style="height:300px;">
							
							
						</div>
					</div>

					<div class="listBox">
						<div class="listTitle">
							<h2>배송</h2>
						</div>
						<div class="listContents" style="height:100px;">
							<select style="widht:200px;">
								<option>무료(판매자 부담)</option>
								<option>착불(구매자 부담)</option>
							</select>
						</div>
					</div>
					
					
					<div align="center">
						<button onclick="location.href='authorHome.jsp'">등록하기</button>
					</div>









				</section>
			</div>
		</div>
		<%@ include file="authorMenuBar.jsp" %>
	</div>
			
</body>
</html>