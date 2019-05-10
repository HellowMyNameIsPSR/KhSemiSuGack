<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>2차 입점신청</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="js/applyBtn.js"></script>
	<style>
		
		h2{
			text-align:center;
		}
    	.readTable {
    		margin-left:auto; 
    		margin-right:auto; 
    		margin:0 auto; 
    		text-align:center;
    		border-spacing:5px;
    		border-collapse:separate;
    		max-width:100%;
    		bakcground-color:transparent;
    	}
    </style>
</head>
<body>
	<!-- 메뉴 -->
	<%@ include file="../main/mainMenubar.jsp" %>
	<h2>2차 입점 신청</h2>
	<div class="container-fluid bg-grey">
	<table class="readTable">
			<tr>
				<td colspan="3">
					작자 정보
				</td>
			</tr>
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
	<div id="contact" class="container bg-grey">
      <div class="col-sm-10 row">
        <div class="col-sm-8">
        	<input type="text" id="account" name="account" placeholder="계좌번호" class="form-control">
        </div>
        <div class="col-sm-1 form-group">
	          <button id="accountCheck" class="btn pull-right btn-default">계좌인증</button>
	     </div>
      </div>
      <div class="col-sm-6 form-group">
       	<label class="form-control">
       		<input type="file" name="attachBrandFile" id="attachBrandFile" style="overflow:hidden;">
       	</label>
       </div>
       
       <div class="col-sm-6 form-group">
       	<label class="form-control">
       		<input type="file" name="attachBrandFile" id="attachBrandFile" style="overflow:hidden;">
       	</label>
       </div>
       <div class="col-sm-6 form-group">
       	<label class="form-control">
       		<input type="file" name="attachBrandFile" id="attachBrandFile" style="overflow:hidden;">
       	</label>
       </div>
       <div class="col-sm-6 form-group">
       	<label class="form-control">
       		<input type="file" name="attachBrandFile" id="attachBrandFile" style="overflow:hidden;">
       	</label>
       </div>
       
       <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit" id="applyBtn2">신청하기</button>
        </div>
      </div>
	</div>					
</body>
</html>