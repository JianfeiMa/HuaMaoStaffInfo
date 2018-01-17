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
    
    <title>修改员工信息</title>
    
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
			height: 690px;
			margin-top: 10%;
			margin: auto;
			padding: 28px;
			border: 1px #111 solid;
			display: block;/*  默认对话框隐藏  */
		}
		.box input{
			width: 80%;
			font-size: 18px;
			margin-top: 18px;
		}
	</style>
  </head>
  
  <body>
  <div align="center">
  		<%
    		Staff s = (Staff) request.getAttribute("Staff");
			
    	 %>
    <div class="box">
	    	<form action="staff/updateStaffInfo1.do" method="post" enctype="multipart/form-data">		
		  		ID:<input type="text" name="id" value="<%=s.getId() %>"><br>
		  		姓名<input name="name" type="text" value="<%=s.getName()%>"><br>
		  		部门<input name="department" type="text" value="<%=s.getDepartment() %>"><br>
		  		249<input name="twoFourNineN" type="text" value="<%=s.getTwoFourNineN() %>"><br>
		  		249密码<input name="twoFourNineP" type="text" value="<%=s.getTwoFourNineP() %>"><br>
		  		ip地址<input name="ip" type="text" value="<%=s.getIp() %>"><br>
		  		内邮<input name="inMail" type="text" value="<%=s.getInMail() %>"><br>
		  		外邮<input name="outMail" type="text" value="<%=s.getOutMail() %>"><br>
		  		邮箱密码<input name="mailPassword" type="text" value="<%=s.getMailPassword() %>"><br>
		  		开机密码<input name="startUpPassword" type="text" value="<%=s.getStartUpPassword() %>"><br>
		  		锁屏密码<input name="lockPassword" type="text" value="<%=s.getLockPassword() %>"><br>
		  		是否域用户<input name="whetherYK" type="text" value="<%=String.valueOf(s.isWhetherYK())%>"><br>
		  		域控名<input name="domainName" type="text" value="<%=s.getDomainName() %>"><br>
		  		<input type="submit" value="确定修改">
  			</form>
  			<form action="staff/staffDelete.do" method="post">
  				<input type="hidden" name="id" value="<%=s.getId() %>">
  				<input type="submit" value="删除该记录">
  			</form>
  	</div>
  	</div>
  </body>
</html>
