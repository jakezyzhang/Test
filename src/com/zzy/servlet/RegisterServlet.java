package com.zzy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zzy.dao.impl.UserDaoImpl;
import com.zzy.entity.User;

public class RegisterServlet extends HttpServlet{
//	@Override
//	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		
//	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("userName");
		String pwd = req.getParameter("pwd");
		String validatepwd = req.getParameter("validatepwd");
		String displayname = req.getParameter("displayName");
		String mail = req.getParameter("email");
		String person = req.getParameter("person");
		String regEx = "^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$";
		Pattern pattern = Pattern.compile(regEx);
		Matcher matcher = pattern.matcher(mail);
		    // 字符串是否与正则表达式相匹配
		boolean rs = matcher.matches();
		HttpSession session = req.getSession();
		
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		String captcha = req.getParameter("captcha");
  		String sessionCaptcha = (String)session.getAttribute("captcha");
  		
  		
		
		if (name == null || name.equals("")) {
			req.setAttribute("message", "用户名不能为空");
			req.getRequestDispatcher("register.jsp").forward(req,
					resp);
		} else if (pwd == null || pwd.equals("")) {
			req.setAttribute("message", "密码不能为空");
			req.getRequestDispatcher("register.jsp").forward(req,
					resp);
		} else if (!validatepwd.equals(pwd)) {
			req.setAttribute("message", "两次输入的密码不一致");
			req.getRequestDispatcher("register.jsp").forward(req,
					resp);
		}else if(displayname == null || displayname.equals("")) {
			req.setAttribute("message", "显示名不能为空");
			req.getRequestDispatcher("register.jsp").forward(req,
					resp);
		}else if(rs == false){
			req.setAttribute("message", "email输入格式不对");
			req.getRequestDispatcher("register.jsp").forward(req,
					resp);
		}else if(person == null || person.equals("")){
			req.setAttribute("message", "个人简介不能为空");
			req.getRequestDispatcher("register.jsp").forward(req,resp);
		}else if(!captcha.equals(sessionCaptcha)) {
  			req.setAttribute("message", "验证码输入错误，请重新填写");
  			req.getRequestDispatcher("register.jsp").forward(req, resp);
  			
  			return;
  		}
		else {
			int count = new UserDaoImpl().countUserByName(name);
			if(count >= 1) {
				req.setAttribute("message", "用户已存在，请重新注册!");
				req.getRequestDispatcher("register.jsp").forward(req,
						resp);
			} else {
				User newUser = new User(name, pwd, displayname);

				int result = new UserDaoImpl().insert(newUser);
				if (result > 0) {
					out.println("<script type='text/javascript'>"
							+ "alert('注册成功！马上登录。');"
							+ "location.href='login.jsp';"
							+ "</script>");
					//session.setAttribute("displayName", displayname);
					 //session.setAttribute("username", name);
					//response.sendRedirect("login.jsp");
				} else {
					req.setAttribute("message", "注册失败，请重新注册。");
					req.getRequestDispatcher("register.jsp").forward(
							req, resp);
				}
			}
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
}
