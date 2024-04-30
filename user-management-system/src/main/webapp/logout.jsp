<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="components/bootstrapCss.jsp" %>
</head>
<body>

<% User user=(User)session.getAttribute("userdetails");
		if(user==null){
			response.sendRedirect("login.jsp");
		}
%>
 <h1 class="fs-3 text-center">
  Are you sure <br>
  you want to Log out<br>
   <a href="yes" class="btn btn-success text-decoration-none">Yes ,Logout </a><br>
   <a href="home.jsp" class="btn btn-danger text-decoration-none"> No ,Back to Home page</a>
   
   </h1>
   
  
</body>
</html>