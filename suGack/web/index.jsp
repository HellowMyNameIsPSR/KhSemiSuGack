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
	<!-- <script>
		$(function(){
			location.href = "views/main/mainMenubar.jsp";
		});
	</script> -->
	<h1><a href="views/main/mainPage.jsp">사용자메인</a></h1>
	<h1><a href="views/admin/adminHome.jsp">관리자메인</a></h1>
	<h1><a href="views/author/authorHome.jsp">판매자메인</a></h1>
</body>
</html>




















