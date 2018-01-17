<%@page import="com.mjf.hmsi.bean.Staff"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加电脑配置</title>
    
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
			width: 100%;
		}
		.box{
			padding-top: 20px;
			width: 50%;
			height: 290px;
			margin-top: 10%;
			margin: auto;
			padding: 28px;
			border: 1px #111 solid;
			display: block;
		}
	</style>
  </head>
  
  <body>
  	<div align="center">
    <div class="box">
    	<form action="staff/staffRegist.do" method="post" enctype="multipart/form-data"> 
    			姓         名<input name="name"><br>
    			部         门<input name="department"><br>
    			二四九帐户<input name="twoFourNineN"><br>
    			二四九密码<input name="twoFourNineP"><br>
    			IP地址<input name="ip"><br>
    			内         邮<input name="inMail"><br>
    			外         邮<input name="outMail"><br>
    			邮箱密码<input name="mailPassword"><br>
    			开机密码<input name="startUpPassword"><br>
    			锁屏密码<input name="lockPassword"><br>
    			是否域用户<input name="whetherYK"><br>
    			域用户名<input name="domainName"><br>
    					<input type="submit" value="注册">
    	</form>
    </div>
    <div>
		<label>自动生成乱序密码如下</label>
		<h1>${password }</h1>
		<h1>${password1 }</h1>
		<h1>${password2 }</h1>
	</div>
	</div>
  </body>
</html>
