<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0051)http://www.jq22.com/demo/Bootstrap3Nav201703142259/ -->
<html lang="zh"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	pageContext.setAttribute("app_path",request.getContextPath());
%>	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Title</title>
	<link rel="stylesheet" type="text/css" href="${app_path }/menu_static/bootstrap-3.3.4.css">
	<link rel="stylesheet" href="${app_path }/menu_static//style.css">

</head>
<body style="">
	
	<div id="wrapper" class="">
        <div class="overlay" style="display: none;"></div>
    
        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                       	${username }
                    </a>
                </li>
                <li>
                    <a href="${app_path }/home"><i class="fa fa-fw fa-home"></i> 个人首页</a>
                </li>
                <li>
                    <a href="${app_path }/record"><i class="fa fa-fw fa-folder"></i> 出勤记录 </a>
                </li>
                <li>
                    <a href="${app_path }/leave"><i class="fa fa-fw fa-file-o"></i> 在线请假 </a>
                </li>
                <li>
                    <a href="${app_path }/settings"><i class="fa fa-fw fa-cog"></i> 用户设置 </a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-dropbox"></i> 最新消息 </a>
                </li>
                <li>
                    <a href="${app_path }/news"><i class="fa fa-fw fa-twitter"></i> 校园新闻 </a>
                </li>
                <li>
                    <a href="${app_path }/login.jsp"><i class="fa fa-fw fa-twitter"></i> 退出登录</a>
                </li>
            </ul>
        </nav>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
          <button type="button" class="hamburger animated fadeInLeft is-closed" data-toggle="offcanvas">
            <span class="hamb-top"></span>
            <span class="hamb-middle"></span>
            <span class="hamb-bottom"></span>
          </button>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <h1 class="page-header">最新消息</h1>  
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->
	
	<script src="${app_path }/menu_static//jquery-1.10.2.js.下载"></script><script src="${app_path }/menu_static//jquery.min.js(1).下载"></script>
	<script src="${app_path }/menu_static//bootstrap-3.3.4.js.下载"></script><script src="${app_path }/menu_static//bootstrap.min.js.下载"></script>
	<script type="text/javascript">
		$(document).ready(function () {
		  var trigger = $('.hamburger'),
		      overlay = $('.overlay'),
		     isClosed = false;

		    trigger.click(function () {
		      hamburger_cross();      
		    });

		    function hamburger_cross() {

		      if (isClosed == true) {          
		        overlay.hide();
		        trigger.removeClass('is-open');
		        trigger.addClass('is-closed');
		        isClosed = false;
		      } else {   
		        overlay.show();
		        trigger.removeClass('is-closed');
		        trigger.addClass('is-open');
		        isClosed = true;
		      }
		  }
		  
		  $('[data-toggle="offcanvas"]').click(function () {
		        $('#wrapper').toggleClass('toggled');
		  });  
		});
	</script>

</body></html>