<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'select1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		H1 {
			font-family:Tahoma,Arial,sans-serif;
			color:white;
			background-color:#525D76;
			font-size:22px;} 
		H2 {
			font-family:Tahoma,Arial,sans-serif;
			color:white;
			background-color:#525D76;
			font-size:16px;} 
		H3 {
			font-family:Tahoma,Arial,sans-serif;
			color:white;
			background-color:#525D76;
			font-size:14px;}
		BODY {
		 	font-family:Tahoma,Arial,sans-serif;
		 	color:black;
		 	background-color:white;}
		B {
		  	font-family:Tahoma,Arial,sans-serif;
		  	color:white;background-color:#525D76;}
		P {
			font-family:Tahoma,Arial,sans-serif;
		   	background:white;
		   	color:black;
		   	font-size:12px;}
		A {
			color : black;}
		A.name {
			color : black;}
		HR {
		 	color : #525D76;}
		table {
    		width: 100%;}
		td.page-title {
    		text-align: center;
    		vertical-align: top;
    		font-family:sans-serif,Tahoma,Arial;
    		font-weight: bold;
    		background: white;
    		color: black;}
  		td.title {
    		text-align: left;
    		vertical-align: top;
    		font-family:sans-serif,Tahoma,Arial;
    		font-style:italic;
    		font-weight: bold;
    		background: #D2A41C;}
  		td.header-left {
    		text-align: left;
    		vertical-align: top;
    		font-family:sans-serif,Tahoma,Arial;
    		font-weight: bold;
    		background: #FFDC75;}
  		td.header-center {
    		text-align: center;
    		vertical-align: top;
    		font-family:sans-serif,Tahoma,Arial;
    		font-weight: bold;
    		background: #FFDC75;}
  		td.row-left {
    		text-align: left;
    		vertical-align: middle;
    		font-family:sans-serif,Tahoma,Arial;
    		color: black;}
  		td.row-center {
    		text-align: center;
    		vertical-align: middle;
    		font-family:sans-serif,Tahoma,Arial;
    		color: black;}
  		td.row-right {
    		text-align: right;
    		vertical-align: middle;
    		font-family:sans-serif,Tahoma,Arial;
    		color: black;}
  		TH {
    		text-align: center;
    		vertical-align: top;
    		font-family:sans-serif,Tahoma,Arial;
    		font-weight: bold;
    		background: #FFDC75;}
  		TD {
    		text-align: center;
    		vertical-align: middle;
    		font-family:sans-serif,Tahoma,Arial;
    		color: black;}
	</style>
  </head>
  
	<body>
		<table cellspacing="4" width="100%" border="0">
		 <tbody><tr>
		  <td colspan="2">
		   <a href="http://www.apache.org/">
		    <img alt="The Apache Software Foundation" src="/manager/images/asf-logo.gif" align="left" border="0">
		   </a>
		   <a href="http://tomcat.apache.org/">
		    <img alt="The Tomcat Servlet/JSP Container" src="/manager/images/tomcat.gif" align="right" border="0">
		   </a>
		  </td>
		 </tr>
		</tbody>
		</table>
		<hr size="1" noshade="noshade">
		
		<table cellspacing="4" width="100%" border="0">
		 <tbody><tr>
		  <td class="page-title" bordercolor="#000000" align="left" nowrap="">
		   <font size="+2">Tomcat Web Application Manager</font>
		  </td>
		 </tr>
		</tbody>
		</table>
		<br>

		<table cellspacing="0" cellpadding="3" border="1">
		 <tbody><tr>
		  <td class="row-left" width="10%"><small><strong>Message:</strong></small>&nbsp;</td>
		  <td class="row-left"><pre>OK</pre></td>
		 </tr>
		</tbody></table>
		<br>

		<table cellspacing="0" cellpadding="3" border="1">
		<tbody><tr>
		 <td colspan="4" class="title">Manager</td>
		</tr>
		 <tr>
		  <td class="row-left"><a href="/manager/html/list">List Applications</a></td>
		  <td class="row-center"><a href="/manager/../docs/html-manager-howto.html">HTML Manager Help</a></td>
		  <td class="row-center"><a href="/manager/../docs/manager-howto.html">Manager Help</a></td>
		  <td class="row-right"><a href="/manager/status">Server Status</a></td>
		 </tr>
		</tbody></table>
		<br>

		<table cellspacing="0" cellpadding="3" border="1">
		<tbody><tr>
		 <td colspan="5" class="title">Applications</td>
		</tr>
		<tr>
		 <td class="header-left"><small>Path</small></td>
		 <td class="header-left"><small>Display Name</small></td>
		 <td class="header-center"><small>Running</small></td>
		 <td class="header-center"><small>Sessions</small></td>
		 <td class="header-left"><small>Commands</small></td>
		</tr>
		<tr>
		 <td class="row-left" rowspan="2" bgcolor="#FFFFFF"><small><a href="/">/</a></small></td>
		 <td class="row-left" rowspan="2" bgcolor="#FFFFFF"><small>Welcome to Tomcat</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#FFFFFF"><small>true</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#FFFFFF"><small><a href="/manager/html/sessions?path=/" target="_new">0</a></small></td>
		 <td class="row-left" bgcolor="#FFFFFF">
		  <small>
		  &nbsp;Start&nbsp;
		  &nbsp;<a href="/manager/html/stop?path=/" onclick="return(confirm('Are you sure?'))">Stop</a>&nbsp;
		  &nbsp;<a href="/manager/html/reload?path=/" onclick="return(confirm('Are you sure?'))">Reload</a>&nbsp;
		  &nbsp;<a href="/manager/html/undeploy?path=/" onclick="return(confirm('Are you sure?'))">Undeploy</a>&nbsp;
		  </small>
		 </td>
		 </tr><tr>
		 <td class="row-left" bgcolor="#FFFFFF">
		  <form method="POST" action="/manager/html/expire?path=/">
		  <small>
		  &nbsp;<input value="Expire sessions" type="submit">&nbsp;with idle ≥&nbsp;<input name="idle" size="5" value="30" type="text">&nbsp;minutes&nbsp;
		  </small>
		  </form>
		 </td>
		</tr>
		<tr>
		 <td class="row-left" rowspan="2" bgcolor="#C3F3C3"><small><a href="/HuaMaoStaffInfo">/HuaMaoStaffInfo</a></small></td>
		 <td class="row-left" rowspan="2" bgcolor="#C3F3C3"><small></small></td>
		 <td class="row-center" rowspan="2" bgcolor="#C3F3C3"><small>true</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#C3F3C3"><small><a href="/manager/html/sessions?path=/HuaMaoStaffInfo" target="_new">4</a></small></td>
		 <td class="row-left" bgcolor="#C3F3C3">
		  <small>
		  &nbsp;Start&nbsp;
		  &nbsp;<a href="/manager/html/stop?path=/HuaMaoStaffInfo" onclick="return(confirm('Are you sure?'))">Stop</a>&nbsp;
		  &nbsp;<a href="/manager/html/reload?path=/HuaMaoStaffInfo" onclick="return(confirm('Are you sure?'))">Reload</a>&nbsp;
		  &nbsp;<a href="/manager/html/undeploy?path=/HuaMaoStaffInfo" onclick="return(confirm('Are you sure?'))">Undeploy</a>&nbsp;
		  </small>
		 </td>
		 </tr><tr>
		 <td class="row-left" bgcolor="#C3F3C3">
		  <form method="POST" action="/manager/html/expire?path=/HuaMaoStaffInfo">
		  <small>
		  &nbsp;<input value="Expire sessions" type="submit">&nbsp;with idle ≥&nbsp;<input name="idle" size="5" value="30" type="text">&nbsp;minutes&nbsp;
		  </small>
		  </form>
		 </td>
		</tr>
		<tr>
		 <td class="row-left" rowspan="2" bgcolor="#FFFFFF"><small><a href="/JSPBaseElemenDemo">/JSPBaseElemenDemo</a></small></td>
		 <td class="row-left" rowspan="2" bgcolor="#FFFFFF"><small></small></td>
		 <td class="row-center" rowspan="2" bgcolor="#FFFFFF"><small>true</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#FFFFFF"><small><a href="/manager/html/sessions?path=/JSPBaseElemenDemo" target="_new">0</a></small></td>
		 <td class="row-left" bgcolor="#FFFFFF">
		  <small>
		  &nbsp;Start&nbsp;
		  &nbsp;<a href="/manager/html/stop?path=/JSPBaseElemenDemo" onclick="return(confirm('Are you sure?'))">Stop</a>&nbsp;
		  &nbsp;<a href="/manager/html/reload?path=/JSPBaseElemenDemo" onclick="return(confirm('Are you sure?'))">Reload</a>&nbsp;
		  &nbsp;<a href="/manager/html/undeploy?path=/JSPBaseElemenDemo" onclick="return(confirm('Are you sure?'))">Undeploy</a>&nbsp;
		  </small>
		 </td>
		 </tr><tr>
		 <td class="row-left" bgcolor="#FFFFFF">
		  <form method="POST" action="/manager/html/expire?path=/JSPBaseElemenDemo">
		  <small>
		  &nbsp;<input value="Expire sessions" type="submit">&nbsp;with idle ≥&nbsp;<input name="idle" size="5" value="30" type="text">&nbsp;minutes&nbsp;
		  </small>
		  </form>
		 </td>
		</tr>
		<tr>
		 <td class="row-left" rowspan="2" bgcolor="#C3F3C3"><small><a href="/One">/One</a></small></td>
		 <td class="row-left" rowspan="2" bgcolor="#C3F3C3"><small></small></td>
		 <td class="row-center" rowspan="2" bgcolor="#C3F3C3"><small>true</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#C3F3C3"><small><a href="/manager/html/sessions?path=/One" target="_new">0</a></small></td>
		 <td class="row-left" bgcolor="#C3F3C3">
		  <small>
		  &nbsp;Start&nbsp;
		  &nbsp;<a href="/manager/html/stop?path=/One" onclick="return(confirm('Are you sure?'))">Stop</a>&nbsp;
		  &nbsp;<a href="/manager/html/reload?path=/One" onclick="return(confirm('Are you sure?'))">Reload</a>&nbsp;
		  &nbsp;<a href="/manager/html/undeploy?path=/One" onclick="return(confirm('Are you sure?'))">Undeploy</a>&nbsp;
		  </small>
		 </td>
		 </tr><tr>
		 <td class="row-left" bgcolor="#C3F3C3">
		  <form method="POST" action="/manager/html/expire?path=/One">
		  <small>
		  &nbsp;<input value="Expire sessions" type="submit">&nbsp;with idle ≥&nbsp;<input name="idle" size="5" value="30" type="text">&nbsp;minutes&nbsp;
		  </small>
		  </form>
		 </td>
		</tr>
		<tr>
		 <td class="row-left" rowspan="2" bgcolor="#FFFFFF"><small><a href="/OneWebProject">/OneWebProject</a></small></td>
		 <td class="row-left" rowspan="2" bgcolor="#FFFFFF"><small></small></td>
		 <td class="row-center" rowspan="2" bgcolor="#FFFFFF"><small>true</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#FFFFFF"><small><a href="/manager/html/sessions?path=/OneWebProject" target="_new">0</a></small></td>
		 <td class="row-left" bgcolor="#FFFFFF">
		  <small>
		  &nbsp;Start&nbsp;
		  &nbsp;<a href="/manager/html/stop?path=/OneWebProject" onclick="return(confirm('Are you sure?'))">Stop</a>&nbsp;
		  &nbsp;<a href="/manager/html/reload?path=/OneWebProject" onclick="return(confirm('Are you sure?'))">Reload</a>&nbsp;
		  &nbsp;<a href="/manager/html/undeploy?path=/OneWebProject" onclick="return(confirm('Are you sure?'))">Undeploy</a>&nbsp;
		  </small>
		 </td>
		 </tr><tr>
		 <td class="row-left" bgcolor="#FFFFFF">
		  <form method="POST" action="/manager/html/expire?path=/OneWebProject">
		  <small>
		  &nbsp;<input value="Expire sessions" type="submit">&nbsp;with idle ≥&nbsp;<input name="idle" size="5" value="30" type="text">&nbsp;minutes&nbsp;
		  </small>
		  </form>
		 </td>
		</tr>
		<tr>
		 <td class="row-left" rowspan="2" bgcolor="#C3F3C3"><small><a href="/docs">/docs</a></small></td>
		 <td class="row-left" rowspan="2" bgcolor="#C3F3C3"><small>Tomcat Documentation</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#C3F3C3"><small>true</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#C3F3C3"><small><a href="/manager/html/sessions?path=/docs" target="_new">0</a></small></td>
		 <td class="row-left" bgcolor="#C3F3C3">
		  <small>
		  &nbsp;Start&nbsp;
		  &nbsp;<a href="/manager/html/stop?path=/docs" onclick="return(confirm('Are you sure?'))">Stop</a>&nbsp;
		  &nbsp;<a href="/manager/html/reload?path=/docs" onclick="return(confirm('Are you sure?'))">Reload</a>&nbsp;
		  &nbsp;<a href="/manager/html/undeploy?path=/docs" onclick="return(confirm('Are you sure?'))">Undeploy</a>&nbsp;
		  </small>
		 </td>
		 </tr><tr>
		 <td class="row-left" bgcolor="#C3F3C3">
		  <form method="POST" action="/manager/html/expire?path=/docs">
		  <small>
		  &nbsp;<input value="Expire sessions" type="submit">&nbsp;with idle ≥&nbsp;<input name="idle" size="5" value="30" type="text">&nbsp;minutes&nbsp;
		  </small>
		  </form>
		 </td>
		</tr>
		<tr>
		 <td class="row-left" rowspan="2" bgcolor="#FFFFFF"><small><a href="/examples">/examples</a></small></td>
		 <td class="row-left" rowspan="2" bgcolor="#FFFFFF"><small>Servlet and JSP Examples</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#FFFFFF"><small>true</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#FFFFFF"><small><a href="/manager/html/sessions?path=/examples" target="_new">0</a></small></td>
		 <td class="row-left" bgcolor="#FFFFFF">
		  <small>
		  &nbsp;Start&nbsp;
		  &nbsp;<a href="/manager/html/stop?path=/examples" onclick="return(confirm('Are you sure?'))">Stop</a>&nbsp;
		  &nbsp;<a href="/manager/html/reload?path=/examples" onclick="return(confirm('Are you sure?'))">Reload</a>&nbsp;
		  &nbsp;<a href="/manager/html/undeploy?path=/examples" onclick="return(confirm('Are you sure?'))">Undeploy</a>&nbsp;
		  </small>
		 </td>
		 </tr><tr>
		 <td class="row-left" bgcolor="#FFFFFF">
		  <form method="POST" action="/manager/html/expire?path=/examples">
		  <small>
		  &nbsp;<input value="Expire sessions" type="submit">&nbsp;with idle ≥&nbsp;<input name="idle" size="5" value="30" type="text">&nbsp;minutes&nbsp;
		  </small>
		  </form>
		 </td>
		</tr>
		<tr>
		 <td class="row-left" rowspan="2" bgcolor="#C3F3C3"><small><a href="/host-manager">/host-manager</a></small></td>
		 <td class="row-left" rowspan="2" bgcolor="#C3F3C3"><small>Tomcat Manager Application</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#C3F3C3"><small>true</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#C3F3C3"><small><a href="/manager/html/sessions?path=/host-manager" target="_new">0</a></small></td>
		 <td class="row-left" bgcolor="#C3F3C3">
		  <small>
		  &nbsp;Start&nbsp;
		  &nbsp;<a href="/manager/html/stop?path=/host-manager" onclick="return(confirm('Are you sure?'))">Stop</a>&nbsp;
		  &nbsp;<a href="/manager/html/reload?path=/host-manager" onclick="return(confirm('Are you sure?'))">Reload</a>&nbsp;
		  &nbsp;<a href="/manager/html/undeploy?path=/host-manager" onclick="return(confirm('Are you sure?'))">Undeploy</a>&nbsp;
		  </small>
		 </td>
		 </tr><tr>
		 <td class="row-left" bgcolor="#C3F3C3">
		  <form method="POST" action="/manager/html/expire?path=/host-manager">
		  <small>
		  &nbsp;<input value="Expire sessions" type="submit">&nbsp;with idle ≥&nbsp;<input name="idle" size="5" value="30" type="text">&nbsp;minutes&nbsp;
		  </small>
		  </form>
		 </td>
		</tr>
		<tr>
		 <td class="row-left" rowspan="2" bgcolor="#FFFFFF"><small><a href="/manager">/manager</a></small></td>
		 <td class="row-left" rowspan="2" bgcolor="#FFFFFF"><small>Tomcat Manager Application</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#FFFFFF"><small>true</small></td>
		 <td class="row-center" rowspan="2" bgcolor="#FFFFFF"><small><a href="/manager/html/sessions?path=/manager" target="_new">1</a></small></td>
		 <td class="row-left" bgcolor="#FFFFFF">
		  <small>
		  &nbsp;Start&nbsp;
		  &nbsp;Stop&nbsp;
		  &nbsp;Reload&nbsp;
		  &nbsp;Undeploy&nbsp;
		  </small>
		 </td>
		</tr><tr>
		 <td class="row-left" bgcolor="#FFFFFF">
		  <form method="POST" action="/manager/html/expire?path=/manager">
		  <small>
		  &nbsp;<input value="Expire sessions" type="submit">&nbsp;with idle ≥&nbsp;<input name="idle" size="5" value="30" type="text">&nbsp;minutes&nbsp;
		  </small>
		  </form>
		 </td>
		</tr>
		</tbody></table>
		<br>
		<table cellspacing="0" cellpadding="3" border="1">
		<tbody><tr>
		 <td colspan="2" class="title">Deploy</td>
		</tr>
		<tr>
		 <td colspan="2" class="header-left"><small>Deploy directory or WAR file located on server</small></td>
		</tr>
		<tr>
		 <td colspan="2">
		<form method="get" action="/manager/html/deploy">
		<table cellspacing="0" cellpadding="3">
		<tbody><tr>
		 <td class="row-right">
		  <small>Context Path (optional):</small>
		 </td>
		 <td class="row-left">
		  <input name="deployPath" size="20" type="text">
		 </td>
		</tr>
		<tr>
		 <td class="row-right">
		  <small>XML Configuration file URL:</small>
		 </td>
		 <td class="row-left">
		  <input name="deployConfig" size="20" type="text">
		 </td>
		</tr>
		<tr>
		 <td class="row-right">
		  <small>WAR or Directory URL:</small>
		 </td>
		 <td class="row-left">
		  <input name="deployWar" size="40" type="text">
		 </td>
		</tr>
		<tr>
		 <td class="row-right">
		  &nbsp;
		 </td>
		 <td class="row-left">
		  <input value="Deploy" type="submit">
		 </td>
		</tr>
		</tbody></table>
		</form>
		</td>
		</tr>
		<tr>
		 <td colspan="2" class="header-left"><small>WAR file to deploy</small></td>
		</tr>
		<tr>
		 <td colspan="2">
		<form action="/manager/html/upload" method="post" enctype="multipart/form-data">
		<table cellspacing="0" cellpadding="3">
		<tbody><tr>
		 <td class="row-right">
		  <small>Select WAR file to upload</small>
		 </td>
		 <td class="row-left">
		  <input name="deployWar" size="40" type="file">
		 </td>
		</tr>
		<tr>
		 <td class="row-right">
		  &nbsp;
		 </td>
		 <td class="row-left">
		  <input value="Deploy" type="submit">
		 </td>
		</tr>
		</tbody></table>
		</form>
		</td></tr></tbody></table>
		<br>

		<table cellspacing="0" cellpadding="3" border="1">
		<tbody><tr>
		 <td colspan="6" class="title">Server Information</td>
		</tr>
		<tr>
		 <td class="header-center"><small>Tomcat Version</small></td>
		 <td class="header-center"><small>JVM Version</small></td>
		 <td class="header-center"><small>JVM Vendor</small></td>
		 <td class="header-center"><small>OS Name</small></td>
		 <td class="header-center"><small>OS Version</small></td>
		 <td class="header-center"><small>OS Architecture</small></td>
		</tr>
		<tr>
		 <td class="row-center"><small>Apache Tomcat/6.0.18</small></td>
		 <td class="row-center"><small>1.6.0_45-b06</small></td>
		 <td class="row-center"><small>Sun Microsystems Inc.</small></td>
		 <td class="row-center"><small>Windows 7</small></td>
		 <td class="row-center"><small>6.1</small></td>
		 <td class="row-center"><small>x86</small></td>
		</tr>
		</tbody></table>
		<br>

		<hr size="1" noshade="noshade">
		<center>
			<font color="#525D76" size="-1">
 				<em>Copyright © 1999-2005, Apache Software Foundation</em>
 			</font>
 		</center>
	</body>
</html>
