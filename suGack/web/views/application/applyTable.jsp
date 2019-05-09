<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>입점신청 내역</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 메뉴 -->
	<%@ include file="../main/mainMenubar.jsp" %>
	
	<!-- Contents -->
	<div class="container">
	  <h2>Bordered Table</h2>
	  <p>The .table-bordered class adds borders to a table:</p>            
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
</body>
</html>