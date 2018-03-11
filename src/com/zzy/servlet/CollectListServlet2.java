package com.zzy.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zzy.dao.impl.CollectDaoImpl;
import com.zzy.entity.Collect;

public class CollectListServlet2 extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		String username = (String) session.getAttribute("username");
		String message = "没有收藏夹项目";
		List<Collect> list = new CollectDaoImpl().getAll(username);
		if(list.size()==0){
			req.setAttribute("message", message);
			req.getRequestDispatcher("collect2.jsp").forward(req, resp);
		}
		req.setAttribute("list", list);
		req.getRequestDispatcher("collect2.jsp").forward(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);;
	}
}
