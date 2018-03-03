<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Login Page</title>
<%
	pageContext.setAttribute("app_path", request.getContextPath());
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 
<meta name="description" content="">
<meta name="author" content="">
 -->

<!-- CSS -->
<link rel='stylesheet'
	href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/supersized.css">
<link rel="stylesheet" href="assets/css/style.css">
</head>

<body>

	<div class="page-container">
		<h1>考勤系统</h1>
		<form action="${app_path}/login" method="post">
			<input type="text" name="number" class="username"
				placeholder="Number">
			<div id="name_error"></div>
			<input type="password" name="password" class="password"
				placeholder="Password">
			<div id="pwd_error"></div>
			<button type="submit" id="login_btn">登陆</button>
			<div class="error">
				<span>+</span>
			</div>
		</form>
		<div class="connect">
			<p>Or connect with:</p>
			<p>
				<a class="facebook" href=""></a> <a class="twitter" href=""></a>
			</p>
		</div>
	</div>

	<!-- Javascript -->
	<script src="assets/js/jquery-1.8.2.min.js"></script>
	<script src="assets/js/supersized.3.2.7.min.js"></script>
	<script src="assets/js/supersized-init.js"></script>
	<script src="assets/js/scripts.js"></script>

	<script type="text/javascript">
	
		var code = 100;

		$(".username").change(function() {
			$("#name_error span").empty();
			var number = $(".username").val();
			$.ajax({
				url:"${app_path}/loginNumber",
				data:"number="+number,
				type:"GET",
				success:function(res){
					var msg = res.extend.errorNumMsg;
					if(msg != null){
						$("#name_error").append($("<span></span>").append(msg));
						code = 200;
					}else{
						code = 100;
					}
				}
			});		
		});
		
		$(".password").change(function(){
			$("#pwd_error span").empty();
			var number = $(".username").val();
			var password = $(".password").val();
			$.ajax({
				url:"${app_path}/loginPassword",
				data:"number="+number+"&password="+password,
				type:"GET",
				success:function(res){
					var msg = res.extend.errorPassMsg;
					if(msg != null){
						$("#pwd_error").append($("<span></span>").append(msg));
						code = 200;
					}else{
						code = 100;
					}
				}
			})
		});
		
		$("#login_btn").click(function(){
			if(code == 200)
				return false;
		})
	</script>

</body>

</html>