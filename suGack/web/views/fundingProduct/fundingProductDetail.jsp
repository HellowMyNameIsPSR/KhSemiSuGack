<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>펀딩상품 자세히 보기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
	.navdiv{
		height:200px;
		background:black;
	}
	
	.container{
		background:yellow;
	}
	
	.productDiv{
		background:beige;
		padding:15px;
	}
	.img{
		float:left;
		padding:20px;
		width:430px;
		background:green;
	}
	img{
		width:400px;
	}

/* .shortInfo{
	margin-left:40px;
	width:400px;
	height:550px;
	padding:25px;
	margin-right:100px;
	background:white;
	margin-top:23px;
} */

hr{
	border:1px solid gray;
}

.totalPrice{
	/* margin-top:10px;
	
	float:right; */
	width:100%;
	height:50px;
	background:orange;
	}
.totalPrice>h4{
	
	margin-top:15px;
}
input[type:image]{
	border:1px solid black;
} 

.information{
	padding:30px;
}
</style>
</head>
<body>
<div class="navdiv">
 
</div> 
  <!-- Page Content -->
  <div class="container">

    <!-- Heading Row -->
    <div class="row align-items-center my-5">
      <div class="col-lg-6 " >
        <img class="img-fluid rounded mb-4 mb-lg-0" src="../images/tvxq.jpg" style="width:100%;">
      </div>
      <!-- /.col-lg-8 -->
      <div class="col-lg-6 productDiv">
        <!-- <h1 class="font-weight-light">Business Name or Tagline</h1>
        <p>This is a template that is great for small businesses. It doesn't have too much fancy flare to it, but it makes a great use of the standard Bootstrap core components. Feel free to use this template for any project you want!</p>
        <a class="btn btn-primary" href="#">Call to Action!</a> -->
        <h5>품명 및 모델명</h5>
			<h5>기본가격</h5>
			<hr>
			<h5>주문D-Day</h5>
			<h5>현재주문량(%)</h5>
			<h5>최소주문수량</h5>
			<h5>최대주문수량</h5>
			<h5>배송예정일은 2019년 12월 24일 | 배송비:3000원</h5>
			<hr>
			<h5>옵션선택</h5>
			<select id="sel1"style="width:350px; height:20px;">
				<option value="op1">옵션1</option>
				<option value="op2">옵션2</option>
			</select>
			
			<hr>
			<div class="selectOpt" style="width:100%; height:100px; background:black; margin-top:70px;">	
			</div>
			<div class="totalPrice">
				<p style="float:left; margin-top:10px; font-size:20px;">총가격: </p>
				<p style="float:right; margin-top:10px; font-size:20px;">10000원</p>
			</div>
			<div class="btns" style="margin-top:5px; width:100%; height:50px;">
			<button style="color:white; margin-left:55%; float:left;width:20%; height:50px; border:2px solid lightblue; background:lightblue; border-radius:7px; font-size:16px;">관심상품</button>
			<!-- <input type="image" src="../images/heart.png" style="width:80px; height:50px; border:2px solid pink; background:pink; border-radius:7px;"> -->
			<button style="float:right; font-size:16px;width:20%; height:50px; color:white;border:2px solid gray; background:gray; border-radius:7px;">구매하기</button>
			</div>
      </div>
      <!-- /.col-md-4 -->
    </div>
    <hr>
    	<div class="row information">
	<ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#menu1">기본정보</a></li>
    <li><a data-toggle="tab" href="#menu2">배송/판매/교환/환불</a></li>
    <li><a data-toggle="tab" href="#menu3">별점 및 응원글</a></li>
    <li><a data-toggle="tab" href="#menu4">문의</a></li>
 	 </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>기본정보</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>배송/판매/교환/환불</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>별점 및 응원글</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>문의</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
  </div>
</div>

<script>
	$(function(){
		$("#sel1").click(function(){
			var value = $('option:selected',this).text();
			
		})		
	});
</script>


</body>
</html>