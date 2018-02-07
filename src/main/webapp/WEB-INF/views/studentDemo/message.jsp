<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Student Page Info</title>
<%
	pageContext.setAttribute("app_path", request.getContextPath());
%>
<script type="text/javascript" src="${app_path}/static/jquery-1.10.2.js"></script>
<link href="${app_path }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${app_path }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="CoreUI - Open Source Bootstrap Admin Template">
<meta name="author" content="Łukasz Holeczek">
<meta name="keyword"
	content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,jQuery,CSS,HTML,RWD,Dashboard">
<link rel="shortcut icon" href="img/favicon.png">


<!-- Icons -->
<link href="${app_path} /assets_2/css/font-awesome.min.css" rel="stylesheet">
<link href="${app_path }/assets_2/css/simple-line-icons.css" rel="stylesheet">

<!-- Main styles for this application -->
<link href="${app_path }/assets_2/css/style.css" rel="stylesheet">
</head>

<body
	class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
	<header class="app-header navbar">
	<button class="navbar-toggler mobile-sidebar-toggler hidden-lg-up"
		type="button">☰</button>
	<img src="${app_path }/assets_2/img/1.png"></img>
	<ul class="nav navbar-nav ml-auto">
		<li class="nav-item hidden-md-down"><a class="nav-link" href="#"><i
				class="icon-bell"></i><span class="badge badge-pill badge-danger">5</span></a>
		</li>
		<li class="nav-item hidden-md-down"><a class="nav-link" href="#"><i
				class="icon-list"></i></a></li>
		<li class="nav-item hidden-md-down"><a class="nav-link" href="#"><i
				class="icon-location-pin"></i></a></li>
		<li class="nav-item dropdown"><a
			class="nav-link dropdown-toggle nav-link" data-toggle="dropdown"
			href="#" role="button" aria-haspopup="true" aria-expanded="false">
				<img src="${app_path }/assets_2/img/avatars/6.jpg" class="img-avatar"
				alt="admin@bootstrapmaster.com"> <span class="hidden-md-down">${username }</span>
		</a>
			<div class="dropdown-menu dropdown-menu-right">
				<div class="dropdown-header text-center">
					<strong>用户设置</strong>
				</div>
				<a class="dropdown-item" href="#"><i class="fa fa-user"></i>
					Profile</a> <a class="dropdown-item" href="#"><i
					class="fa fa-wrench"></i> ChangePwd</a> <a class="dropdown-item"
					href="#"><i class="fa fa-usd"></i> Payments<span
					class="badge badge-default">42</span></a> <a class="dropdown-item"
					href="#"><i class="fa fa-file"></i> Projects<span
					class="badge badge-primary">42</span></a>
				<div class="divider"></div>
				 <a class="dropdown-item" href="${app_path }/login.jsp"><i
					class="fa fa-lock"></i> 退出登录</a>
			</div>
		</li>
	</ul>
	</header>

	<div class="app-body">
		<div class="sidebar">
			<nav class="sidebar-nav">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link" href="#"><i
						class="icon-speedometer"></i> 信息门户</a></li>

				<li class="nav-title">操作</li>
				
				<li class="nav-item nav-dropdown"><a
					class="nav-link nav-dropdown-toggle" href="${app_path }/home"><i
						class="icon-puzzle"></i> 个人信息</a>
				</li>

				<li class="nav-item nav-dropdown">
				<a class="nav-link nav-dropdown-toggle" href="${app_path }/record"><i
						class="icon-star"></i> 出勤记录</a>
				</li>
				
				<li class="nav-item"><a class="nav-link" href="${app_path }/leave"><i
						class="icon-calculator"></i> 在线请假</a></li>
						
				<li class="nav-item"><a class="nav-link" href="${app_path }/message"><i
						class="icon-pie-chart"></i> 最新消息</a></li>
				<li class="divider"></li>
				<li class="nav-title">其他</li>
				<li class="nav-item nav-dropdown"><a
					class="nav-link nav-dropdown-toggle" href="${app_path }/news"><i
						class="icon-star"></i> 校园新闻</a>
			</nav>
		</div>

		<!-- Main content -->
		<main class="main"> <!-- Breadcrumb -->
		
		<div class="container">
  	 	<div class="row">
  	 		<h1>最新消息</h1>
		</div>
	</div>	
		</main>

		<aside class="aside-menu">
		<ul class="nav nav-tabs" role="tablist">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#timeline" role="tab"><i
					class="icon-list"></i></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#messages" role="tab"><i class="icon-speech"></i></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#settings" role="tab"><i class="icon-settings"></i></a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane active" id="timeline" role="tabpanel">
				<div
					class="callout m-0 py-h text-muted text-center bg-faded text-uppercase">
					<small><b>Today</b> </small>
				</div>
				<hr class="transparent mx-1 my-0">
				<div class="callout callout-warning m-0 py-1">
					<div class="avatar float-right">
						<img src="img/avatars/7.jpg" class="img-avatar"
							alt="admin@bootstrapmaster.com">
					</div>
					<div>
						Meeting with <strong>Lucas</strong>
					</div>
					<small class="text-muted mr-1"><i class="icon-calendar"></i>&nbsp;
						1 - 3pm</small> <small class="text-muted"><i
						class="icon-location-pin"></i>&nbsp; Palo Alto, CA</small>
				</div>
				<hr class="mx-1 my-0">
				<div class="callout callout-info m-0 py-1">
					<div class="avatar float-right">
						<img src="img/avatars/4.jpg" class="img-avatar"
							alt="admin@bootstrapmaster.com">
					</div>
					<div>
						Skype with <strong>Megan</strong>
					</div>
					<small class="text-muted mr-1"><i class="icon-calendar"></i>&nbsp;
						4 - 5pm</small> <small class="text-muted"><i
						class="icon-social-skype"></i>&nbsp; On-line</small>
				</div>
				<hr class="transparent mx-1 my-0">
				<div
					class="callout m-0 py-h text-muted text-center bg-faded text-uppercase">
					<small><b>Tomorrow</b> </small>
				</div>
				<hr class="transparent mx-1 my-0">
				<div class="callout callout-danger m-0 py-1">
					<div>
						New UI Project - <strong>deadline</strong>
					</div>
					<small class="text-muted mr-1"><i class="icon-calendar"></i>&nbsp;
						10 - 11pm</small> <small class="text-muted"><i class="icon-home"></i>&nbsp;
						creativeLabs HQ</small>
					<div class="avatars-stack mt-h">
						<div class="avatar avatar-xs">
							<img src="img/avatars/2.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com">
						</div>
						<div class="avatar avatar-xs">
							<img src="img/avatars/3.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com">
						</div>
						<div class="avatar avatar-xs">
							<img src="img/avatars/4.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com">
						</div>
						<div class="avatar avatar-xs">
							<img src="img/avatars/5.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com">
						</div>
						<div class="avatar avatar-xs">
							<img src="img/avatars/6.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com">
						</div>
					</div>
				</div>
				<hr class="mx-1 my-0">
				<div class="callout callout-success m-0 py-1">
					<div>
						<strong>#10 Startups.Garden</strong>Meetup
					</div>
					<small class="text-muted mr-1"><i class="icon-calendar"></i>&nbsp;
						1 - 3pm</small> <small class="text-muted"><i
						class="icon-location-pin"></i>&nbsp; Palo Alto, CA</small>
				</div>
				<hr class="mx-1 my-0">
				<div class="callout callout-primary m-0 py-1">
					<div>
						<strong>Team meeting</strong>
					</div>
					<small class="text-muted mr-1"><i class="icon-calendar"></i>&nbsp;
						4 - 6pm</small> <small class="text-muted"><i class="icon-home"></i>&nbsp;
						creativeLabs HQ</small>
					<div class="avatars-stack mt-h">
						<div class="avatar avatar-xs">
							<img src="img/avatars/2.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com">
						</div>
						<div class="avatar avatar-xs">
							<img src="img/avatars/3.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com">
						</div>
						<div class="avatar avatar-xs">
							<img src="img/avatars/4.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com">
						</div>
						<div class="avatar avatar-xs">
							<img src="img/avatars/5.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com">
						</div>
						<div class="avatar avatar-xs">
							<img src="img/avatars/6.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com">
						</div>
						<div class="avatar avatar-xs">
							<img src="img/avatars/7.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com">
						</div>
						<div class="avatar avatar-xs">
							<img src="img/avatars/8.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com">
						</div>
					</div>
				</div>
				<hr class="mx-1 my-0">
			</div>
			<div class="tab-pane p-1" id="messages" role="tabpanel">
				<div class="message">
					<div class="py-1 pb-3 mr-1 float-left">
						<div class="avatar">
							<img src="img/avatars/7.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com"> <span
								class="avatar-status badge-success"></span>
						</div>
					</div>
					<div>
						<small class="text-muted">Lukasz Holeczek</small> <small
							class="text-muted float-right mt-q">1:52 PM</small>
					</div>
					<div class="text-truncate font-weight-bold">Lorem ipsum dolor
						sit amet</div>
					<small class="text-muted">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
				</div>
				<hr>
				<div class="message">
					<div class="py-1 pb-3 mr-1 float-left">
						<div class="avatar">
							<img src="img/avatars/7.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com"> <span
								class="avatar-status badge-success"></span>
						</div>
					</div>
					<div>
						<small class="text-muted">Lukasz Holeczek</small> <small
							class="text-muted float-right mt-q">1:52 PM</small>
					</div>
					<div class="text-truncate font-weight-bold">Lorem ipsum dolor
						sit amet</div>
					<small class="text-muted">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
				</div>
				<hr>
				<div class="message">
					<div class="py-1 pb-3 mr-1 float-left">
						<div class="avatar">
							<img src="img/avatars/7.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com"> <span
								class="avatar-status badge-success"></span>
						</div>
					</div>
					<div>
						<small class="text-muted">Lukasz Holeczek</small> <small
							class="text-muted float-right mt-q">1:52 PM</small>
					</div>
					<div class="text-truncate font-weight-bold">Lorem ipsum dolor
						sit amet</div>
					<small class="text-muted">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
				</div>
				<hr>
				<div class="message">
					<div class="py-1 pb-3 mr-1 float-left">
						<div class="avatar">
							<img src="img/avatars/7.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com"> <span
								class="avatar-status badge-success"></span>
						</div>
					</div>
					<div>
						<small class="text-muted">Lukasz Holeczek</small> <small
							class="text-muted float-right mt-q">1:52 PM</small>
					</div>
					<div class="text-truncate font-weight-bold">Lorem ipsum dolor
						sit amet</div>
					<small class="text-muted">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
				</div>
				<hr>
				<div class="message">
					<div class="py-1 pb-3 mr-1 float-left">
						<div class="avatar">
							<img src="img/avatars/7.jpg" class="img-avatar"
								alt="admin@bootstrapmaster.com"> <span
								class="avatar-status badge-success"></span>
						</div>
					</div>
					<div>
						<small class="text-muted">Lukasz Holeczek</small> <small
							class="text-muted float-right mt-q">1:52 PM</small>
					</div>
					<div class="text-truncate font-weight-bold">Lorem ipsum dolor
						sit amet</div>
					<small class="text-muted">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
				</div>
			</div>
			<div class="tab-pane p-1" id="settings" role="tabpanel">
				<h6>Settings</h6>

				<div class="aside-options">
					<div class="clearfix mt-2">
						<small><b>Option 1</b> </small> <label
							class="switch switch-text switch-pill switch-success switch-sm float-right">
							<input type="checkbox" class="switch-input" checked=""> <span
							class="switch-label" data-on="On" data-off="Off"></span> <span
							class="switch-handle"></span>
						</label>
					</div>
					<div>
						<small class="text-muted">Lorem ipsum dolor sit amet,
							consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
							labore et dolore magna aliqua.</small>
					</div>
				</div>

				<div class="aside-options">
					<div class="clearfix mt-1">
						<small><b>Option 2</b> </small> <label
							class="switch switch-text switch-pill switch-success switch-sm float-right">
							<input type="checkbox" class="switch-input"> <span
							class="switch-label" data-on="On" data-off="Off"></span> <span
							class="switch-handle"></span>
						</label>
					</div>
					<div>
						<small class="text-muted">Lorem ipsum dolor sit amet,
							consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
							labore et dolore magna aliqua.</small>
					</div>
				</div>

				<div class="aside-options">
					<div class="clearfix mt-1">
						<small><b>Option 3</b> </small> <label
							class="switch switch-text switch-pill switch-success switch-sm float-right">
							<input type="checkbox" class="switch-input"> <span
							class="switch-label" data-on="On" data-off="Off"></span> <span
							class="switch-handle"></span>
						</label>
					</div>
				</div>

				<div class="aside-options">
					<div class="clearfix mt-1">
						<small><b>Option 4</b> </small> <label
							class="switch switch-text switch-pill switch-success switch-sm float-right">
							<input type="checkbox" class="switch-input" checked=""> <span
							class="switch-label" data-on="On" data-off="Off"></span> <span
							class="switch-handle"></span>
						</label>
					</div>
				</div>

				<hr>
				<h6>System Utilization</h6>

				<div class="text-uppercase mb-q mt-2">
					<small><b>CPU Usage</b> </small>
				</div>
				<div class="progress progress-xs">
					<div class="progress-bar bg-info" role="progressbar"
						style="width: 25%" aria-valuenow="25" aria-valuemin="0"
						aria-valuemax="100"></div>
				</div>
				<small class="text-muted">348 Processes. 1/4 Cores.</small>

				<div class="text-uppercase mb-q mt-h">
					<small><b>Memory Usage</b> </small>
				</div>
				<div class="progress progress-xs">
					<div class="progress-bar bg-warning" role="progressbar"
						style="width: 70%" aria-valuenow="70" aria-valuemin="0"
						aria-valuemax="100"></div>
				</div>
				<small class="text-muted">11444GB/16384MB</small>

				<div class="text-uppercase mb-q mt-h">
					<small><b>SSD 1 Usage</b> </small>
				</div>
				<div class="progress progress-xs">
					<div class="progress-bar bg-danger" role="progressbar"
						style="width: 95%" aria-valuenow="95" aria-valuemin="0"
						aria-valuemax="100"></div>
				</div>
				<small class="text-muted">243GB/256GB</small>

				<div class="text-uppercase mb-q mt-h">
					<small><b>SSD 2 Usage</b> </small>
				</div>
				<div class="progress progress-xs">
					<div class="progress-bar bg-success" role="progressbar"
						style="width: 10%" aria-valuenow="10" aria-valuemin="0"
						aria-valuemax="100"></div>
				</div>
				<small class="text-muted">25GB/256GB</small>
			</div>
		</div>
		</aside>


	</div>

	<footer class="app-footer"> <span class="float-right"> <a
		href="http://www.wxxy.com/" target="_blank" title="信息门户">信息门户</a>
		- Collect from <a href="http://www.wxc.edu.cn/" title="皖西学院"
		target="_blank">皖西学院</a>
	</span> </footer>

	<!-- Bootstrap and necessary plugins -->
	<script src="assets_2/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="assets_2/bower_components/tether/dist/js/tether.min.js"></script>
	<script
		src="assets_2/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="assets_2/bower_components/pace/pace.min.js"></script>

	<!-- Plugins and scripts required by all views -->
	<script src="assets_2/bower_components/chart.js/dist/Chart.min.js"></script>

	<!-- GenesisUI main scripts -->

	<script src="assets_2/js/app.js"></script>
</body>

</html>