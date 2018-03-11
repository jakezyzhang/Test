package com.zzy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.zzy.dao.impl.CollectDaoImpl;
import com.zzy.entity.Collect;
import com.zzy.servlet.*;

public class CollectListServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		String username = (String)session.getAttribute("username");
 		List<Collect> list = new CollectDaoImpl().getAll(username);
 		StringBuffer buffer = new StringBuffer();
 		buffer.append("<html>");
 		buffer.append("<head>");
 		buffer.append("<title>收藏页面</title>");
 		buffer.append("</head>");
 		buffer.append("<body>");
 		buffer.append("<div>");
 		
 		buffer.append("<form action='collect' method='post'>");
 		buffer.append("<table style=' width: 80%; position: absolute;left: 150px' >");
 		buffer.append("<tr>");
 		buffer.append("<td>网站名字</td>");
 		buffer.append("<td><input type='text' name='webname'/></td>");
 		buffer.append("<td>网站地址</td>");
 		buffer.append("<td><input type='text' name='webaddress' /></td>");
 		buffer.append("<td>网站标签</td>");
 		buffer.append("<td><input type='text' name='label'/></td>");
 		buffer.append("<td><input type='submit' value='提交'/></td>");
 		buffer.append("</tr>");
 		buffer.append("<tr >");
 		buffer.append("<td>网站名字</td>");
 		buffer.append("<td style='position: absolute;left: 350px'>网站地址</td>");
 		buffer.append("<td style='position: absolute;left: 700px'>网站标签</td>");
 		buffer.append("</tr>");
 		if(list != null){
 			for(int i=0;i<list.size();i++){
 				buffer.append("<tr>");
 		 		buffer.append("<td >");
 		 		buffer.append(list.get(i).getWebname());
 		 		buffer.append("</td>");
 		 		buffer.append("<td style='position: absolute;left: 350px'>");
 		 		buffer.append("<a href='http://");
 		 		buffer.append(list.get(i).getWebaddress() );
 		 		buffer.append("' style='color: blue'>");
 		 		buffer.append(list.get(i).getWebaddress());
 		 		buffer.append("</a>");
 		 		buffer.append("</td>");
 		 		buffer.append("<td style='position: absolute;left: 700px'>");
 		 		buffer.append(list.get(i).getLabel());
 		 		buffer.append("</td>");
 		 		buffer.append("</tr>");
 		 		
 			}
 		}
 		buffer.append("</table>");
 		if(list.size()==0){
 			buffer.append("<font style='position: absolute;top:300px;left:450px;font-size: 30px'>没有收藏夹项目</font>");
 		}
 		buffer.append("</form>	");
 		
 		buffer.append("</body>");
 		buffer.append("</html>");
 		
 		req.setAttribute( "result", buffer );
 		req.getRequestDispatcher( "collect.jsp" ).forward( req, resp );
 		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
}
	
