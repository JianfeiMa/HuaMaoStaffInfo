<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.box{
			width: 50%;
			height: 200px;
			margin: auto;
			margin-top: 10%;
			padding: 28px;
			padding-top: 20px;
			border: 1px #111 solid;
			display: block;
		}
	</style>
	<script type="text/javascript">
		function myCheck() {
			for(var i=0;i<document.form1.elements.length-1;i++) {
				if(document.form.elements[i].value=="") {
					alert("当前表单不能有空项");
					document.form1.elements[i].focus();
					return false;
				}
			}
			return true;
		}
		
	</script>
  </head>
  
  <body>
  	<div align="center">
  		<div class="box">
	    	<form name="form" onsubmit="return myCheck()" action="itManager/itManagerRegist.do" method="post" enctype="multipart/form-data">
	    		姓名<input name="name"><br>
	    		密码<input name="password" type="password"><br>
	    			<input type="submit" value="IT管理员注册">
	    	</form>
  </div>
  	</div>
  </body>
</html>
