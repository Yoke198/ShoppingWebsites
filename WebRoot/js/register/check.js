$(document).ready(function(){
	/**
	 * 当表单提交时

	$("#sub").click(function(){
		if("" == $("input[name = 'par.userName']" ).val()){

			$("#nameError").html("用户名不能为空")
			
			return "";
		}else if($("input[name = 'par.userName']").val().length < 3){
			
			$("#nameError2").html("用户名长度不能小于3位数")
			return false;
			
		}else{
			
			$("#nameError").html("")
		}
		
		
		if("" == $("input[name = 'par.userPass']").val()){
			
			$("#passError").html("密码不能为空")
			
			return false;
		}else if($("input[name = 'par.userPass']]").val().length < 5){
			
			$("#passError").html("密码长度不能小于5位数");
			
			return false;
			
		}else{
			
			$("#passError").html("")
		}
		
		if($("input[name = 'par.userPass']]").val() != $("input[name = 'par.userPass2']]").val()){
			
			$("#passError2").html("两次密码不一致");
			
			return false;
		}else{
			
			$("#passError2").html("");
			
		}
		
		if("" == $("input[name = 'par.eamil']").val()){
			$("#emailError").html("邮箱不能为空");
			return false;
		}else{
			$("#emailError").html("");
		}
		
		var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		
		var email = $("input[name='par.email']").val();
		
		if(!reg.test(email)){
			
			$("#emailError").html("邮箱格式错误");
			
		}else{
			
			$("#emailError").html("");
			
		}		
		
	});	
	
	 */
	$("input[name='par.userName']").blur(function(){
		
			if($("input[name='par.userName']").val().length<3 && $("input[name='par.userName']").val().length>=0){
				
				$("#nameError2").html("用户名长度不能小于3位数");
				
			}else{
				
				$("#nameError2").html("");
				
			}
			$.post("checkName",{"name":$("input[name='par.userName']").val()},function(result){
				
				if("true" == result){
					
					$("#nameError").html("用户名已存在");
					$("#username").focus(); 
				}else{
					
					$("#nameError").html("");
				}

			});
		
	})
	//判断两次密码是否一致
	$("input[name='par.userPass']").blur(function(){
		
		if($("input[name='par.userPass']").val().length>=0 && $("input[name='par.userPass']").val().length<5){
			$("#passError").html("密码长度不能小于5个字符");
			
		}else{
			
			$("#passError").html("");
		}
		
		
		
	});
	$("input[name='par.userPass2']").blur(function(){
		
if($("input[name='par.userPass']").val() != $("input[name='par.userPass2']").val()){
			
			$("#passError2").html("两次密码不一致");
			
		}else{
			
			$("#passError2").html("");
			
		}
	})
	
	//验证邮箱格式
	$("input[name='par.email']").blur(function(){
		
		var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		
		var email = $("input[name='par.email']").val();
		
		if(!reg.test(email)){
			
			$("#emailError").html("邮箱格式错误");
			
		}else{
			
			$("#emailError").html("");
			
		}
		
	});
  		
})