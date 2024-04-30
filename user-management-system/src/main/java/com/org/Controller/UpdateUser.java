package com.org.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.User;
@WebServlet("/update")
public class UpdateUser extends HttpServlet{
  @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String name = req.getParameter("name");
	String age = req.getParameter("age");
	String mobile = req.getParameter("mobile");
	String email = req.getParameter("email");
	String id = req.getParameter("id");
	
	int parseage = Integer.parseInt(age);
	int parseid = Integer.parseInt(id);
	long parsemob = Long.parseLong(mobile);
	
	
	User user=new User();
	user.setName(name);
	user.setAge(parseage);
	user.setMobile(parsemob);
	user.setEmail(email);
	user.setId(parseid);
	
	UserDao dao=new UserDao();
	dao.UpdateUserById(user);
	
	HttpSession session = req.getSession(false);
	session.setAttribute("updatemsg","Update Successfull");
	
//	RequestDispatcher rd = req.getRequestDispatcher("update.jsp");
//	rd.include(req, resp);
	
//	resp.sendRedirect("update.jsp?id="+id);
	resp.sendRedirect("home.jsp");
	

	
}
}
