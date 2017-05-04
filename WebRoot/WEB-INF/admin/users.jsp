<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户管理</title>
    
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
  
  <div id="add-window" class="easy-add" style="width:200px;height:300px;text-align:center;padding-top:70px">
    管理员：<input type="text" name="userName" id="userName"/><br/>
    密     码：<input type="password" name="userPass" id="userPass"><br/><br/>
    <a id="addsub" href="#" class="easyui-linkbutton form-button">提交</a>	
  </div>
  
  <table id="userDatagrid" class="easyui-datagrid" style="width: 500px;height: 600px;" title="管理员信息" >
  </table>
  
  </body>
  <script type="text/javascript">
  
  	$(document).ready(function(){
  	
  		//添加弹框 
  		var addwin = $("#add-window").window({
  			title: '管理员添加', //
            width: 380,
            height: 400,
            top: ($(window).height() - 500) * 0.5,
            left: ($(window).width() - 500) * 0.5,
            shadow: true,
            modal: false,
            closed: true,
            minimizable: true,
            maximizable: true,
            collapsible: true
  		});
  		
  		var datagrid;
  		
  		datagrid = $("#userDatagrid").datagrid({
  		
  			// 像后台请求数据
  			url: 'getUserList.html',
    		method: 'POST',
  		
  			//分页的属性 
  			//pagination:true,
  			//pageSize: 10,
  			//pageList:[10, 20, 50],
	
  			columns:[[
  				{checkbox:true},
  				{field:"userId", title:'管理员id',width:100},
  				{field:"userName", title:'管理员',width:100}
  				//{field:"roleName",title:'管理员信息'}
  			]],
  			
  			toolbar:[
  				{text:"添加管理员",iconCls:"icon-add",handler:function(){
  					
  					addwin.window("open");
  					
  				}},
  				{text:"编辑管理员",iconCls:"icon-edit",handler:function(){
  					
  					//获取选中的数据行
  					var row = datagrid.datagrid("getSelections");
  					
  					//只选中了一行数据
  					if(row.length == 1){
  					
  						
  					
  					}else{
  					
  						alert("只能选择一行数据修改");
  					
  					}
  					
  					
  					console.info(row);
  					
  				}}, 
  				{text:"删除管理员",iconCls:"icon-remove",handler:function(){
  				
  				//获取选中的数据行
  				 var rows = $('#userDatagrid').datagrid('getSelections');
  				
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
                    dictids += rows[i].userId;
                }
                $.ajax({
                    url:'delectUser.html?aid='+dictids,
                    type:'POST',
                    success:function(data){
                    
                    if(true == data){
  					
  					//刷新datagrid数据
  					$("#userDatagrid").datagrid("reload");
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
        		
  				}}
  			]
  		});
  		
  		$("#addsub").click(function(){
  			
  			var userName = $("#userName").val();
  			var userPass = $("#userPass").val();
  			
  			
  			$.post("addUser.html",{'userName':userName,'userPass':userPass},function(data){
  				
  				if(true == data){
  					addwin.window("close");
  					
  					//刷新datagrid数据
  					$("#userDatagrid").datagrid("reload");
  				}
  				
  			});
  			
  		});
  		
  	});
  
  </script>  
</html>
