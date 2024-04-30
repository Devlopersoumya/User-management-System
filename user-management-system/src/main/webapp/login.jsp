<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loginpage</title>
<%@ include file="components/bootstrapCss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>
<%@ include file="components/navbare.jsp" %>
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Login</p>
						
						<% String msg=(String) session.getAttribute("fail"); 
						
						if(msg!=null)
						{%>
						<p class="text-center text-success fs-4"><%= msg %></p>	
						<%
						session.removeAttribute("fail");
						}
						%>
						
						
						<form action="login" method="post">
							<div class="mb-3">
								<label class="form-label">Email Address</label> <input
									name="email" type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="password" type="password" class="form-control" required>
							</div>
							<button type="submit" class="btn bg-primary text-white col-md-12">Login</button>
						</form>
						
						                <br>
<div class="node_modules-@myap-ui-library-sass-___heroidentity-module__cb-wg-margin-top-32___Jk7E0 node_modules-@myap-ui-library-sass-___heroidentity-module__cb-wg-padding-top-16___GkJAi node_modules-@myap-ui-library-sass-___heroidentity-module__cb-wg-border-top-dashed-1___R8jUI"><p class="cb-margin-top-8">If You Don't have any account</p><a href="register.jsp" class="node_modules-@myap-ui-library-sass-___heroidentity-module__cb-wg-link-black___5AFJk">Create account</a></div>

						
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>