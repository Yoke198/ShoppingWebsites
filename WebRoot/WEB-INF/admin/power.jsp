<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>权限管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link href="admin/css/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="admin/js/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="admin/js/themes/icon.css" />
    <script type="text/javascript" src="admin/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="admin/js/jquery.easyui.min.1.2.2.js"></script>

  </head>
  
  <body>
	<div class="easyui-panel">
		
		<ul class="easyui-tree">
		</ul>
	
	</div>
	
  </body>
 
   <script type="text/javascript">
  
  	$(document).ready(function(){
  	
  		$(".easyui-tree").tree({
  		
  			url: 'admin/getAuthTree.html',
    		method: 'POST',
    		//animate: true,
    		dnd:true,
  			checkbox: true,
  			
  			// 当数据加载成功的时候调用的方法 
  			onLoadSuccess:function(node,data){
  			
  				if(node){
  					$(".easyui-tree").tree('expandAll',node.target);
  					
  				}else{ //如果是第一次加载根节点
  					$(".easyui-tree").tree('expandAll');
  				}
  			}
  			
  		});
  		
  		
  	});
  
  </script>
  
</html>
























