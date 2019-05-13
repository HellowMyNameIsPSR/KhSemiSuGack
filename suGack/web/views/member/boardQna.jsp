<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.semi.board.model.vo.*,java.util.*"%>
<%
	ArrayList<ProQna> list = (ArrayList<ProQna>) request.getAttribute("list");
	//ProQna qna = (ProQna)request.getAttribute("qna");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글내역!</title>
<style>
	.name{
		width:100%;
		font-size:30px;
	}
</style>
</head>
<body>

<!-- Wrapper -->
	<div id="wrapper">
	
		<!-- Main -->
		<div id="main">
				
			<div class="inner">
				
				<!-- Header -->
				
				<header id="header">
					<div class="name">문의 내역</div>
				</header>
				
				<section id="contents">
					<div class="container">
						<div class="table">
							<table>
								<tr style="text-align:center;">
									<td>NO</td>
									<td>CATEGORY</td>
									<td>DATE</td>
								</tr>
								  <% for(ProQna pro :list){ %>  
								<tr>
									<td><%= pro.getBno() %></td>
									<td> <%= pro.getcategory() %></td>
									<td><%=pro.getWriteDate() %></td>
								</tr>
								 <%} %>  
								<tr>
									<td></td>
									<td></td>
									
									<td></td>
								</tr>
								
								<tr>
									<td></td>
									<td></td>
									
									<td></td>
								</tr>
								
							</table>
						</div>
					
					
					</div>
					<!-- Contents area -->
				</section>
			</div>
		</div>
		<%@ include file="../common/userMenuBar.jsp" %>
	</div>
			
</body>
</html>