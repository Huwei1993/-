<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>jsp练习</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/main-min.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body>
 <!--  系统头部 -->
 <div class="header">
    <div class="dl-title"><span class="">調查問卷</span></div>
   	<div class="dl-log">欢迎您，<span class="dl-log-user">XXX</span>
       	<a href="###" title="退出系统" class="dl-log-quit">[退出]</a>
 	</div>
 </div>
 
 <!-- 系统页面的征文 -->
 
 <div class= "content">
 		<div class = "dl-main-nav">
 			<div class = "dl-inform">
 				<div class ="dl-infrom-title"></div>
 			</div>
 		
 		<!-- 頂部導航 -->
 			 <ul id="J_Nav"  class="nav-list ks-clear">
		        <li class="nav-item dl-selected"><div class="nav-item-inner nav-storage">首页</div></li>
		        <li class="nav-item"><div class="nav-item-inner nav-inventory">搜索页</div></li>
		        <li class="nav-item"><div class="nav-item-inner nav-inventory">详情页</div></li>
		        <li class="nav-item"><div class="nav-item-inner nav-inventory">图表页</div></li>
		      </ul>
		</div>
		<ul id="J_NavContent" class="dl-tab-conten">
		
		</ul> 		
 </div>
 
<!--  系统页面的尾部信息 -->
 <div  style ="text-align:center" >
 	<p>
 		<a href ="index.jsp" > 百度</a>
 	</p>
 </div>
  
 
 <!-- script信息 -->
   	<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
 	<script type="text/javascript" src="assets/js/bui-min.js"></script>
    <script type="text/javascript" src="assets/js/config-min.js"></script>
  <script  type="text/javascript">	
  /* BUI.use('common/main',function(){
	  // 添加导航模块  按顺序对应导航菜单
	  var config =[{  /* 首页显示 */
		 /* id : 'form',
		  homePage : 'second',
		  
		  // 二级菜单的集合
		  menu : [{
			text :'欢迎页1',
			// 三级菜单
			
			items:[{id:'second', text:'欢迎页',href:'second.jsp',closeable: false}
			]
		  }]
	  },{  /* 用户管理模块*/
		  
	/*  },{ /* 图表模块 */
		  
	  /*}];
	  // 初始化主页菜单
	  new PageUtil.MainPage({
		  modulesConfig:config
	  });
  }); */
  
  BUI.use('common/main', function() {
		// 菜单模块，按顺序对应导航菜单
		var config = [{ /*首页展示*/
			id : 'form',
			homePage : 'index',
			// 二级菜单的集合
			menu : [{
				text : '欢迎页',
				// 三级菜单集合
				items : [
					{id:'index', text:'欢迎页', href:'second.jsp', closeable : false}
				]
			}, {
				text : '表单验证提交',
				// 三级菜单集合
				items : [
					{id:'index-1-1', text:'三级菜单-1-1', href:'index-1.html'},
					{id:'index-1-2', text:'三级菜单-1-2', href:'index-2.html'}
				]
			}, {
				text : '搜索显示',
				// 三级菜单集合
				items : [
					{id:'index-2-1', text:'三级菜单-2-1', href:'index-1.html'},
					{id:'index-2-2', text:'三级菜单-2-2', href:'index-2.html'}
				]
			}]
		}, { /*用户管理系统*/
			id : 'mysys',
			menu : [{
				text : '二级菜单',
				// 三级菜单集合
				items : [
					{id:'index-3-1', text:'三级菜单-1-1', href:'index-1.html'},
					{id:'index-3-2', text:'三级菜单-1-2', href:'index-2.html'}
				]
			}]
		}, { /*图表模块*/

		}];

		// 初始化主页菜单
		new PageUtil.MainPage({
			modulesConfig : config
		});
	});

</script>
  

  
  </body>
</html>
