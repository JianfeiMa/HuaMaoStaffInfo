<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>华茂员工信息管理系统</title>
    
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
			height: 100%;
			background-image: url("images/Penguins.jpg");
		}
		.content{		
			width: 50%;
			height: 350px;
			margin-top: 10%;
			margin: auto;
			padding: 28px;
			padding-top: 20px;	
			border: 1px #111 solid;
			display: block;
			background-color: #ffffff
		}
		.hearder{
			width: 100%;
			height: 70px;
			background-color: #F00;
			color: #FFF;
			margin-top: 0px;
			margin-left: 0px;
			margin-bottom: 80px;
		}
		.hearder ul{
			width: 820px;
			margin: 0 auto;
		}
		.hearder ul li{
			width: 180px;
			height: 30px;
			margin-top: 22px;
			float: left;
			list-style-type: none;
			text-align: center;
			line-height: 30px;
			border-right: 1px solid #FFF;
		}
		.div-inline{
			display: inline;
		}
		
		.box{
			width: 50%;
			margin-top: 10%;
			margin: auto;
			padding: 28px;
			height: 350px;
			border: 1px #111 solid;
			display: none;/*  默认对话框隐藏  */
		}
		.box .show{
			display: block;
		}
		.box .x{
			font-size: 18px;
			text-align: right;
			display: block;
		}
		.box input{
			width: 80%;
			font-size: 18px;
			margin-top: 18px;
		}
	</style>
	<script type="text/javascript">
  		function msgbox(n) {
  			//document.getElementById('inputbox').style.display=n?'block':'none';
  			if(n == 0) {
  				document.getElementById('inputbox').style.display='none';
  			}else {
  				document.getElementById('inputbox').style.display='block';
  			}
  		}
  		function promptDialog() {
  			var name = prompt('你的名字是:');
  		}
  		function checkIpAdreess() {
  			var ipAdreess = document.getElementById('ipAdreess').value
  			document.write("IP地址输出"+ipAdreess);
  			alert("IP地址输出"+ipAdreess);
  		}
  	</script>
  </head>
  
  <body>
  	<div align="center">
	  	<div class="hearder" align="center">
	  		<ul>
	  			<li><a href="itManager/itManagerRedirectAdd.do">IT管理员注册</a></li>
	  			<li><a href="itManager/itManagerOffline.do">退出登录</a></li> 
	  			<li><a href="#">用于测试系统</a></li>
	  			<li><a href="staff/staffAddUser.do">新增电脑配置</a></li>
	  		</ul>
	  	</div>
	  	<!-- <div id='inputbox' class="box">
	  		<a class='x' href='' onclick="msgbox(0);return false;">关闭</a>
	  		<input type="text">
	  		<input type="text">
	  		<input type="button" value="确定">
	  	</div> -->
	  	<div class="content">
			<form action="staff/staffSelectByName.do" method="post" enctype="multipart/form-data">
					<label>按姓名查询:</label>
					<input name="name">
					<input type="submit" value="查询">
			</form>
			<form action="staff/staffSelect.do" method="post">
					<label>按部门查询:</label>
					<select>
						<optgroup label="人资行政部">
							<option>招工课</option>
							<option>后期课</option>
							<option>IT课</option>
							<option>人资行政课</option>
						</optgroup>
						<optgroup label="生产部">
							<option>制一课</option>
							<option>制一课</option>
						</optgroup>
						<optgroup label="开发部">
							<option>开发部</option>
						</optgroup>
					</select>
					<input name="keyword">
					<input type="submit" value="查询">
			</form>
			<form action="staff/staffSelectByTwo49.do" method="post">
					<label>按249帐号查询:</label>
					<input name="two49">
					<input type="submit" value="查询">
			</form>
			<form action="staff/staffSelectByIP.do" method="post">
					<label>按IP地址查询:</label>
					<input id="ipAdreess" name="ip" width="20px">
					<input type="submit" value="查询">
			</form>
			<form action="staff/staffSelectByMail.do" method="post">
					<label>按邮箱查询:</label>
					<input name="mail">
					<input type="submit" value="查询">
			</form>
			<form action="staff/staffSelectBy3IP.do" method="post">
					<label>按第三个IP网段筛选:</label>
					<input name="thirdIP" maxlength="3">
					<input type="submit" value="查询">
			</form>	
	  	</div>
	  	<!-- <form action="staff/serializableToObj.do" method="post">
	  			<input type="submit" value="点击数据存入数据库">
	  	</form> -->
	  	<div style="margin-top: 150px;">
	  		<table>东莞市华茂电子有限公司  | IT课提供技术支持</table>
	  	</div>
  	</div>
  </body>
</html>
