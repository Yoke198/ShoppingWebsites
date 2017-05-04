<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>角色管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
    <link href="css/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="js/themes/icon.css" />
    <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.1.2.2.js"></script>
  </head>
  
  <body>
  
  <div id="add-window" class="easy-add" style="width:200px;height:300px;text-align:center;padding-top:70px,">
    角色：<input type="text" name="userName" id="userName"/><br/>
    描述：<input type="text" name="userPass" id="userPass"><br/><br/>
		权限选择：	<br/>
		
			<div class="easyui-panel" style="width: 250px;height: 300px;" >
				 <ul class="easyui-tree" id="authTree"></ul>
			</div>    
    
    <a id="addsub" href="#" class="easyui-linkbutton form-button">提交</a>	
  </div>
  
	<div id="add-users-window" title="绑定用户">
	
		<table id="userDatagrid" class="easyui-datagrid" style="width: 250px;height: 330px;"></table>
		
		<a href="#" class="easyui-linkbutton" id="yes">确定</a>
	</div>
  
  <table id="roleDatagrid" class="easyui-datagrid" style="width: 400px;height: 300px;" title="角色信息" >
  </table>
  
  </body>
  <script type="text/javascript">
  
  	$(document).ready(function(){
  	
  		//添加弹框 
  		var addrolewin = $("#add-window").window({
  			title: '添加角色', //
            width: 380,
            height: 450,
            top: ($(window).height() - 500) * 0.5,
            left: ($(window).width() - 500) * 0.5,
            shadow: true,
            modal: false,
            closed: true,
            minimizable: true,
            maximizable: true,
            collapsible: true
  		});
  		
  		//添加绑定用户弹框 
  		var addwin = $("#add-users-window").window({
  			title: '绑定用户', //
            width: 380,
            height: 400,
            top: ($(window).height() - 330) * 0.67,
            left: ($(window).width() - 380) * 0.015,
            shadow: true,
            modal: false,
            closed: true,
            minimizable: true,
            maximizable: true,
            collapsible: true
  		});  		
  		
  		var datagrid;
  		var userdatagrid;
  		datagrid = $("#roleDatagrid").datagrid({
  		
  			// 像后台请求数据
  			url: 'getRoleList.html',
    		method: 'POST',
  		
  			//分页的属性 
  			//pagination:true,
  			//pageSize: 5,
  			//pageList:[5, 10, 15],
			//rownumbers:true,
  			columns:[[
  				{checkbox:true},
  				{field:"rid", title:'角色id',width:100},
  				{field:"roleName", title:'角色',width:100},
  				{field:"roleDesc",title:'角色信息',width:150}
  			]],
  			
  			toolbar:[
  				{text:"添加角色",iconCls:"icon-add",handler:function(){
  					
  					addrolewin.window("open");
  					
  				}},
  				{text:"编辑角色",iconCls:"icon-edit",handler:function(){
  					
  					//获取选中的数据行
  					var row = datagrid.datagrid("getSelections");
  					
  					//只选中了一行数据
  					if(row.length == 1){
  					
  						
  					
  					}else{
  					
  						alert("只能选择一行数据修改");
  					
  					}
  					
  					
  					console.info(row);
  					
  				}}, 
  				{text:"删除角色",iconCls:"icon-remove",handler:function(){
  				
  				//获取选中的数据行
  				 var rows = $('#roleDatagrid').datagrid('getSelections');
  				
    if(rows.length == 0){
            $.messager.alert('警告', '请至少选择一条记录!', 'warning');
            return;
        }        
   
        $.messager.confirm("操作提示", "您确定要删除这些字典吗？", function (data) {
            if(data){
            
                var dictids='';
                for(var i=0;i<rows.length;i++){
                    if(i>0){
                        dictids += ",";
                    
                    }
                    dictids += rows[i].rid;
                }
                $.ajax({
                    url:'delectRole.html?aid='+dictids,
                    type:'POST',
                    success:function(data){
                    
                    if(true == data){
  					
  					//刷新datagrid数据
  					$("#roleDatagrid").datagrid("reload");
  						}
                        data = toJson(data);
                        if(data.flag == 0){
                            $("#datagrid").datagrid('reload');
                        }else{
                            $.messager.alert('错误', data.flag, 'error');
                        }
                    },
                    error:function(){
                        $.messager.alert('错误', '操作失败!', 'error');
                    }
                });
            }
        });   
        		
  				}},
  				{text:"绑定用户",iconCls:"icon-add",handler:function(){
  				
  					var row = $('#roleDatagrid').datagrid('getSelections');
  					//只选中了一条角色信息
  					if(null != row && row.length == 1){
  					
  					
						userdatagrid = $("#userDatagrid").datagrid({
				
				  			// 像后台请求数据
				  			url: 'getUserList.html',
				  			
				  			columns:[[
				  				{checkbox:true},
				  				{field:"userId", title:'管理员id',width:100},
  								{field:"userName", title:'管理员',width:100}
				  			]]
				  		});
				  		
				  		addwin.window("open");
  					
  					}else{
  						alert("请选择一条记录");
  					}
  					
  					
  				
  				}}
  			]
  		});
  		
  		$("#addsub").click(function(){
  			
  			var userName = $("#userName").val();
  			var userPass = $("#userPass").val();
  			
  			
  			$.post("addRole.html",{'userName':userName,'userPass':userPass},function(data){
  				
  				if(true == data){
  					addrolewin.window("close");
  					//刷新datagrid数据
  					$("#roleDatagrid").datagrid("reload");
  				}
  				
  			});
  			
  		});
  		//要选中  文本为 yes的 a标签 
  		$("#yes").click(function(){
  		
  			var urow = userdatagrid.datagrid("getSelections");//选中的用户
  			var row = datagrid.datagrid("getSelections");//选中的角色
  			
  			if(urow.length > 0){
  			
  				var userids = ""; // 用户ids
  				var roleid = row[0].rid;  //角色id
  				
  				for(var i = 0 ; i < urow.length ; i++){
  					userids += urow[i].userId + ",";
  				}
  				
  				$.post("roleAddUser.html",{'rid':roleid,'userids':userids},function(data){
  					
  					alert("添加成功");
  					addwin.window("close");
  				});
  			}
  			
  		});
  			
  		  		//权限树 
  		$(".easyui-tree").tree({
  		
  			url: 'getAuthTree.html',
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
