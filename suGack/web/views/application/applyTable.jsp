<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>입점신청 내역</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="js/applyTable.js"></script>
    <style>
    	.modal-table {
    		margin-left:auto; 
    		margin-right:auto; 
    		margin:0 auto; 
    		text-align:center;
    		border-spacing:5px;
    		border-collapse:separate;
    	}
    </style>
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
	
	
	<!-- Modal -->
	<div class="container">
	  <div class="modal fade" id="myModal" role="dialog">
	    <div class="modal-dialog modal-lg">
	      <div class="modal-content">
	      	<!-- header -->
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">신청 내용</h4>
	          <p>관리자 승인을 위해 신청한 내용은 수정할 수 없습니다.</p>
	        </div>
	        <!-- body -->
	        <div class="modal-body">
	        	<table class="modal-table">
					<tr>
						<td rowspan="6">
							<img src="../images/pic01.jpg" style="width:100%;" id="brandImg" name="brandImg">
						</td>
					</tr>
					<tr>
						<td>
							<input class="form-control" id="name" name="name" placeholder="Name" type="text" readonly>
						</td>
						<td>
							<input class="form-control" id="brandName" name="brandName" placeholder="Brand Name" type="text" readonly>
						</td>
					</tr>	
					<tr>
						<td colspan="2">
							<input class="form-control" id="email" name="email" placeholder="Email" type="email" readonly>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<label class="form-control" id="category">공예유형</label>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5" readonly></textarea>
						</td>
					</tr>  
					<tr>
						<td colspan="2">
							<label class="form-control" id="fileName">파일명</label>
						</td>
					</tr>    	
	        	</table>
	        </div>
	        <!-- footer -->
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          <button type="button" class="btn btn-default" data-dismiss="modal" id="application2" style="border:2px solid #3366ff;">2차 신청하기</button>
	        </div>
	        
	      </div>
	    </div>
	  </div>
	</div>
	
</body>
</html>