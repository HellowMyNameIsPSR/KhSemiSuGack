<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>

 
 .container {
 	width: 80%;
 }
</style>
</head>
<body>
	<div class="container">
		<form action="" method="get">
		<h3>펀딩상품조회</h3>
		<table class="table table-bordered" style="border:2px solid gray; ">
			<tr>
				<td style="text-align:center; background: lightgray; border: 1px solid gray">재료별검색</td>
				<td>
				<select name="material">
					<option value="p1">가죽</option>
					<option value="p2">가죽</option>
					<option value="p3">가죽</option>
					<option value="p4">가죽</option>
					<option value="p5">가죽</option>
				</select>
				</td>
			</tr>
			<tr>
				<td style="text-align:center; background: lightgray; border: 1px solid gray">펀딩명/코드검색</td>
				<td>
				<select name="sell">
				     <option value="fund">펀딩명</option>
				     <option value="fundCode">펀딩코드</option>
				</select>
				<input type="text" name="name" />
				</td>
			</tr>
			<tr>
				<td style="text-align:center; background: lightgray; border: 1px solid gray">펀딩등록일</td>
				<td><input type="date" name="fundIndate" value=""></td>
			</tr>
			<tr>
				<td style="text-align:center; background: lightgray; border: 1px solid gray">펀딩마감일</td>
				<td><input type="date" name="fundLastdate" value=""></td>
			</tr>
			<tr>
				<td style="text-align:center; background: lightgray; border: 1px solid gray">펀딩진행률</td>
				<td><input type="text" /> ~ <input type="text" /></td>
			</tr>
		</table>
		<input type="submit" value="검색">
		</form>
		<br>
		<hr>
		<h3>판매상품 조회 결과</h3>
		<table class="table table-bordered" style="border:2px solid gray; text-align:center">
		<tr style="background:lightgray;">
			<td>선택</td>
			<td>번호</td>
			<td>분류</td>
			<td>펀딩명</td>
			<td>펀딩코드</td>
			<td>펀딩등록일</td>
			<td>펀딩마감일</td>
			<td>펀딩진행률</td>
			<td>판매자</td>
		</tr>
		<tr>
			<td><input type="checkbox"></td>
			<td>1</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><input type="checkbox"></td>
			<td>2</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><input type="checkbox"></td>
			<td>3</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><input type="checkbox"></td>
			<td>4</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><input type="checkbox"></td>
			<td>5</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		</table>
		<button onclick=delete();>삭제</button>
		<br>
			<div class="row" style="padding-left:400px">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</div>
	</div>
	
	
</body>
</html>