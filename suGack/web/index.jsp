<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import = "java.util.ResourceBundle" %>

<%
	ResourceBundle resource = ResourceBundle.getBundle("fileRoute");
	String authorHome = resource.getString("authorHome");
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script> -->
<title>index.jsp</title>
</head>
<body>
	<%@ include file="views/main/mainMenubar.jsp" %>
	<!-- <script>
		$(function(){
			location.href = "views/main/mainMenubar.jsp";
		});
	</script> -->

	<div class="container">
	
		<h1><a href="views/main/mainMenubar.jsp">사용자메인</a></h1>
		<h1><a href="views/admin/adminHome.jsp">관리자메인</a></h1>
		<h1><a href="views/author/authorHome.jsp">판매자메인</a></h1>
		
		
		<!-- 메인페이지 사진 -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			style="width: 100%;">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<div class="carousel-inner" align="center">
				<div class="item active">
					<img src="views/images/pic01.jpg" alt="가죽">
				</div>
				<div class="item">
					<img src="views/images/pic02.jpg" alt="직물">
				</div>
				<div class="item">
					<img src="views/images/pic03.jpg" alt="가죽">
				</div>
				<div class="item">
					<img src="views/images/pic04.jpg" alt="직물">
				</div>
			</div>

			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div><!-- 메인페이지 사진 -->
		
		<br><br><br>
	
		<h2 align="center">인기상품</h2>
		<div class="container-fluid bg-3 text-center">
			<div class="row">
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
			</div>
		</div>
		<br>

		<div class="container-fluid bg-3 text-center">
			<div class="row">
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
			</div>
		</div>
		<br><br><br>
		
		
		<h2 align="center">인기펀딩</h2>
		<div class="container-fluid bg-3 text-center">
			<div class="row">
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
			</div>
		</div>
		<br>

		<div class="container-fluid bg-3 text-center">
			<div class="row">
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-3">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
			</div>
		</div>
		
		
		
		
		
	</div>
	<br><br><br>

	<%@ include file="views/main/footer.jsp" %>




</body>
</html>




















