																																																															$(document).ready(function(){
	
	$("input[name='par.userName']").blur(function(){
		
		if($("input[name='par.userName']").val().length<3 && $("input[name='par.userName']").val().length>=0){
			
			$("#nameError2").html("用户名长度不能小于3位数");
			
		}else{
			
			$("#nameError2").html("");
			
		}
		

		$.post("checkName",{"name":$("input[name='par.userName']").val()},function(result){
			
			if("true" == result){
				
				$("#nameError2").html("");
			}else{
				$("#nameError2").html("用户名不存在");
				$("#name").focus(); 
				
			}

		});

	});
	$("input[name='par.userPass']").blur(function(){
		if($("input[name='par.userPass']").val().length>=0 && $("input[name='par.userPass']").val().length<5){
			$("#passError").html("密码长度不能小于5位数");
			
		}else{
			
			$("#passError").html("");
		}
		
	});
	
})