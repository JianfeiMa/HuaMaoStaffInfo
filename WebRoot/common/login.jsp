<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>华茂电脑信息配置管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		body{
			background-color: #ffffff
		}
		.content{
			padding-top: 20px;
			width: 20%;
			height: 150px;
			margin-top: 10%;
			margin: auto;
			padding: 28px;
			border: 1px #111 solid;
			display: block;
			/* background-color: #ffff00; */
		}
		.footer{
			margin-top: 200px;
		}
	</style>
	<script type="text/javascript">

		function myCheck1() {
			for(var i=0;i<document.form1.elements.length-1;i++) {
				if(document.form1.elements[i].value=="") {
					alert("当前表单不能有空项");
					document.form1.elements[i].focus();
					return false;
				}
			}
			return true;
		}
	</script>
  </head>
  
  <body style="background-image: url('common/Lighthouse.jpg');">
  	<div class="container" align="center">
  		<div class="header">
  			<h1 align="center">欢迎使用华茂员工信息管理系统</h1>
  		</div>
  		<div class="content" >
    		<form style="margin-top: 70px;" name="form1" onsubmit="return myCheck1()" action="itManager/itManagerLogin.do" method="post" enctype="multipart/form-data">
    			姓名:<input name="name"><br>
    			密码:<input name="password" type="password"><br>
    			     <input type="submit" value="IT管理员登陆">
    		</form>
  		</div>
  		<div align="center" class="footer">东莞市华茂电子集团有限公司</div>
  	</div>
  </body>
</html>
