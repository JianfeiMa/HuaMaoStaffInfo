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
    
    <title>查找结果</title>
    
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
  
  <body bgcolor="#FFFFFF">
  	
  	<!-- <table cellspacing="4" width="100%" border="0">
  		<tbody>
  			<tr>
  				<td colspan="2">
  					<a>aa</a>
  					<a>bb</a>
  				</td>
  			</tr>
  		</tbody>
  	</table>
  	<table cellspacing="0" cellpadding="3" border="1">
  		<tbody>
  			<tr>
  				<td class="title" colspan="5">Aplication</td>
  			</tr>
  			<tr>
  				<td class="header-left">Path</td>
  			</tr>
  			<tr>
  				<td>cc</td>
  				<td></td>
  				<td></td>
  				<td></td>
  				<td></td>
  				<td></td>
  				<td></td>
  				<td></td>
  				<td></td>
  				<td></td>
  				<td></td>
  				<td></td>
  				<td></td>
  				<td></td>
  			</tr>
  			<tr><td>dd</td></tr>
  			<tr><td>ee</td></tr>
  			<tr><td>ff</td></tr>
  			<tr><td>gg</td></tr>
  		</tbody>
  </table> -->
  <table cellspacing="0" cellpadding="3" border="1">
  	<tbody>
  			<tr height="50">
     		 	<!-- <td width="80">姓名</td>
     		 	<td width="80">部门</td>
     		 	<td width="80">IP</td>
     		 	<td>内邮</td>
     		 	<td>外邮</td>
     		 	<td>邮箱密码</td>
     		 	<td>开机密码</td>
     		 	<td>锁屏密码</td>
     		 	<td>249帐号</td>
     		 	<td>249密码</td>
     		 	<td>是否域用户</td>
     		 	<td>域用户名</td>
     		 	<td>创建时间</td>
     		 	<td>最近修改时间</td>
     		 	<td>修改</td> -->
     		 </tr>
  	</tbody>
  </table>
    <%
    	List<Staff> listStaff = (ArrayList) request.getAttribute("listStaff");
    	Map<Integer,Staff> mapStaff = new HashMap<Integer,Staff>();
    	int a[] = new int[listStaff.size()];
    	if(listStaff.size() >= 2) {
    		for(int i = 0; i < listStaff.size(); i++) {
    			Staff s = listStaff.get(i);
    			String ip = s.getIp();
    			int position = ip.lastIndexOf('.');
    			String finalIp = ip.substring(position+1);
    			if(finalIp == null || finalIp.equals("")) {
    				return;
    			}else {
    				int intIp = Integer.valueOf(finalIp);
    				a[i] = intIp;
    				mapStaff.put(intIp, s);
    			}
    			
    		}
    	}
    	for(int z = 0; z < a.length - 1; z ++) {
    		for(int y = 0; y < a.length - 1 - z; y ++) {
    			if(a[y] > a[y+1]) {
    				int temp = a[y];
    				a[y] = a[y+1];
    				a[y+1] = temp;
    			}
    		}
    	}
    	if(mapStaff.size() < 2) {
    	Iterator<Staff> iterator = listStaff.iterator();
    	while(iterator.hasNext()) {
     %>
     	<%-- <li><% %></li> --%>
     	<table cellspacing="0" border="1">
     		<%
     			Staff sf = (Staff) iterator.next();
     		 %>
     		<tr height="50">
     			<td><%=sf.getId() %></td>
     			<td width="80"><%=sf.getName() %></td>
     			<td width="80"><%=sf.getDepartment() %></td>
     			<td width="80"><form action="staff/updateStaffInfo.do" method="post"><input name="ip" type="submit" value="<%=sf.getIp() %>"></form></td>
     			<td colspan="2"><%=sf.getInMail() %></td>
     			<td colspan="2"><%=sf.getOutMail() %></td>
     			<td width="100px"><%=sf.getMailPassword() %></td>
     			<td width="100px"><%=sf.getStartUpPassword() %></td>
     			<td width="100px"><%=sf.getLockPassword() %></td>
     			<td><%=sf.getTwoFourNineN() %></td>
     			<td width="100px"><%=sf.getTwoFourNineP() %></td>
     			<td><%=sf.isWhetherYK() %></td>
     			<td><%=sf.getDomainName() %></td>
     			<td><%=sf.getCreateUserT() %></td>
     			<td><%=sf.getCreateUserT() %></td>
     		</tr>
     	</table>
     <%
     	} }
      %>
      <!-- ------------------------------------------------------ -->
      <div style="height: 50px;width: 100%; background-color: #ff00"></div>
      <table border="1" cellspacing="0">
      	<%if(mapStaff.size() > 1) { %>
      		<tr height="50">
      			<td>id</td>
     		 	<td width="80">姓名</td>
     		 	<td width="80">部门</td>
     		 	<td width="80">IP</td>
     		 	<td>内邮</td>
     		 	<td>外邮</td>
     		 	<td>邮箱密码</td>
     		 	<td>开机密码</td>
     		 	<td>锁屏密码</td>
     		 	<td>249帐号</td>
     		 	<td>249密码</td>
     		 	<td>是否域用户</td>
     		 	<td>域用户名</td>
     		 	<td>创建时间</td>
     		 	<td>最近修改时间</td>
     		 </tr><%} %>
      	<%
      		if(mapStaff.size() > 1) {
      		for(int w = 0; w < a.length; w ++) {
      	 %>
      	 		<tr>
      	 			<td><%=mapStaff.get(a[w]).getId() %></td>
      	 			<td><%=mapStaff.get(a[w]).getName() %></td>
      	 			<td><%=mapStaff.get(a[w]).getDepartment() %></td>
      	 			<td><form action="staff/updateStaffInfo.do" method="post"><input name="ip" type="submit" value="<%=mapStaff.get(a[w]).getIp() %>"></form></td>
      	 			<td><%=mapStaff.get(a[w]).getOutMail() %></td>
      	 			<td><%=mapStaff.get(a[w]).getInMail() %></td>
      	 			<td><%=mapStaff.get(a[w]).getMailPassword() %></td>
      	 			<td><%=mapStaff.get(a[w]).getStartUpPassword() %></td>
      	 			<td><%=mapStaff.get(a[w]).getLockPassword() %></td>
      	 			<td><%=mapStaff.get(a[w]).getTwoFourNineN() %></td>
      	 			<td><%=mapStaff.get(a[w]).getTwoFourNineP() %></td>
      	 			<td><%=mapStaff.get(a[w]).isWhetherYK() %></td>
      	 			<td><%=mapStaff.get(a[w]).getDomainName() %></td>
      	 			<td><%=mapStaff.get(a[w]).getCreateUserT() %></td>
      	 			<td><%=mapStaff.get(a[w]).getRecentlyAlterT() %></td>
      	 		</tr>
      	 <%} }%>
      </table>
      
  	<script type="text/javascript">
  		function a () {
  		
  		}
  	
  		var btn = document.getElementById('btn');
  		var obj = document.getElementById('myarticle');
  		var total_height = obj.scrollHeight;//文章总高度
  		var show_height = 300;//定义原始显示高度
  		if(total_height > show_height) {
  			btn.style.display = 'block';
  			btn.onclick = function() {
  				obj.style.height = total_height + 'px';
  				btn.style.display = 'none';
  			}
  		}
  	</script>
  </body>
</html>
