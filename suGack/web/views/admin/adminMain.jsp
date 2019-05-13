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

	.container{
	width: 80%;`
	}
	
	
	
</style>
</head>
<body>

<div class="container">
	<div class="main-1">
	<h3>날짜</h3>
	<br>
	<h4>오늘의 할일</h4>
		<table class="table table-bordered" style="border:2px solid gray; height:150px; width:800px; margin:auto; text-align:center">
		 	<tr style="background:lightgray;">
		 		<td>주문</td>
		 		<td>매출</td>
		 		<td>입점신청</td>
		 		<td>1:1문의</td>
		 		<td>신규회원</td>
		 		<td>방문자</td>
		 	</tr>
		 	
		 	<tr>
		 		<td><a href="#">0</a>건</td>
		 		<td>00원</td>
		 		<td><a href="viewReqMemList.jsp">0</a>건</td>
		 		<td><a href="viewQuestList.jsp">0</a>건</td>
		 		<td>0명</td>
		 		<td>0명</td>
		 	</tr>
		</table>
	</div>
	<br>
	<hr>
	<div class=main-2>
		<h3>이번주 내홈페이지 통계</h3>
		<table class="table table-bordered" style="border:2px solid gray; height: 150px; width: 800px; margin:auto; text-align:center">
			<tr style="background:lightgray;">
				<td>구분</td>
				<td>날짜1</td>
				<td>날짜2</td>
				<td>날짜4</td>
				<td>날짜5</td>
				<td>날짜6</td>
				<td>날짜7</td>
				<td>날짜8</td>
				<td>이번주합계</td>
			</tr>
			<tr>
				<td>매출(액)</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>주문(건수)</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>취소/환불/교환</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
	<br>
	<hr>
	<div class="main-3">
		<h3>오늘의 통계</h3>
		<script src="//www.google.com/jsapi"></script>
			<script>
			var selectMember = [
			  ['회원', '인원수'],
			  ['1월', 8.94],
			  ['2월', 10.49],
			  ['3월', 19.30],
			  ['4월', 21.45],
			];
			
			$(function(){
				$.ajax({
					url:"<%=request.getContextPath()%>/selectMemberForMonth.ad",
					success:function(data){
						queryObject = eval('(' + JSON.stringify(data,null, 2) + ')'); 
						queryObject[0]
						console.log(data['1월']);
						console.log(queryObject[0]);
						console.log(data[2]);
						selectMember = [
							  ['회원', '인원수'],
							  ['1월', data[0]],
							  ['2월', 10.49],
							  ['3월', 19.30],
							  ['4월', 21.45],
							  ['5월', 8.94],
							  ['6월', 10.49],
							  ['7월', 19.30],
							  ['8월', 21.45],
							  ['9월', 8.94],
							  ['10월', 10.49],
							  ['11월', 19.30],
							  ['12월', 21.45]
							];
					},
					error:function(data){
						
					}
				})
			})
			
			var options = {
			  title: '월별 누적 회원수',
			  width: 800, height: 400
			};
			google.load('visualization', '1.0', {'packages':['corechart']});
			google.setOnLoadCallback(function() {
			  var chart = new google.visualization.ColumnChart(document.querySelector('#chart_div'));
			  chart.draw(google.visualization.arrayToDataTable(selectMember), options);
			});
			</script>
<div id="chart_div"></div>
	</div>
</div>


</body>
</html>