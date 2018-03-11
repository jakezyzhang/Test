package com.zzy.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.apache.jasper.tagplugins.jstl.core.Out;

import java.util.*;
import java.io.*;
import javax.imageio.*;
import com.zzy.news.cpatcha.*;

public class CaptchaServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = req.getSession();
		//response.reset();
		resp.setHeader("Pragma", "No-cache");
		resp.setHeader("Cache-Control", "no-cache");
		resp.setDateHeader("Expires", 0);

		CaptchaGenerator captcha = new CaptchaGenerator(20, 60);
		captcha.generate();

		// 将认证码存入SESSION
		session.setAttribute("captcha", captcha.getValue());

		OutputStream oStream = resp.getOutputStream();

		ImageIO.write(captcha.getImage(), "JPEG", oStream);
		//oStream.flush();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
}
