<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>수작 - 프로젝트 참여 내역</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src="js/fundingBtn.js"></script>
	<%@ include file="stylesheet/eroll.html" %>
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
					</header>
					<!-- Contents area -->
					<div class="listBox">
						<div class="listTitle">
							<h2>내가 참여하는 프로젝트</h2>
						</div>
						<div class="listContents">
							<div class="row">          
								  <table class="table table-bordered">
								    <thead>
								      <tr>
								        <th>Firstname</th>
								        <th>Lastname</th>
								        <th>Email</th>
								      </tr>
								    </thead>
								    <tbody>
								      <tr>
								        <td>John</td>
								        <td>Doe</td>
								        <td>john@example.com</td>
								      </tr>
								      <tr>
								        <td>Mary</td>
								        <td>Moe</td>
								        <td>mary@example.com</td>
								      </tr>
								      <tr>
								        <td>July</td>
								        <td>Dooley</td>
								        <td>july@example.com</td>
								      </tr>
								    </tbody>
								  </table>
								</div>
						</div>
					</div>

					<div class="listBox">
						<div class="listTitle">
							<h2>내가 진행하는 프로젝트</h2>
						</div>
						<div class="listContents">
							<div class="row">          
								  <table class="table table-bordered">
								    <thead>
								      <tr>
								        <th>Firstname</th>
								        <th>Lastname</th>
								        <th>Email</th>
								      </tr>
								    </thead>
								    <tbody>
								      <tr>
								        <td>John</td>
								        <td>Doe</td>
								        <td>john@example.com</td>
								      </tr>
								      <tr>
								        <td>Mary</td>
								        <td>Moe</td>
								        <td>mary@example.com</td>
								      </tr>
								      <tr>
								        <td>July</td>
								        <td>Dooley</td>
								        <td>july@example.com</td>
								      </tr>
								    </tbody>
								  </table>
								</div>
						</div>
					</div>
				</section>
			</div>
		</div>
		<%@ include file="authorMenuBar.jsp"%>
	</div>
</body>
</html>