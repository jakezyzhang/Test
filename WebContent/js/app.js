function opens(obj) {
				for (var i = 1; i <= 6; i++) {
					if (i == obj) {
						document.getElementById("main" + i).style.display = "block"
					} else {
						document.getElementById("main" + i).style.display = "none"
					}
				}
			}

$(document).ready(function() {
	$("#btnSubmit").bind("click", function() { //检测按钮事件
		sys_Alert($("#btnSubmit").html());
	});
});

$(document).ready(function() {
	$("#btnSubmit2").bind("click", function() { //检测按钮事件
		sys_Alert("添加笔记");
	});
});

$(document).ready(function() {
	$("#btnSubmit3").bind("click", function() { //检测按钮事件
		sys_Alert($("#btnSubmit3").html());
	});
});

$(document).ready(function() {
	$("#btnSubmit4").bind("click", function() { //检测按钮事件
		sys_Alert($("#btnSubmit4").html());
	});
});

$(document).ready(function() {
	$("#btnSubmit5").bind("click", function() { //检测按钮事件
		sys_Alert($("#btnSubmit5").html());
	});
});

$(document).ready(function() {
	$("#btnSubmit6").bind("click", function() { //检测按钮事件
		sys_Alert($("#btnSubmit6").html());
	});
});

$(document).ready(function() {
	$("#btnSubmit7").bind("click", function() { //检测按钮事件
		sys_Alert($("#btnSubmit7").html());
	});
});

$(document).ready(function() {
	$("#btnSubmit8").bind("click", function() { //检测按钮事件
		sys_Alert($("#btnSubmit8").html());
	});
});

$(document).ready(function() {
	$("#btnSubmit9").bind("click", function() { //检测按钮事件
		sys_Alert($("#btnSubmit9").html());
	});
});



function sys_Alert(content) { //弹出提示信息窗口
	        $("#dialog-non-modal").dialog({
	            height: 140,
	            modal: false,
	            title: '系统提示',
	            hide: 'slide',
	            buttons: {
	                '确定': function() {
	                   
	                    $(this).dialog("close");
	                },
	                '取消': function() {
	                    $(this).dialog("close");
	                }
	            },
	            open: function(event, ui) {
	                $(this).html("");
	                $(this).append(content);
	            }
	        });
	    }

$(document).ready(function() {
	   $("#changecolor").mouseover(function() {     //当鼠标移过#nav li元素时
	        $(this).addClass("heightlight");        //为鼠标所在li元素添加样式
	   });
	   $("#changecolor").mouseout(function() {       //当鼠标移出#nav li元素时
	    $(this).removeClass();   //移除鼠标所在li元素的全部样式
	});
	});

$(document).ready(function() {
	   $("#changecolor2").mouseover(function() {     //当鼠标移过#nav li元素时
	        $(this).addClass("heightlight");        //为鼠标所在li元素添加样式
	   });
	   $("#changecolor2").mouseout(function() {       //当鼠标移出#nav li元素时
	    $(this).removeClass();   //移除鼠标所在li元素的全部样式
	});
	});

$(document).ready(function() {
	   $("#changecolor3").mouseover(function() {     //当鼠标移过#nav li元素时
	        $(this).addClass("heightlight");        //为鼠标所在li元素添加样式
	   });
	   $("#changecolor3").mouseout(function() {       //当鼠标移出#nav li元素时
	    $(this).removeClass();   //移除鼠标所在li元素的全部样式
	});
	});

$(document).ready(function() {
	   $("#changecolor4").mouseover(function() {     //当鼠标移过#nav li元素时
	        $(this).addClass("heightlight");        //为鼠标所在li元素添加样式
	   });
	   $("#changecolor4").mouseout(function() {       //当鼠标移出#nav li元素时
	    $(this).removeClass();   //移除鼠标所在li元素的全部样式
	});
	});

$(document).ready(function() {
	   $("#changecolor5").mouseover(function() {     //当鼠标移过#nav li元素时
	        $(this).addClass("heightlight");        //为鼠标所在li元素添加样式
	   });
	   $("#changecolor5").mouseout(function() {       //当鼠标移出#nav li元素时
	    $(this).removeClass();   //移除鼠标所在li元素的全部样式
	});
	});

$(document).ready(function() {
	   $("#changecolor6").mouseover(function() {     //当鼠标移过#nav li元素时
	        $(this).addClass("heightlight");        //为鼠标所在li元素添加样式
	   });
	   $("#changecolor6").mouseout(function() {       //当鼠标移出#nav li元素时
	    $(this).removeClass();   //移除鼠标所在li元素的全部样式
	});
	});
	
$(document).ready(function() {
	   $("#changecolor7").mouseover(function() {     //当鼠标移过#nav li元素时
	        $(this).addClass("heightlight");        //为鼠标所在li元素添加样式
	   });
	   $("#changecolor7").mouseout(function() {       //当鼠标移出#nav li元素时
	    $(this).removeClass();   //移除鼠标所在li元素的全部样式
	});
	});	

$(document).ready(function() {
	   $("#changecolor8").mouseover(function() {     //当鼠标移过#nav li元素时
	        $(this).addClass("heightlight");        //为鼠标所在li元素添加样式
	   });
	   $("#changecolor8").mouseout(function() {       //当鼠标移出#nav li元素时
	    $(this).removeClass();   //移除鼠标所在li元素的全部样式
	});
	});

$(document).ready(function() {
	   $("#changecolor9").mouseover(function() {     //当鼠标移过#nav li元素时
	        $(this).addClass("heightlight");        //为鼠标所在li元素添加样式
	   });
	   $("#changecolor9").mouseout(function() {       //当鼠标移出#nav li元素时
	    $(this).removeClass();   //移除鼠标所在li元素的全部样式
	});
	});
	
$(document).ready(function() {
	   $("#changecolor10").mouseover(function() {     //当鼠标移过#nav li元素时
	        $(this).addClass("heightlight");        //为鼠标所在li元素添加样式
	   });
	   $("#changecolor10").mouseout(function() {       //当鼠标移出#nav li元素时
	    $(this).removeClass();   //移除鼠标所在li元素的全部样式
	});
	});
	
$(document).ready(function() {
	   $("#changecolor11").mouseover(function() {     //当鼠标移过#nav li元素时
	        $(this).addClass("heightlight");        //为鼠标所在li元素添加样式
	   });
	   $("#changecolor11").mouseout(function() {       //当鼠标移出#nav li元素时
	    $(this).removeClass();   //移除鼠标所在li元素的全部样式
	});
	});
	
$(document).ready(function() {
	   $("#changecolor12").mouseover(function() {     //当鼠标移过#nav li元素时
	        $(this).addClass("heightlight");        //为鼠标所在li元素添加样式
	   });
	   $("#changecolor12").mouseout(function() {       //当鼠标移出#nav li元素时
	    $(this).removeClass();   //移除鼠标所在li元素的全部样式
	});
	});
//定义数据保存图片路径
var arrImg = new Array("img/jdk.jpg","img/Tomcat.jpg","img/MySQL.jpg","img/xampp.jpg","img/eclipse.jpg","img/eclipse web.jpg");
$(function() {
    //遍历所有列表选项
    $(".spanL").each(function(index) {
        //增加title属性
         $(this).attr("title", "<img src='" + arrImg[index] + "'></img>");
        $(this).tooltip({ 
	position: { my: "left+100"} 
});
    });
});
//全选 供能
$(document).ready(function() {
	 $("#allget").click(function(){
		  $("td").css("background-color","#09F");//改变含有td属性的的背景颜色
		
	 });
});
//取消供能
$(document).ready(function() {
	 $("#allout").click(function(){
		  $("td").css("background-color","");//改变含有td属性的背景颜色
			$(":checkbox").attr("checked",true);
	 });
});
 $(document).ready(function () {
        $("#allget").click(function () {
        $(":checkbox").attr("checked",true);
        })
        $("#allout").click(function () {
            $(":checkbox").attr("checked",false);
        })
    })

//打钩全选
 function check(){
 	var oInput=document.getElementsByName("product");
 	for (var i=0;i<oInput.length;i++)
 		oInput[i].checked=document.getElementById("all").checked;
 }
 
 function check2(){
 	var oInput=document.getElementsByName("product2");
 	for (var i=0;i<oInput.length;i++)
 		oInput[i].checked=document.getElementById("all2").checked;
 }
 
 function check3(){
 	var oInput=document.getElementsByName("product3");
 	for (var i=0;i<oInput.length;i++)
 		oInput[i].checked=document.getElementById("all3").checked;
 }

 function check4(){
 	var oInput=document.getElementsByName("product4");
 	for (var i=0;i<oInput.length;i++)
 		oInput[i].checked=document.getElementById("all4").checked;
 }

 function check5(){
 	var oInput=document.getElementsByName("product5");
 	for (var i=0;i<oInput.length;i++)
 		oInput[i].checked=document.getElementById("all5").checked;
 }
 
 function check6(){
 	var oInput=document.getElementsByName("product6");
 	for (var i=0;i<oInput.length;i++)
 		oInput[i].checked=document.getElementById("all6").checked;
 }

 
 
 //切换验证码
 function refreshCaptcha(obj) {
	  obj.src = "captcha?" + Math.random();  
}
//验证填写了验证码与否
 function checkForm() {
		if($("#captcha").val() == null || $("#captcha").val() == "") {
			$("#message").text("请填写验证码");
			return false;
		} 
	}

