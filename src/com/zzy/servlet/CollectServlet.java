package com.zzy.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zzy.dao.*;
import com.zzy.dao.impl.*;
import com.zzy.entity.*;
import com.zzy.servlet.*;
public class CollectServlet extends HttpServlet{
//	@Override
//	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		
// 		
//
//	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
 		String webname = req.getParameter("webname");
 		String webaddress = req.getParameter("webaddress");
 		String label = req.getParameter("label");
 		String username = (String)session.getAttribute("username");
 		

 		if(webname == null || webname.equals("")){
 			req.setAttribute("message2", "网站名不能为空");
 			req.getRequestDispatcher("collect2.jsp").forward(req, resp);
 		} else if(webaddress == null || webaddress.equals("")){
 			req.setAttribute("message2", "网址不能为空");
 			req.getRequestDispatcher("collect2.jsp").forward(req, resp);
 		}else if(label == null || label.equals("")){
 			req.setAttribute("message2", "简介不能为空");
 			req.getRequestDispatcher("collect2.jsp").forward(req, resp);
 		}else {
 			Collect collect = new Collect(webname, webaddress, label, username);
 			int result = new CollectDaoImpl().insert(collect);
 	 		if(result>0){
 	 			
 	 			//application.setAttribute("userName", username);
 	 			resp.sendRedirect("collectlist2");
 	 		}
 		}
 		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
}
