<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!--<![endif]-->
<head>
<%
	pageContext.setAttribute("app_path", request.getContextPath());
%>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="" />
<meta name="author" content="" />
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
<title>Manager Page</title>
<!-- BOOTSTRAP CORE STYLE CSS -->
<link href="${app_path }/assets_4/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONT AWESOME CSS -->
<link href="${app_path }/assets_4/assets/css/font-awesome.min.css" rel="stylesheet" />
<!-- CUSTOM STYLE CSS -->
<link href="${app_path }/assets_4/assets/css/style.css" rel="stylesheet" />
<!-- Google	Fonts -->
<link href='http://fonts.googleapis.com/css?family=Nova+Flat'
	rel='stylesheet' type='text/css' />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css' />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-------------------------- add teacher modal ----------------------------------->
<div class="modal fade" tabindex="-1" role="dialog" id="add_teacher_modal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">New Teacher</h4>
	      </div>
	      <div class="modal-body">
<!---------------------------------- add form start ---------------------------------------->
	<form class="form-horizontal">
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchName" placeholder="name">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">教职工号</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchId" placeholder="2014013852">
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">院系</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="department" placeholder="信工学院">
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">专业</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="profession" placeholder="电子信息工程">
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">电话</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="profession" placeholder="18860402758">
	    </div>
	  </div>
	</form>
	<!-----------------------------form end-------------------------->
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button type="button" class="btn btn-primary">保存</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div>
<!-------------------------- add student modal -------------------------------------->
	<div class="modal fade" tabindex="-1" role="dialog" id="add_student_modal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">New Student</h4>
	      </div>
	      <div class="modal-body">
<!---------------------------------- add form start ---------------------------------------->
	<form class="form-horizontal">
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="stuName" placeholder="Tom">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">学号</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="stuId" placeholder="2014013852">
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">院系</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="department" placeholder="信工学院">
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">专业</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="profession" placeholder="电子信息工程">
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">班级</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="class" placeholder="1">
	    </div>
	  </div>
	   <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">辅导员</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="teacher" placeholder="Mike">
	    </div>
	  </div>
	</form>
	<!-----------------------------form end-------------------------->
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button type="button" class="btn btn-primary">保存</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div>
<!------------------------------ modal end ---------------------------------------->
	<div id="head">
		<div class="container">
			<div class="row">

				<div class="col-lg-4 col-md-4 col-sm-4">
					<a href="#"> <img src="${app_path }/assets_4/assets/img/logo.png" />
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 text-center">
					<img src="${app_path }/assets_4/assets/img/top-mouse.png " class="header-mid" />
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<h4>
						<span>Call:</span> 188-6040-2758
					</h4>
					<h4>
						<span>E-mail:</span> zhoutao_233@163.com
					</h4>
				</div>

			</div>
		</div>
	</div>
	<section>
	<div class="container">
		<div class="row noti-div">
			<div class="col-lg-3 col-md-3 col-sm-3  text-center">
				<a href="#" id="add_student_link">
					<div class="alert alert-danger">
						<i class="fa fa-user fa-4x"></i> <span class="label label-info">新生
							录入</span> <span class="label label-danger">@</span>
						<p>Register Student In This System Right Now</p>
					</div>
				</a>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3  text-center">
				<a href="#" id="add_teacher_link">
					<div class="alert alert-success">
						<i class="fa fa-folder-open-o fa-4x"></i> <span
							class="label label-warning">教职工录入</span> <span
							class="label label-success">@</span>
						<p>Register Teacher In This System Right Now</p>
					</div>
				</a>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3  text-center">
				<a href="admin-support-cat.html">
					<div class="alert alert-warning">
						<i class="fa fa-briefcase fa-4x"></i> <span
							class="label label-success">反馈 信息</span> <span
							class="label label-warning">@</span>
						<p>User Feedback Systems Use Information</p>
					</div>
				</a>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 text-center">
				<a href="${app_path }/users">
					<div class="alert alert-info">
						<i class="fa fa-recycle fa-4x"></i> <span
							class="label label-danger">用户 清单</span> <span
							class="label label-info">145</span>
						<p>The Total Number Of Registered Users</p>

					</div>
				</a>
			</div>
		</div>
	</div>
	</section>
	<section id="main">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 col-md-9 col-sm-9 alert alert-info">

				<h3 class=" text-center">发送系统信息</h3>
				<div class="hr-div">
					<hr />
				</div>
				<form>
					<div class="form-group col-lg-12 col-md-12 col-sm-12">
						<label>Please Write a Subject Line</label> <input type="text"
							class="form-control" required="required"
							placeholder="Enter Subject " />
					</div>
					<div class="form-group col-lg-12 col-md-12 col-sm-12">
						<label>Please Enter Notification Text</label>
						<textarea class="form-control" rows="14"
							placeholder="Enter Notification "></textarea>
					</div>

					<div class="form-group col-lg-12 col-md-12 col-sm-12">
						<button type="submit" class="btn btn-primary">发送至
							所有用户</button>
					</div>
				</form>

			</div>
			<div class="col-lg-3 col-md-3 col-sm-3">
				<a href="${app_path }/login.jsp" class=" label label-danger"><strong>退出登录
						</strong> </a>
				<div class="list-group">
					<a href="#" class="list-group-item active">Quick Links 
						</a> <a href="#" class="list-group-item">管理首页
						</a> <a href="#" class="list-group-item" id="add_stu_link">新生录入
						</a> <a href="#" class="list-group-item" id="add_tch_link">教职工录入
						</a> <a href="#" class="list-group-item">反馈信息
						</a> <a href="${app_path }/users" class="list-group-item">用户清单
						</a> <a href="#" class="list-group-item">修改密码
						</a>
				</div>
				<div class="alert alert-danger text-center">
					<h3>Import Information</h3>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla
					pretium lectus vel justo iaculis blandit.
				</div>

			</div>
		</div>
	</div>
	</section>
	<div id="footer">
		<div class="container">

			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4">
					<h3>Physical Location</h3>
					<p>
						<i>Addresss :</i> AnHui Luan<br /> China (CN)
						 <br /> &copy; 2018 | Graduation Project
						<a href="#" target="_blank" title="模板之家">信息门户</a>
						- More Information To <a href="http://www.wxc.edu.cn/" title="皖西学院"
							target="_blank">皖西学院</a>

					</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<h3>Get Quick Help</h3>
					<h4>
						<span>Call: </span>188-6040-2758
					</h4>
					<h4>
						<span>E-mail: </span>zhoutao_233@163.com
					</h4>
					<h4>
						<span>Skype:</span> sonasup
					</h4>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">

					<h3>Subscribe For Updates</h3>
					<form>

						<div class="form-group">
							<input type="text" class="form-control" required="required"
								placeholder="Your Email" />
						</div>


						<div class="form-group">
							<button type="submit" class="btn btn-danger">Click To
								Subscribe</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--  Jquery Core Script -->
	<script src="${app_path }/assets_4/assets/js/jquery-1.10.2.js"></script>
	<!--  Core Bootstrap Script -->
	<script src="${app_path }/assets_4/assets/js/bootstrap.js"></script>
	
	<script type="text/javascript">
	
		$("#add_student_link").click(function(){
			$("#add_student_modal").modal("show");
		});
		
		$("#add_stu_link").click(function(){
			$("#add_student_modal").modal("show");
		});
		
		$("#add_teacher_link").click(function(){
			$("#add_teacher_modal").modal("show");
		});
		
		$("#add_tch_link").click(function(){
			$("#add_teacher_modal").modal("show");
		});
	</script>

</body>
</html>
