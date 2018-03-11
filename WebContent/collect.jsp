<%@page import="com.zzy.dao.CollectDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.zzy.dao.*" %>
<%@page import="com.zzy.dao.impl.*" %>
<%@page import="com.zzy.entity.*"%>
<%@page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>收藏页面</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <link href="css/jquery-ui-1.9.2.custom.min.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="css/jquery-ui.css" />
  <link rel="stylesheet" type="text/css" href="css/jquery-ui.structure.css" />
  <link rel="stylesheet" type="text/css" href="css/jquery-ui.theme.css" />
  <link rel="stylesheet" type="text/css" href="css/demos.css" />


    <script type="text/javascript" src="js/jquery-1.8.3.min.js"> </script>
    <script type="text/javascript" src="js/jquery-ui.js"> </script>
	<script type="text/javascript" src="js/jquery-1.12.4.js"> </script>
	<script type="text/javascript" src="js/jquery-ui2.js"> </script>
	<script type="text/javascript" src="js/jquery-ui.js"> </script>
  	<script type="text/javascript" src="js/app.js" ></script>
 </head>
  <%@include file="validate.jsp" %>
 <body>
 	 <div id="header">
			<div id="logo">
				
			</div>
			<a href="indexSuccess.jsp" style="  color: #FFFFFF; text-decoration:none;font-size:15px;position: absolute;left: 1030px">退到用户界面</a>
			<font style="  color: #FFFFFF; text-decoration:none;font-size:15px;position: absolute;left: 1130px">用户:${sessionScope.displayName} </font>
			
			<div id="banner">
				Web开发工具介绍
			</div>
			 
			
	</div>
	<div>
	${result }
	</div>
	
 </body>
</html>