<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="components/bootstrapCss.jsp" %>

<style >
.change{
  color:yellow;
}

</style>
</head>
<body>

<% User user=(User)session.getAttribute("userdetails");;
			if(user==null){
				response.sendRedirect("login.jsp");
			}else{
%>
<%@ include file="components/homenavbare.jsp" %>
<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">User Details</p>
						<a href="editprofile.jsp?id=<%=user.getId() %>" class="text-decoration-none btn btn-primary">Edit User Profile</a>
					</div>
				</div>
			</div>
 <!-- <div style="text-align: center">
 <p class="btn btn-success text-decoration-none"><a href="editUser">Edit user prifile</a></p>
</div> -->
 <h1 style="text-align: center;color:blue">
User name:<p class="change"><%=user.getName() %></p><br>
User age:<p class="change"><%=user.getAge() %></p><br>
User mobile:<p class="change"><%=user.getMobile() %></p><br>
User email:<p class="change"><%=user.getEmail() %></p><br>
</h1>
<%} %>

</body>
</html>