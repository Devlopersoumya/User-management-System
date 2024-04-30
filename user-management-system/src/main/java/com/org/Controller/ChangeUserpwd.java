package com.org.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.User;
@WebServlet("/changepwd")
public class ChangeUserpwd extends HttpServlet{
   @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String currentpwd = req.getParameter("currentpwd");
	String newpwd = req.getParameter("newpwd");
	String conformpwd = req.getParameter("conformpwd");
	
	HttpSession session = req.getSession(false);
	User user = (User)session.getAttribute("userdetails");
	if(user==null) {
		resp.sendRedirect("login.jsp");
	}else {
		if(currentpwd.equals(user.getPassword())) {
			 if(newpwd.equals(conformpwd))
			 {
				int id = user.getId(); 
				UserDao dao=new UserDao();
				dao.ChangepwdById(id,conformpwd);
				session.setAttribute("changepwd", "Password is changed");
				resp.sendRedirect("changepwd.jsp");
				
				
			 }else {
				 session.setAttribute("newconnotmatch", "New and conform password is not match");
					resp.sendRedirect("changepwd.jsp");
			 }
		}else {
			session.setAttribute("cupwdnotmatch", "current password worng");
			resp.sendRedirect("changepwd.jsp");
		}
		
	}
	
}
}
