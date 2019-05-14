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
	<div id="wrapper">

		<!-- Main -->
		<div id="main">

			<div class="inner">

				<!-- Header -->

				<header id="header">
					<div style="height: 200px; border: 1px solid black;"></div>
					
					
				
				</header>

				<section id="contents">
					<div class="container" style="border: 1px solid black;">
						<h4>작가프로필</h4>

						<div class="profilArea row">
							<div id="titleImgArea"
								style="border: 1px solid red; width: 200px; height: 200px; float: left;">
								<img id="titleImg" width="200" height="200">
								
								
								</div>
							<div class="text"
								style="border: 1px solid blue; width: 500px; height: 50px; float: right;">
								<textarea style="width: 500px" placeholder="활동명"></textarea>
							</div>
							
							
							<div class="text"
								style="border: 1px solid purple; width: 500px; height: 200px; float: right;">
								<textarea style="width: 500px; hight: 200px;"
									placeholder="자기소개글"></textarea>

							</div>
						</div>



						<div class="photoArea row" style="border: 1px solid black;">

							<div class="col-sm-12">
								<h4>작가 프로필 수정</h4>
							</div>

							<div class="col-sm-3">
								<div class="photo"
									style="height: 200px; border: 1px solid black;"></div>
							</div>
							<div class="col-sm-3">
								<div class="photo"
									style="height: 200px; border: 1px solid black;"></div>
							</div>
							<div class="col-sm-3">
								<div class="photo"
									style="height: 200px; border: 1px solid black;"></div>
							</div>
							<div class="col-sm-3">
								<div class="photo"
									style="height: 200px; border: 1px solid black;"></div>
							</div>





						</div>
						<br>


						<div class="text row"
							style="border: 1px solid red; width: 1000px; height: 50px;"><textarea  style="width:1000px"placeholder="제목명"></textarea>
							
						<div class="textArea" style="border: 1px solid  black; width: 1200px; height: 700px;">
						
						<div class="font" style="border : 1px solid yellow; width:500 px; height:100px"><h4>글꼴메뉴</h4></div>	
						
						<textarea  style= "width:1200px"  placeholder="내용을 입력하세요"></textarea>
						
						</div>	
						
						<div id="fileArea">
				
					    <input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this,1)">
						</div> 
					
                              
                        <div align="center">
						<button style="width: 80px; height: 60px;"> 수정취소</button>
                        <button style="width: 80px; height: 60px;"> 저장하기</button>
						</div>
						

                             
                        
					</div>

                            
						</div>
				</section>
			</div>
		</div>
		<%-- <%@ include file="../common/tourMenuBar.jsp"%> --%>
	</div>
	
	<script type="text/javascript">
		$("#titleImgArea").click(function(){
			$("#thumbnailImg1").click();
				});
		
		
		function loadImg(value, num){
				if(value.files && value.files[0]){
					var reader = new FileReader();
					reader.onload = function(e){
						switch(num){
						case 1: 
							$("#titleImg").attr("src", e.target.result);
							break;
						
						}
					}
					
					reader.readAsDataURL(value.files[0]);
				}
			}
	
	
	
	</script>
	
	

</body>
</html>
