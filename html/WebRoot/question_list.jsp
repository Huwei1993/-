<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'question_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<!-- <script>
			function is()
			{
			 if(document.getElementsByName('a1')[3].checked ==true)
			  alert("正确!");
			 else
			  alert("错误!");
			}
		</script> -->

  </head>
  
  <body>
<div>
	<div><h1>1.下列存取速度最快的是:</h1></div>
		<div>
			<input type=radio name=a1>A.软盘 
			<input type=radio name=a1>B.RAM 
			<input type=radio name=a1>C.硬盘 
			<input type=radio name=a1>D.Cache 
			<!-- <input type="button" value="确定" onclick="is();"/> -->
		</div>
</div>
  </body>
</html>
