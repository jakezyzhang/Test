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
    <title>注册</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet"	type="text/css"	href="css/registerstyle.css">
   <script type="text/JavaScript" src="js/func.js"></script>
   <script type="text/javascript" src="js/app.js" ></script>
   <script type="text/javascript">
   
   //注册在页面本身验证
   var errMsg=['用户名不能少于 5 个字符，不能多于 20 个字符',
       '昵称不能为空,不能多于 20 个字符',
       '密码不能为空',
       '验证密码与原密码不一致！',
       'Email地址不合法！',
       '个人简介不能为空',
       ];
  var pattern=[/.{5,20}/,
  /.{1,20}/,
  /.{1,}/,
  '',
  /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]{2,}(\.[a-z0-9]{2,5}){1,2}$/,
  /.{1,}/
  ];

  function showMsg(strName){
  strText = arguments[1];
  strName.parentNode.getElementsByTagName("span")[0].innerHTML='';
  strName.parentNode.getElementsByTagName("span")[0].innerHTML+=strText;
  }

  function clearMsg(strId){
  strId.parentNode.getElementsByTagName("span")[0].innerHTML='';
  }

  function regCheck(oThis){
  nType=arguments[1];
  if (nType==3) {
  	strCon = !(document.getElementsByName('pwd')[0].value==document.getElementsByName('validatepwd')[0].value);
  }else {
  	strCon = !patternCheck(pattern[nType],oThis.value);
  	}
  if (strCon){
  	showMsg(oThis,errMsg[nType]);
  	return false;
  	}
  else {
  	clearMsg(oThis);
  	return true;
  	}	
  }		

  function validateform(){
  var	oSpan   = document.getElementsByTagName("span");
  var bIsTrue = true;
  for (var i=0;i<oSpan.length;i++){
  //alert(oSpan[i]);]
  if(bIsTrue==false){ 
//  	alert('输入有错，请重新检查');
  	oSpan[i-1].parentNode.getElementsByTagName("input")[0].focus();
  	oSpan[i-1].parentNode.getElementsByTagName("textarea")[0].focus();
  	return false;	
  }
  oInput = oSpan[i].parentNode.getElementsByTagName("input");
  oInput = oSpan[i].parentNode.getElementsByTagName("textarea");
  bIsTrue=regCheck(oInput[oInput.length-1],i)&&bIsTrue;
  }
  if (bIsTrue==true) {
  	return true;
  }
  } 
   
   </script>

 </head>
 <body>

 
 
 <form action="register"method="post" onsubmit="return validateform()">
 		<table border="0px" align="center" >
 			
 				<tr height="30px">				
					<td>用户名：</td>
					<td> <input type="text" name="userName" id="userName" onchange="regCheck(this,0)"  value="${param.userName}" ><span style="color: red;font-weight: bold;position: absolute;left: 830px">${requestScope.message != null && requestScope.message ne ""?requestScope.message:"" }</span></td>
				</tr>
				<tr height="30px">	
					<td>显示名：</td>
					<td> <input type="text" name="displayName" id="displayName" onchange="regCheck(this,1)" value="${param.displayName}" ><span class="red"></span></td>
				</tr>
 				<tr height="30px">	
		 			<td>登录密码：</td>
					<td><input type="password" name="pwd" id="pwd" onchange="regCheck(this,2)"  value="${param.pwd}"><span class="red"></span></td>
				</tr>
 				<tr>	
					<td>再次输入密码：</td>
					<td><input type="password" name="validatepwd" id="validatepwd" onchange="regCheck(this,3)"  value="${param.validatepwd}"><span class="red"></span></td>
				</tr>
 				<tr height="30px">
 					<td>email：</td>
 					<td><input type="text" name="email" onchange="regCheck(this,4)" value="${param.email}"/><span class="red"></span></td>
 				</tr>
 				<tr>
 					<td>验证码</td>
 					<td><input type="text" name="captcha" id="captcha"></td>
 					<td><img id="captchaImg" src="captcha" onclick="javascript:refreshCaptcha(this)"/></td>
 				</tr>
 				<tr height="30px">
 					<td>个人简介：</td>
 					<td><textarea name="person" id="" cols="40" rows="10" onchange="regCheck(this,5)"></textarea><span style="position:  absolute;left: 900px" class="red"></span></td>
 				</tr>
 				<tr height="30px" >
 					<td align="right"><input type="submit" value="注册"/></td>
 					<td align="center"><input type="button"  value="退出" onclick="javascrtpt:window.location.href='index.jsp'"/></td>
 			
 				</tr>
 			
 		</table>
 	</form>
 </body>
</html>