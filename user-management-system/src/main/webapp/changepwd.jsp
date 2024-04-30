<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="components/bootstrapCss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>

<%User user = (User)session.getAttribute("userdetails");
   if(user==null)
   {
	   response.sendRedirect("login.jsp");
   }else{
%>
   <%@ include file="components/homenavbare.jsp" %>
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Change password</p>
						
						
						<% String cupwdmsg=(String)session.getAttribute("cupwdnotmatch");
						    if(cupwdmsg!=null){%>
						    	<p class="text-center text-success fs-4"><%= cupwdmsg %></p>
						<%  
						session.removeAttribute("cupwdnotmatch");
						}else{
							
						}
						%>
						
						<% String new$conpwdmsg=(String)session.getAttribute("newconnotmatch");
						    if(new$conpwdmsg!=null){%>
						    	<p class="text-center text-success fs-4"><%= new$conpwdmsg%></p>
						<%  
						session.removeAttribute("newconnotmatch");
						}else{
							
						}
						%>
						
						<% String change=(String)session.getAttribute("changepwd");
						    if(change!=null){%>
						    	<p class="text-center text-success fs-4"><%= change%></p>
						<%  
						session.removeAttribute("changepwd");
						}else{
							
						}
						%>
						
						
						<form action="changepwd" method="post">
							<div class="mb-3">
								<label class="form-label">Current password</label> <input
									name="currentpwd" type="password" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">New password</label> <input
									name="newpwd" type="password" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Conform password</label> <input
									name="conformpwd" type="password" class="form-control" required>
							</div>
							<button type="submit" class="btn bg-primary text-white col-md-12">Change</button>
						</form>
						
						                <br>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%} %>
</body>
</html>