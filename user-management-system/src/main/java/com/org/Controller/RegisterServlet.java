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
@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
  @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String name = req.getParameter("name");
	String age1 = req.getParameter("age");
	String mobile = req.getParameter("mobile");
	String email = req.getParameter("email");
	String password = req.getParameter("password");
	
	int age=Integer.parseInt(age1);
	long mob=Long.parseLong(mobile);
	User u=new User();
	u.setName(name);
	u.setAge(age);
	u.setMobile(mob);
	u.setEmail(email);
	u.setPassword(password);
	
	UserDao dao=new UserDao();
	dao.Saveuser(u);
	
	HttpSession session = req.getSession();
	session.setAttribute("success","Register successfull");
	
	
	resp.sendRedirect("register.jsp");
}
}
