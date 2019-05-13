<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.semi.board.model.vo.*,java.util.*,com.kh.semi.member.model.vo.*"%>
    
<%
		ProQna qna =(ProQna) request.getAttribute("qna");
%>

<%
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer{
		width:800px;
		height:500px;
		background:black;
		color:white;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
	
	td{
		border:1px solid white;
	}
	
	.tableArea{
		border:1px solid white;
		width:800px;
		height:350px;
		margin:0 auto;
	}
	
	.replyArea{
		width:800px;
		color:white;
		background:black;
		margin:0 auto;
	}
	
	
</style>
</head>
<body>
	<div class="outer">
		<br>
		<h2 align="center">문의내역 상세보기</h2>
		<div class="tableArea">
			<table align="center" width="800px">
				<tr>
					<td>문의종류</td>
					<td><span><%=qna.getCategory() %></span></td>
					<%-- <td>제목</td>
					<td colspan="3"><span><%=qna.getbTitle() %></span></td> --%>
				</tr>
				
				<tr>
					<td>작성자</td>
					<td><span><%=qna.getWriter() %></span></td>
					
					<td>작성일</td>
					<td><span><%=qna.getWriteDate() %></span></td>
				</tr>
				
				<tr>
					<td colspan="6">내용</td>
				</tr>
				
				<tr>
					<td colspan="6">
						<p id="content"><%= qna.getContent() %></p>
					</td>
				</tr>
			</table>
		</div>
		
		<div align="center">
			<button onclick="location.href='<%=request.getContextPath()%>/selectProQna.bo'">메뉴로 돌아가기</button>
		</div>
	</div>
	
	<div class="replyArea">
		<div class="replyWriterArea">
			<table align="center">
				<tr>
					<td>댓글작성</td>
					<td>
						<textarea rows="3" cols="80" id="replyContent"></textarea>
					</td>
					<td><button id="addReply">댓글 등록</button></td>
				</tr>
			</table>
		</div>
		
		<div class="replySelectArea">
			<table id="replySelectTable" border="1" align="center"></table>
		</div>
	</div>
	
	<script>
		$(function(){
			$("#addReply").click(function(){
				var writer = <%=loginUser.getMemberName()%>;
				var bno = <%=qna.getBno()%>;
				var content = $("#replyContent").val();
				
				$.ajax({
					url:"/semi/insertComment.bo",
				})
			})
		})
	</script>
</body>
</html>