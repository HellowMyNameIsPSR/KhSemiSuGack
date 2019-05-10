<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>입점신청</title>
	<!-- 부트스트랩 -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="js/appIntroduce.js"></script>
    <%@ include file="stylesheet/appIntroduce.html" %>
    <style>
    	.all-btn {
    		display: inline-block;
		    margin-bottom: 0;
		    font-weight: 400;
		    text-align: center;
		    vertical-align: middle;
		    cursor: pointer;
		    border:1px #3399dd solid;
		    border-color : #3366ff;
		    color : #333;
		    background-color:white;  
		    white-space: nowrap;
		    padding: 6px 12px;
		    font-size: 18px;
		    line-height: 1.428571429;
		    border-radius: 4px;
		    -webkit-user-select: none;
		    -moz-user-select: none;
		    -ms-user-select: none;
		    -o-user-select: none;
		    user-select: none;
    	}
    	.all-btn:hover {
    		background-color : #e6ecff;
    	}
    </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
	<!-- 메뉴 -->
	<%@ include file="../main/mainMenubar.jsp" %>
	
	<!-- 부트스트랩 -->
	<!-- 홈페이지 소개 -->
	<div id="about" class="container-fluid">
	  <div class="row">
	    <div class="col-sm-8">
	      <h2><strong>手作 | 秀作 </strong></h2>: 수작<br>
	      <h4>
	      	<strong>수작은 손으로 지은 작품</strong>(手作), <strong>빼어난 작품</strong>(秀作)이라는 뜻입니다. <br>
	      	저희는 상품보다 만드는 작가를 조명하는 플랫폼을 만드는 것을 목표로 합니다. <br>
	      </h4><br>
	      <p>
	      	작가가 규모에 제약 받지 않고 작품활동에 집중할 수 있도록 만들 것이며 독창적인 작품을 생산하고 소비할 수 있는 판매장을 만들어 갈 것입니다.
	      </p>
	    </div>
	    <!-- img -->
	    <div class="col-sm-4">
	      <span class="logo"><img src="image/logo.png"></span>
	    </div>
	  </div>
	</div>
	
	<div class="container-fluid bg-grey">
	  <div class="row">
	    <div class="col-sm-12">
	      <div class="navbar wizard">
           <div class="col-md-4"></div>
              <div class="navbar-inner">

                    <ul class="nav nav-pills wizard">
                       <li class="active"><a href="#step1" data-toggle="tab" data-step="1">1</a></li>
                       <li><a href="#step2" data-toggle="tab" data-step="2">2</a></li>
                       <li><a href="#step3" data-toggle="tab" data-step="3">3</a></li>
                    </ul>
              </div>
           </div>`
	    </div>
	  </div>
	</div><!-- end Container (About Section) -->

	<!-- Container (Services Section) -->
	<div id="services" class="container-fluid text-center">
	  <h2>SERVICES</h2>
	  <h4>What we offer</h4>
	  <br>
	  <div class="row slideanim">
	    <div class="col-sm-4">
	      <span class="glyphicon glyphicon-off logo-small"></span>
	      <h4>POWER</h4>
	      <p>Lorem ipsum dolor sit amet..</p>
	    </div>
	    <div class="col-sm-4">
	      <span class="glyphicon glyphicon-heart logo-small"></span>
	      <h4>LOVE</h4>
	      <p>Lorem ipsum dolor sit amet..</p>
	    </div>
	    <div class="col-sm-4">
	      <span class="glyphicon glyphicon-lock logo-small"></span>
	      <h4>JOB DONE</h4>
	      <p>Lorem ipsum dolor sit amet..</p>
	    </div>
	  </div>
	  <br><br>
	  <div class="row slideanim">
	    <div class="col-sm-4">
	      <span class="glyphicon glyphicon-leaf logo-small"></span>
	      <h4>GREEN</h4>
	      <p>Lorem ipsum dolor sit amet..</p>
	    </div>
	    <div class="col-sm-4">
	      <span class="glyphicon glyphicon-certificate logo-small"></span>
	      <h4>CERTIFIED</h4>
	      <p>Lorem ipsum dolor sit amet..</p>
	    </div>
	    <div class="col-sm-4">
	      <span class="glyphicon glyphicon-wrench logo-small"></span>
	      <h4 style="color:#303030;">HARD WORK</h4>
	      <p>Lorem ipsum dolor sit amet..</p>
	    </div>
	  </div>
	</div><!-- end Container (Services Section) -->

	<!-- Container (Pricing Section) -->
	<div id="pricing" class="container-fluid bg-grey">
	  <div class="text-center">
	    <h2>Pricing</h2>
	    <h4>Choose a payment plan that works for you</h4>
	  </div>
	  <div class="row slideanim">
	    <div class="col-sm-4 col-xs-12">
	      <div class="panel panel-default text-center">
	        <div class="panel-heading">
	          <h1>Basic</h1>
	        </div>
	        <div class="panel-body">
	          <p><strong>20</strong> Lorem</p>
	          <p><strong>15</strong> Ipsum</p>
	          <p><strong>5</strong> Dolor</p>
	          <p><strong>2</strong> Sit</p>
	          <p><strong>Endless</strong> Amet</p>
	        </div>
	        <div class="panel-footer">
	          <h3>$19</h3>
	          <h4>per month</h4>
	          <button class="btn btn-lg">Sign Up</button>
	        </div>
	      </div>      
	    </div>     
	    <div class="col-sm-4 col-xs-12">
	      <div class="panel panel-default text-center">
	        <div class="panel-heading">
	          <h1>Pro</h1>
	        </div>
	        <div class="panel-body">
	          <p><strong>50</strong> Lorem</p>
	          <p><strong>25</strong> Ipsum</p>
	          <p><strong>10</strong> Dolor</p>
	          <p><strong>5</strong> Sit</p>
	          <p><strong>Endless</strong> Amet</p>
	        </div>
	        <div class="panel-footer">
	          <h3>$29</h3>
	          <h4>per month</h4>
	          <button class="btn btn-lg">Sign Up</button>
	        </div>
	      </div>      
	    </div>       
	    <div class="col-sm-4 col-xs-12">
	      <div class="panel panel-default text-center">
	        <div class="panel-heading">
	          <h1>Premium</h1>
	        </div>
	        <div class="panel-body">
	          <p><strong>100</strong> Lorem</p>
	          <p><strong>50</strong> Ipsum</p>
	          <p><strong>25</strong> Dolor</p>
	          <p><strong>10</strong> Sit</p>
	          <p><strong>Endless</strong> Amet</p>
	        </div>
	        <div class="panel-footer">
	          <h3>$49</h3>
	          <h4>per month</h4>
	          <button class="btn btn-lg">Sign Up</button>
	        </div>
	      </div>      
	    </div>    
	  </div>
	</div><!-- end Container (Pricing Section) -->

	<!-- Container (Contact Section) - 입점신청 부분 -->
	<div id="contact" class="container-fluid bg-lg">
	  <h2 class="text-center">입점 신청하기</h2>
	  <div class="row">
	    <div class="col-sm-5">
	       <p>Contact us and we'll get back to you within 24 hours.</p>
	      <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
	      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
	      <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
	    </div>
	    <div class="col-sm-7 slideanim">
	      <div class="row">
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
	        </div>
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
	        </div>
	      </div>
	      <div class="row">
	      	<div class="col-sm-5 form-group">
	          <input class="form-control" id="brandName" name="brandName" placeholder="Brand Name" type="text" required>
	        </div>
	        <div class="col-sm-1 form-group">
	          <button id="brandNameCheck" class="btn pull-right btn-default">중복확인</button>
	        </div>
	        <div class="col-sm-6 form-group">
	        	<label class="form-control">
	        		<input type="file" name="attachBrandFile" id="attachBrandFile" style="overflow:hidden;">
	        	</label>
	        </div>
	      </div>
	      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
       	  <label class="form-control">
       		  <input type="file" name="attachFile" id="attachFile" style="overflow:hidden;">
       	  </label>
       	  <select class="form-control">
       	  	<option>카테고리</option>
       	  	<option>카테고리</option>
       	  	<option>카테고리</option>
       	  </select> <br>
	        
	      <div class="row">
	        <div class="col-sm-12 form-group">
	          <button class=" pull-right all-btn all-btn-hover" type="submit" id="sendBtn">신청하기</button>
	        </div>
	      </div>
	    </div>
	  </div>
	</div><!-- end Container (Contact Section) -->
	<!-- footer -->
	<footer class="container-fluid text-center bg-grey">
	  <a href="#myPage" title="To Top">
	    <span class="glyphicon glyphicon-chevron-up"></span>
	  </a>
	  <p>Bootstrap Theme Made By <a href="https://www.w3schools.com" title="Visit w3schools">www.w3schools.com</a></p>
	</footer>
	
</body>
</html>