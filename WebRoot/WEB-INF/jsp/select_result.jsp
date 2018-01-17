<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工电脑详细配置信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <div align="center">
  	<h2>员工电脑详细配置信息</h2>
  	<table border="1" cellspacing="0">
  		<tbody>
  			<tr height="50" bgcolor="#ff00">
  				<td width="300">姓名:</td>
  				<td width="300">马健飞</td>
  			</tr>
  			<tr height="50" bgcolor="#ffee">
  				<td>部门:</td>
  				<td>人资行政部</td>
  			</tr>
  			<tr height="50" bgcolor="#ff00">
  				<td width="300">IP:</td>
  				<td width="300">192.168.16.234</td>
  			</tr>
  			<tr height="50" bgcolor="#ffee">
  				<td>内邮:</td>
  				<td>835@hm.com</td>
  			</tr>
  			<tr height="50" bgcolor="#ff00">
  				<td width="300">外邮:</td>
  				<td width="300">majianfei.@dghm118.com</td>
  			</tr>
  			<tr height="50" bgcolor="#ffee">
  				<td>邮箱密码:</td>
  				<td>835835</td>
  			</tr>
  			<tr height="50" bgcolor="#ff00">
  				<td width="300">开机密码:</td>
  				<td width="300">hm123456</td>
  			</tr>
  			<tr height="50" bgcolor="#ffee">
  				<td>锁屏密码:</td>
  				<td>hm123456</td>
  			</tr>
  			<tr height="50" bgcolor="#ff00">
  				<td width="300">249帐号:</td>
  				<td width="300">249密码:</td>
  			</tr>
  			<tr height="50" bgcolor="#ffee">
  				<td>是否域用户:</td>
  				<td>否</td>
  			</tr>
  			<tr height="50" bgcolor="#ff00">
  				<td width="300">域用户名:</td>
  				<td width="300">无</td>
  			</tr>
  			<tr height="50" bgcolor="#ffee">
  				<td>部门:</td>
  				<td>人资行政部</td>
  			</tr>
  			<tr height="50" bgcolor="#ff00">
  				<td width="300">创建时间:</td>
  				<td width="300">2017.09.19</td>
  			</tr>
  			<tr height="50" bgcolor="#ffee">
  				<td>最近修改时间:</td>
  				<td>2017.12.10</td>
  			</tr>
  		</tbody>
  	</table>
  	</div>
  </body>
</html>
