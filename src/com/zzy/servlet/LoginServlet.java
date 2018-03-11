package com.zzy.servlet;

import java.io.IOException;

import com.zzy.dao.impl.UserDaoImpl;
import com.zzy.entity.*;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet{
//	@Override
//	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		
//	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("username");
		String pwd = req.getParameter("password");
		String displayname = req.getParameter("displayName");
		String remember = req.getParameter("remember");
		HttpSession session = req.getSession();
		String captcha = req.getParameter("captcha");
  		String sessionCaptcha = (String)session.getAttribute("captcha");
  		
  		if(!captcha.equals(sessionCaptcha)) {
  			req.setAttribute("message", "验证码输入错误，请重新填写");
  			req.getRequestDispatcher("login.jsp").forward(req, resp);
  			
  			return;
  		}
		
		if("1".equals(remember)){
			session.setAttribute("remembername", name);
		}
		
		if(name == null || pwd == null) {
			req.setAttribute("message", "未输入用户名或者密码！");
			req.getRequestDispatcher("login.jsp").forward(
				req, resp);
		} else if(name.trim().isEmpty() || pwd.trim().isEmpty()) {
			req.setAttribute("message", "未输入用户名或者密码！");
			req.getRequestDispatcher("login.jsp").forward(
				req, resp);
		} else {
			User user = new UserDaoImpl().findUserByName(name);
			if(user == null || !user.getPassword().equals(pwd)) {
				req.setAttribute("message", "用户名或密码错误，请重新登录！");
				req.getRequestDispatcher("login.jsp").forward(
					req, resp);
			} else {
				session.setAttribute("displayName", user.getDisplayname());
				session.setAttribute("username", name);
				session.setAttribute("userName", name);
				
				resp.sendRedirect("indexSuccess.jsp");
			}
		}
	}
}
