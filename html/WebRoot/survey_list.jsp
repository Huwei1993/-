<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>问卷列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<style type="text/css">
	    table{
	        border:1px solid;
	        width:300px;
	        height:30px;
	
	}

</style>
  </head>
  <!-- 问卷列表 -->
  <body>
  	<div>
  		<h2 > 问卷列表 </h2>
  	</div>
  	<div><table border="1"  width=500px align="center" height = 200px cellspacing=0  bordercolor=#FBBF00>  
 	<tr align="center">
 		<td colspan=6>PPT安排</td>
 	</tr>  
 	<tr align="center"><td colspan=3>上集</td>
 						<td colspan=3>下集</td>
 	</tr>  
 	<tr align="center"><td>第一张</td><td>第二张</td><td>第三张</td><td>第一张</td><td>第二张</td><td><img src='g://PPT背景//花生酱.jpg'   
	 width=100px height = 100px/></td></tr>  
 	<tr align="center"><td>第四张</td><td>第五张</td><td>第六张</td><td>第四张</td><td>第五张</td><td><img src='g://PPT背景//1.jpg'   
 	width=100px height = 100px/></td></tr>  
 	</table>  
  	</div>
   
  </body>
</html>
