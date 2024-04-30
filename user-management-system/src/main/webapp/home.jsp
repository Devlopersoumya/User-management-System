<%@page import="java.util.List"%>
<%@page import="com.org.dao.UserDao"%>
<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="components/bootstrapCss.jsp" %>
<style>
  .adddelete{
  text-align: center;
  color: blue;
  }

</style>
</head>
<body>



<%  User user=(User)session.getAttribute("userdetails"); %>

<%  if(user==null){
	
	response.sendRedirect("login.jsp");
}else{ %>
<%@ include file="components/homenavbare.jsp" %>
	
	
	<h1 style="text-align:center;color:green"> Welcome to User management System  

	<%= user.getName() %>
	
		<% String addmsg=(String)session.getAttribute("addmsg");
	
	   if(addmsg!=null){%>
		   
		   <p class="adddelete"><%= addmsg %></p>
	<% 
	     session.removeAttribute("addmsg");
	} %>
	
<% String delmsg=(String)session.getAttribute("delmsg");
	
	   if(delmsg!=null){%>
		   
		   <p class=adddelete"><%= delmsg %></p>
	<% 
	     session.removeAttribute("delmsg");
	} %>
	
	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">All User Details</p>
						<a href="add.jsp" class="text-decoration-none btn btn-primary">Add
							User</a>
						<table class="table">
							<thead>
								<tr>
									<th>Name</th>
									<th>Age</th>
									<th>Email</th>
									<th>Mobile</th>
									<th>Action</th>
								</tr>
							</thead>
							
							<% UserDao user1=new UserDao();
							 List<User> list=  user1.fetchAllUser();
							for(User u:list){
							  if(u.getId()==user.getId()){
								  continue;
							  }
							%>
								<tr>
							   <td><%=u.getName() %></td>
							   <td><%=u.getAge() %></td>
							   <td><%=u.getEmail() %></td>
							   <td><%=u.getMobile() %></td>
							
							<td>
							<a href="update.jsp?id=<%=u.getId()%>" class="btn btn-success text-decoration-none">Update</a>
							<a href="delete?id=<%=u.getId()%>" class="btn btn-danger text-decorate-none">Delete</a>
							</td>
							</tr>
							<%} %>
							
							
							<tbody>
						</table>

					</div>
				</div>


			</div>
	
	
	<%} %>
	</h1>
	
	
	</body>
</html>