<%@page import="com.zzy.dao.CollectDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.zzy.dao.*" %>
<%@page import="com.zzy.dao.impl.*" %>
<%@page import="com.zzy.entity.*"%>
<%@page import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<form action="collect" method="post">
		<table style=" width: 80%; position: absolute;left: 150px" >
			<tr>
				<td>网站名字</td>
				<td><input type="text" name="webname"/></td>
				<td>网站地址</td>
				<td><input type="text" name="webaddress" /></td>
				<td>网站标签</td>
				<td><input type="text" name="label"/></td>
				<td><input type="submit" value="提交"/></td>
				<font style="position: absolute;top:300px;left:450px;font-size: 30px;color: red">${message2 }</font>
			</tr>
			<tr >
				<td>网站名字</td>
				<td style="position: absolute;left: 350px">网站地址</td>
				<td style="position: absolute;left: 700px">网站标签</td>
			</tr>
			<c:forEach items="${list }" var="bean">
			<tr>
				<td >${bean.webname }</td>
				<td style="position: absolute;left: 350px"><a href="http://${bean.webaddress }" style="color: blue">${bean.webaddress }</a></td>
				<td style="position: absolute;left: 700px">${bean.label }</td>
			</tr>
			</c:forEach>
			
			
		</table>
			<font style="position: absolute;top:300px;left:450px;font-size: 30px">${message }</font>
	</form>	
	</div>
 </body>
</html>