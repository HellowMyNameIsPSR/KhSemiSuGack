<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	

</head>
<style>
.container {
	margin-top: 50px;
}

#col-sm-3 {
	
}
</style>
<body>
		<%@ include file="../main/mainMenubar.jsp" %>
	<div id="wrapper">
              
		<!-- Main -->
		<div id="main">
						
			<div class="inner">
					
				<!-- Header -->

				<%-- <header id="header" style="border: 1px solid black;">
				<%@ include file="../main/mainMenubar.jsp" %>  
					
				 </header>
 --%>
				<%-- <form action="<%=request.getContextPath()%>/insert.to"  method="post" encType="multipart/form-data"> --%>
				<form action="<%=request.getContextPath()%>/insert.tbo">
				<section id="contents" class="tableArea">
				   
				
					<div class="container" style="border: 1px solid black;">
						<!-- <h4>작가프로필</h4> -->

						<!-- <div class="profilArea row">
							<div id="titleImgArea"
								style="border: 1px solid black; width: 200px; height: 200px; float: left;">
								<img id="titleImg" width="200" height="200">
								
								
								</div>
							<div class="text"
								style="border: 1px solid blue; width: 500px; height: 50px; float: right;">
								<textarea name="author_name"style="width: 500px" placeholder="활동명"></textarea>
							</div>
							
							
							<div class="text"
								style="border: 1px solid purple; width: 500px; height: 200px; float: right;">
								<textarea name="author_about" style="width: 500px; hight: 200px;"
									placeholder="자기소개글"></textarea>

							</div>
						</div>
 -->


						<!-- <div class="photoArea row" style="border: 1px solid black;">

							<div class="col-sm-12">
								<h4>작가 사진 수정</h4>
							</div>

							<div class="col-sm-3">
								<div class="photo" id="contentImgArea1" 
									style="height: 200px; border: 1px solid black;">
									
									<img id="contentImg1" width="260" height="200">
									
									</div>
							</div>
							<div class="col-sm-3">
								<div class="photo"  id="contentImgArea2" 
									style="height: 200px; border: 1px solid black;">
									
									<img id="contentImg2" width="260" height="200">
									</div>
							</div>
							<div class="col-sm-3">
								<div class="photo"  id="contentImgArea3" 
									style="height: 200px; border: 1px solid black;">
									
									<img id="contentImg3" width="260" height="200">
									</div>
							</div>
							<div class="col-sm-3">
								<div class="photo"  id="contentImgArea4" 
									style="height: 200px; border: 1px solid black;">
									<img id="contentImg4" width="260" height="200">
									</div>
							</div>





						</div>
						<br> -->


					<!-- <div class="text row" id="cent" style="border: 1px solid red;"> -->
						<h3>작가 이야기 게시판</h3>
						<textarea  name="author_Title" style="width:1000px" placeholder="제목명"></textarea>
							
						<div class="textArea" style="border: 1px solid  black; width: 1100px; height: 700px;">
						
								
							<textarea name="author_content"  style= "width:1100px"  placeholder="내용을 입력하세요"></textarea>
						
						</div>	
						
						          
                        <div align="center">
							<button type="reset" style="width: 80px; height: 60px;"> 수정취소</button>
	                        <button type="submit" style="width: 80px; height: 60px;"> 저장하기</button>
						</div>
						
						

                             
                <!--         
					</div> -->

                            
				</div> 
				</section>
				<!-- </form> --> 
				</form>
			</div>
		</div>
		<%-- <%@ include file="../common/tourMenuBar.jsp"%> --%>
	</div>
	
	
	
	
	

</body>
</html>
