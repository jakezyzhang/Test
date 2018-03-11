<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@page import="java.text.ParseException"%>
<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>first JSP</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
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
  	 <script type="text/javascript">
  window.onload = function() {
				var v1 = document.getElementById('div1');
				var v2 = document.getElementById('div2');
				var v3 = document.getElementById('div3');
				v3.innerHTML = v2.innerHTML; //将v2容器里面的内容插入到v3容器里面  使其空白区域被遮住。
				function fun() {
					if (v1.scrollLeft <= 0) {
						v1.scrollLeft =200;
					} else {
						v1.scrollLeft--;
					}
				}
				var fun1 = setInterval(fun, 10);
				v1.onmouseover = function() { //鼠标经过时  清除定时器  停止图片的滚动
					clearInterval(fun1)
				};
				v1.onmouseout = function() { //鼠标离开后  继续滚动图片
					fun1 = setInterval(fun, 10)
				};
			}
		</script>
 </head>

 <body>
 <div id="header">
			<div id="logo">
				
			</div>
			<a href="login.jsp" style="  color: #FFFFFF; text-decoration:none;font-size:15px;position: absolute;left: 1030px">登陆</a>
			<font  style="  color: #FFFFFF; text-decoration:none;font-size:15px;position: absolute;left: 1060px">|</font>
			<a href="agreement.html" style="  color: #FFFFFF; text-decoration:none;font-size:15px;position: absolute;left: 1070px">注册</a>
			
			<div id="banner">
				Web开发工具介绍
			</div>
			 <div id="div1">
			 <div id="div4">
				<div id="div2">
				<c:set var="someDateStr" value="2017-08-28"/>
				<jsp:useBean id="nowDate" class="java.util.Date"/>
				<fmt:parseDate var="someDate" value="${someDateStr}" pattern="yyyy-MM-dd"/>
				<fmt:formatDate var="nowStr" value="${nowDate}" pattern="yyyy/MM/dd"/>
				<c:set var="interval" value="${nowDate.time - someDate.time}"/>
				<c:set var="now" value="<%=new java.util.Date()%>" />
				<fmt:formatDate pattern="yyyy年-MM月-dd号  E  "  value="${nowDate}" />	
				<fmt:formatNumber value="${interval/1000/60/60/24/7 }" pattern="，第#0教学周"/>
				<fmt:formatDate pattern="yyyy年-MM月-dd号  E  "  value="${nowDate}" />
				<fmt:formatNumber value="${interval/1000/60/60/24/7 }" pattern="，第#0教学周"/>
				<fmt:formatDate pattern="yyyy年-MM月-dd号  E  "  value="${nowDate}" />
				<fmt:formatNumber value="${interval/1000/60/60/24/7 }" pattern="，第#0教学周"/>
				<fmt:formatDate pattern="yyyy年-MM月-dd号  E  "  value="${nowDate}" />
				<fmt:formatNumber value="${interval/1000/60/60/24/7 }" pattern="，第#0教学周"/>
				
					
				</div>
				<div id="div3"></div>
				<!--这个容器是用来防止图片滚动时会出现空白的区域-->
			</div>
		</div>
			
		</div>
		
		<div id="content" >
			<div id="nav">
				<ul>
					<a href="jdk.html" onclick="opens(1)">JDK</a><br />
					<a href="Tomcat.html" onclick="opens(2)">TomCat</a><br />
					<a href="MySQL.html" onclick="opens(3)">MySql</a><br />
					<a href="xampp.html" onclick="opens(4)">XAMPP</a><br />
					
					<a href="eclipse.html" onclick="opens(5)">Eclipse</a><br />
					<a href="eclipse web.html" onclick="opens(6)">Eclipse Web开发插件</a><br />

				</ul>
			</div>
			<div id="section">
				<nav>
						<ul>
						    <li><a href="#">添加</a>
							    <ul>
							        <li id="btnSubmit"><a href="#">添加工具</a></li>
							        <li id="btnSubmit2"><a href="#">添加笔记</a></li>
							        <li id="btnSubmit3"><a href="#">添加标签</a></li>
							        
							    </ul>
						    </li>
						    <li><a href="#">删除</a>
							    <ul>
							        <li id="btnSubmit4"><a href="#">删除当前项</a></li>
							        <li id="btnSubmit5"><a href="#">添加到待删除</a></li>
							        <li id="btnSubmit6"><a href="#">全部删除</a></li>
							        
							    </ul>
						    </li>
						    <li><a href="#">分类</a>
							    <ul>
							        <li id="btnSubmit7"><a href="#">显示分类</a></li>
							        <li id="btnSubmit8"><a href="#">移动分类</a></li>
							        <li id="btnSubmit9"><a href="#">清除分类</a></li>
							     
							    </ul>
						    </li>
						    
						 </ul>
				</nav>
					
			
				<div id="main1">
					<table width="1145px" height="50" style="border:1px black solid;"  align="center">
						<tr id="first">
							<td id="tx">
								<input id="all" type="checkbox" value="全选" onclick="check();" />全选
							</td >
							<td id="tx">
								工具名称
							</td >
							<td id="tx">
								介绍链接
							</td>
							<td id="tx">
								网站链接
							</td>
						</tr>
					
					
						<tr id="changecolor">
							<td id="tx">
								<input name="product" type="checkbox" value="2" />
							</td>
							<td id="tx">
								jdk
								
							</td>
							<td id="tx" class="breakLine">
								
									<a> JDK是 Java 语言的软件开发工具包...详细 </a>
								
							</td>
							<td id="tx" class="spanL">
								<!--\JDK是 Java 语言的软件开发工具包，主要用于移动设备、嵌入式设备上的java应用程序。JDK是整个java开发的核心，它包含了JAVA的运行环境，JAVA工具和JAVA基础的类库。-->
								<a href="jdk.html">www.jdk.com </a>
							</td>
						</tr>
						<tr id="third">
							<td id="tx">
								<input name="product" type="checkbox" value="3" />
							</td>
							<td id="tx">
								jdk
								
							</td>
							<td class="breakLine">
								
									<a> JDK是 Java 语言的软件开发工具包...详细</a>
								
							</td>
							<td  >
								<!--\JDK是 Java 语言的软件开发工具包，主要用于移动设备、嵌入式设备上的java应用程序。JDK是整个java开发的核心，它包含了JAVA的运行环境，JAVA工具和JAVA基础的类库。-->
								<a href="jdk.html">www.jdk.com </a>
							</td>
						</tr>
						<tr id="changecolor2">
							<td id="tx">
								<input name="product" type="checkbox" value="4" />
							</td>
							<td id="tx">
								jdk
								
							</td>
							<td id="tx" class="breakLine">
								
									<a> JDK是 Java 语言的软件开发工具包...详细 </a>
								
							</td>
							<td id="tx" >
								<!--\JDK是 Java 语言的软件开发工具包，主要用于移动设备、嵌入式设备上的java应用程序。JDK是整个java开发的核心，它包含了JAVA的运行环境，JAVA工具和JAVA基础的类库。-->
								<a href="jdk.html">www.jdk.com </a>
							</td>
						</tr>
							
					</table>
					<table width="1145px" height="50" style="border:1px black solid;"  align="center">
						<tr>
								<td>
								权威统计机构统计在所有软件开发类人才的需求中，对JAVA工程师的需求达到全部需求量的60%~70%。JAVA工程师
								的薪水相对较高，通常来说，具有3~5年开发经验的工程师，拥有年薪10万元是很正常的一个薪酬水平。全球有25亿
								Java器件运行着Java，450多万Java开发者活跃在地球的每个角落数以千万计的Web用户每次上网都亲历Java的
								威力。今天，Java运行在7.08亿手机、10亿智能卡和7亿PC机上并为28款可兼容的应用服务器提供了功能强大的平
								台。越来越多的企业因为使用了Java而提高了生产效率。近年来我国信息化发展越来越快，使得全国各地的信息化建设
								如火如荼，出现了大量的信息化人才，尤其是Java软件人才的缺口。而我国信息化人才培养还处于发展阶段，导致社会
								实际需求人才基数远远大于信息化人才的培养基数，使得数以万计的中小企业急需全面系统掌握Java软件开发基础技能
								与知识的软件工程师。我国目前对软件人才的需求已达20万并且以每年20%左右的速度增长.在未来5年内合格软件人才
								的需求将远大于供给.2008年我国软件人才的缺口已达42.5万其中尤以Java人才最为缺乏。
							</td>
						</tr>
					</table>
				</div>
				<div id="main2" style="display: none;">
					<table width="1145px" height="50" style="border:1px black solid;"  align="center">
						<tr id="first">
							<td id="tx">
								<input id="all2" type="checkbox" value="全选" onclick="check2();" />全选
							</td >
							<td id="tx">
								工具名称
							</td >
							<td id="tx">
								介绍链接
							</td>
							<td id="tx">
								网站链接
							</td>
						</tr>
					
					
						<tr id="changecolor3">
							<td id="tx">
								<input name="product2" type="checkbox" value="1" />
							</td>
							<td id="tx">
								TomCat
							</td>
							<td id="tx" class="breakLine">
								
									<a> Tomcat 服务器是一个免费的开放源代码的Web 应用服务器...详细 </a>
								
							</td>
							<td id="tx" class="spanL">
							
								<a href="Tomcat.html">www.tomcat.com </a>
							</td>
						</tr>
						<tr id="third">
							<td id="tx">
								<input name="product2" type="checkbox" value="2" />
							</td>
							<td id="tx">
								TomCat
							</td>
							<td class="breakLine">								
									<a> Tomcat 服务器是一个免费的开放源代码的Web 应用服务器...详细</a>
								
							</td>
							<td >
								<a href="Tomcat.html">www.tomcat.com</a>
							</td>
						</tr>
						<tr id="changecolor4">
							<td id="tx">
								<input name="product2" type="checkbox" value="3" />
							</td>
							<td id="tx">
								TomCat
							</td>
							<td id="tx" class="breakLine">
								
									<a> Tomcat 服务器是一个免费的开放源代码的Web 应用服务器...详细 </a>
								
							</td>
							<td id="tx" >
								
								<a href="Tomcat.html">www.tomcat.com</a>
							</td>
						</tr>
							
					</table>
					<table width="1145px" height="50" style="border:1px black solid;"  align="center">
						<tr>
								<td>
								权威统计机构统计在所有软件开发类人才的需求中，对JAVA工程师的需求达到全部需求量的60%~70%。JAVA工程师
								的薪水相对较高，通常来说，具有3~5年开发经验的工程师，拥有年薪10万元是很正常的一个薪酬水平。全球有25亿
								Java器件运行着Java，450多万Java开发者活跃在地球的每个角落数以千万计的Web用户每次上网都亲历Java的
								威力。今天，Java运行在7.08亿手机、10亿智能卡和7亿PC机上并为28款可兼容的应用服务器提供了功能强大的平
								台。越来越多的企业因为使用了Java而提高了生产效率。近年来我国信息化发展越来越快，使得全国各地的信息化建设
								如火如荼，出现了大量的信息化人才，尤其是Java软件人才的缺口。而我国信息化人才培养还处于发展阶段，导致社会
								实际需求人才基数远远大于信息化人才的培养基数，使得数以万计的中小企业急需全面系统掌握Java软件开发基础技能
								与知识的软件工程师。我国目前对软件人才的需求已达20万并且以每年20%左右的速度增长.在未来5年内合格软件人才
								的需求将远大于供给.2008年我国软件人才的缺口已达42.5万其中尤以Java人才最为缺乏。
							</td>
						</tr>
					</table>
				</div>
				<div id="main3" style="display: none;">	
				<table width="1145px" height="50" style="border:1px black solid;"  align="center">
						<tr id="first">
							<td id="tx">
								<input id="all3" type="checkbox" value="全选" onclick="check3();" />全选
							</td >
							<td id="tx">
								工具名称
							</td >
							<td id="tx">
								介绍链接
							</td>
							<td id="tx">
								网站链接
							</td>
						</tr>
					
					
						<tr id="changecolor5">
							<td id="tx">
								<input name="product3" type="checkbox" value="1" />
							</td>
							<td id="tx">
								MySQL
							</td>
							<td id="tx" class="breakLine">
								
									<a> MySQL是一种关系数据库管理系统...详细 </a>
								
							</td>
							<td id="tx" class="spanL">
							
								<a href="MySQL.html">www.mysql.com</a>
							</td>
						</tr>
						<tr id="third">
							<td id="tx">
								<input name="product3" type="checkbox" value="2" />
							</td>
							<td id="tx">
								MySQL
							</td>
							<td class="breakLine">								
									<a> MySQL是一种关系数据库管理系统...详细</a>
								
							</td>
							<td >
								<a href="MySQL.html">www.mysql.com</a>
							</td>
						</tr>
						<tr id="changecolor6">
							<td id="tx">
								<input name="product3" type="checkbox" value="3" />
							</td>
							<td id="tx">
								MySQL
							</td>
							<td id="tx" class="breakLine">
								
									<a> MySQL是一种关系数据库管理系统...详细 </a>
								
							</td>
							<td id="tx" >
								
								<a href="MySQL.html">www.mysql.com</a>
							</td>
						</tr>
							
					</table>
					<table width="1145px" height="50" style="border:1px black solid;"  align="center">
						<tr>
								<td>
								权威统计机构统计在所有软件开发类人才的需求中，对JAVA工程师的需求达到全部需求量的60%~70%。JAVA工程师
								的薪水相对较高，通常来说，具有3~5年开发经验的工程师，拥有年薪10万元是很正常的一个薪酬水平。全球有25亿
								Java器件运行着Java，450多万Java开发者活跃在地球的每个角落数以千万计的Web用户每次上网都亲历Java的
								威力。今天，Java运行在7.08亿手机、10亿智能卡和7亿PC机上并为28款可兼容的应用服务器提供了功能强大的平
								台。越来越多的企业因为使用了Java而提高了生产效率。近年来我国信息化发展越来越快，使得全国各地的信息化建设
								如火如荼，出现了大量的信息化人才，尤其是Java软件人才的缺口。而我国信息化人才培养还处于发展阶段，导致社会
								实际需求人才基数远远大于信息化人才的培养基数，使得数以万计的中小企业急需全面系统掌握Java软件开发基础技能
								与知识的软件工程师。我国目前对软件人才的需求已达20万并且以每年20%左右的速度增长.在未来5年内合格软件人才
								的需求将远大于供给.2008年我国软件人才的缺口已达42.5万其中尤以Java人才最为缺乏。
							</td>
						</tr>
					</table>
				</div>
				<div id="main4" style="display: none;">	
				<table width="1145px" height="50" style="border:1px black solid;"  align="center">
						<tr id="first">
							<td id="tx">
								<input id="all4" type="checkbox" value="全选" onclick="check4();" />全选
							</td >
							<td id="tx">
								工具名称
							</td >
							<td id="tx">
								介绍链接
							</td>
							<td id="tx">
								网站链接
							</td>
						</tr>
					
					
						<tr id="changecolor7">
							<td id="tx">
								<input name="product4" type="checkbox" value="1" />
							</td>
							<td id="tx">
								XAMPP
							</td>
							<td id="tx" class="breakLine">
								
									<a> XAMPP（Apache+MySQL+PHP+PERL）是一个功能强大的建站集成软件包...详细 </a>
								
							</td>
							<td id="tx" class="spanL">
							
								<a href="xampp.html">www.xampp.com</a>
							</td>
						</tr>
						<tr id="third">
							<td id="tx">
								<input name="product4" type="checkbox" value="2" />
							</td>
							<td id="tx">
								XAMPP
							</td>
							<td class="breakLine">								
									<a> XAMPP（Apache+MySQL+PHP+PERL）是一个功能强大的建站集成软件包...详细 </a>
								
							</td>
							<td >
									<a href="xampp.html">www.xampp.com</a>
							</td>
						</tr>
						<tr id="changecolor8">
							<td id="tx">
								<input name="product4" type="checkbox" value="3" />
							</td>
							<td id="tx">
								XAMPP
							</td>
							<td id="tx" class="breakLine">
								
									<a> XAMPP（Apache+MySQL+PHP+PERL）是一个功能强大的建站集成软件包...详细 </a>
								
							</td>
							<td id="tx" >
								
									<a href="xampp.html">www.xampp.com</a>
							</td>
						</tr>
							
					</table>
					<table width="1145px" height="50" style="border:1px black solid;"  align="center">
						<tr>
								<td>
								权威统计机构统计在所有软件开发类人才的需求中，对JAVA工程师的需求达到全部需求量的60%~70%。JAVA工程师
								的薪水相对较高，通常来说，具有3~5年开发经验的工程师，拥有年薪10万元是很正常的一个薪酬水平。全球有25亿
								Java器件运行着Java，450多万Java开发者活跃在地球的每个角落数以千万计的Web用户每次上网都亲历Java的
								威力。今天，Java运行在7.08亿手机、10亿智能卡和7亿PC机上并为28款可兼容的应用服务器提供了功能强大的平
								台。越来越多的企业因为使用了Java而提高了生产效率。近年来我国信息化发展越来越快，使得全国各地的信息化建设
								如火如荼，出现了大量的信息化人才，尤其是Java软件人才的缺口。而我国信息化人才培养还处于发展阶段，导致社会
								实际需求人才基数远远大于信息化人才的培养基数，使得数以万计的中小企业急需全面系统掌握Java软件开发基础技能
								与知识的软件工程师。我国目前对软件人才的需求已达20万并且以每年20%左右的速度增长.在未来5年内合格软件人才
								的需求将远大于供给.2008年我国软件人才的缺口已达42.5万其中尤以Java人才最为缺乏。
							</td>
						</tr>
					</table>
				</div>
				<div id="main5" style="display: none;">	
				<table width="1145px" height="50" style="border:1px black solid;"  align="center">
						<tr id="first">
							<td id="tx">
								<input id="all5" type="checkbox" value="全选" onclick="check5();" />全选
							</td >
							<td id="tx">
								工具名称
							</td >
							<td id="tx">
								介绍链接
							</td>
							<td id="tx">
								网站链接
							</td>
						</tr>
					
					
						<tr id="changecolor9">
							<td id="tx">
								<input name="product5" type="checkbox" value="1" />
							</td>
							<td id="tx">
								Eclipse
							</td>
							<td id="tx" class="breakLine">
								
									<a> Eclipse 是一个开放源代码的、基于Java的可扩展开发平台...详细 </a>
								
							</td>
							<td id="tx" class="spanL">
							
								<a href="eclipse.html">www.eclipse.com</a>
							</td>
						</tr>
						<tr id="third">
							<td id="tx">
								<input name="product5" type="checkbox" value="2" />
							</td>
							<td id="tx">
								Eclipse
							</td>
							<td class="breakLine">								
									<a> Eclipse 是一个开放源代码的、基于Java的可扩展开发平台...详细 </a>
								
							</td>
							<td >
									<a href="eclipse.html">www.eclipse.com</a>
							</td>
						</tr>
						<tr id="changecolor10">
							<td id="tx">
								<input name="product5" type="checkbox" value="3" />
							</td>
							<td id="tx">
								Eclipse
							</td>
							<td id="tx" class="breakLine">
								
									<a> Eclipse 是一个开放源代码的、基于Java的可扩展开发平台...详细 </a>
								
							</td>
							<td id="tx" >
								
									<a href="eclipse.html">www.eclipse.com</a>
							</td>
						</tr>
							
					</table>
					<table width="1145px" height="50" style="border:1px black solid;"  align="center">
						<tr>
								<td>
								权威统计机构统计在所有软件开发类人才的需求中，对JAVA工程师的需求达到全部需求量的60%~70%。JAVA工程师
								的薪水相对较高，通常来说，具有3~5年开发经验的工程师，拥有年薪10万元是很正常的一个薪酬水平。全球有25亿
								Java器件运行着Java，450多万Java开发者活跃在地球的每个角落数以千万计的Web用户每次上网都亲历Java的
								威力。今天，Java运行在7.08亿手机、10亿智能卡和7亿PC机上并为28款可兼容的应用服务器提供了功能强大的平
								台。越来越多的企业因为使用了Java而提高了生产效率。近年来我国信息化发展越来越快，使得全国各地的信息化建设
								如火如荼，出现了大量的信息化人才，尤其是Java软件人才的缺口。而我国信息化人才培养还处于发展阶段，导致社会
								实际需求人才基数远远大于信息化人才的培养基数，使得数以万计的中小企业急需全面系统掌握Java软件开发基础技能
								与知识的软件工程师。我国目前对软件人才的需求已达20万并且以每年20%左右的速度增长.在未来5年内合格软件人才
								的需求将远大于供给.2008年我国软件人才的缺口已达42.5万其中尤以Java人才最为缺乏。
							</td>
						</tr>
					</table>
				</div>
				<div id="main6" style="display: none;">	
				<table width="1145px" height="50" style="border:1px black solid;"  align="center">
						<tr id="first">
							<td id="tx">
								<input id="all6" type="checkbox" value="全选" onclick="check6();" />全选
							</td >
							<td id="tx">
								工具名称
							</td >
							<td id="tx">
								介绍链接
							</td>
							<td id="tx">
								网站链接
							</td>
						</tr>
					
					
						<tr id="changecolor11">
							<td id="tx">
								<input name="product6" type="checkbox" value="1" />
							</td>
							<td id="tx">
								Eclipse Web
							</td>
							<td id="tx" class="breakLine">
								
									<a> Eclipse Web开发插件在Eclipse的基础上提供了Java EE的开发能力...详细 </a>
								
							</td>
							<td id="tx" class="spanL">
							
								<a href="eclipse web.html">www.eclipseweb.com</a>
							</td>
						</tr>
						<tr id="third">
							<td id="tx">
								<input name="product6" type="checkbox" value="2" />
							</td>
							<td id="tx">
								Eclipse Web
							</td>
							<td class="breakLine">								
									<a> Eclipse Web开发插件在Eclipse的基础上提供了Java EE的开发能力...详细 </a>
								
							</td>
							<td >
									<a href="eclipse web.html">www.eclipseweb.com</a>
							</td>
						</tr>
						<tr id="changecolor12">
							<td id="tx">
								<input name="product6" type="checkbox" value="3" />
							</td>
							<td id="tx">
								Eclipse Web
							</td>
							<td id="tx" class="breakLine">
								
									<a> Eclipse Web开发插件在Eclipse的基础上提供了Java EE的开发能力...详细 </a>
								
							</td>
							<td id="tx" >
								
									<a href="eclipse web.html">www.eclipseweb.com</a>
							</td>
						</tr>
							
					</table>
					<table width="1145px" height="50" style="border:1px black solid;"  align="center">
						<tr>
								<td>
								权威统计机构统计在所有软件开发类人才的需求中，对JAVA工程师的需求达到全部需求量的60%~70%。JAVA工程师
								的薪水相对较高，通常来说，具有3~5年开发经验的工程师，拥有年薪10万元是很正常的一个薪酬水平。全球有25亿
								Java器件运行着Java，450多万Java开发者活跃在地球的每个角落数以千万计的Web用户每次上网都亲历Java的
								威力。今天，Java运行在7.08亿手机、10亿智能卡和7亿PC机上并为28款可兼容的应用服务器提供了功能强大的平
								台。越来越多的企业因为使用了Java而提高了生产效率。近年来我国信息化发展越来越快，使得全国各地的信息化建设
								如火如荼，出现了大量的信息化人才，尤其是Java软件人才的缺口。而我国信息化人才培养还处于发展阶段，导致社会
								实际需求人才基数远远大于信息化人才的培养基数，使得数以万计的中小企业急需全面系统掌握Java软件开发基础技能
								与知识的软件工程师。我国目前对软件人才的需求已达20万并且以每年20%左右的速度增长.在未来5年内合格软件人才
								的需求将远大于供给.2008年我国软件人才的缺口已达42.5万其中尤以Java人才最为缺乏。
							</td>
						</tr>
					</table>
				</div>
				<button id="allget">全选</button>
				<button id="allout">取消</button>
			</div>
			<div id='dialog-non-modal'></div>
		</div>
		<div id="footer">
			Copyright(C) 378659373@qq.com<br />
			最终解释权归张子阳所有<br />
			<script type="text/javascript">
				document.write(Date())
			</script>

		</div>
	
 </body>
</html>