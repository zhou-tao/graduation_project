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
	<link rel="stylesheet" href="${app_path }/menu_static/style.css">
	<link rel="stylesheet" type="text/css" href="${app_path}/my_css/student_home.css">
	<style type="text/css">
		html,body{
			height: 100%;
			background-color: #D8BFD8;
			background-size: 100% 100%;
		}
	</style>

</head>
<body>
	
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
                    <a href="#"><i class="fa fa-fw fa-home"></i> 个人首页</a>
                </li>
                <li>
                    <a href="${app_path }/record" class="option"><i class="fa fa-fw fa-folder"></i> 出勤记录 </a>
                </li>
                <li>
                    <a href="${app_path }/leave" class="option"><i class="fa fa-fw fa-file-o"></i> 在线请假 </a>
                </li>
                <li>
                    <a href="${app_path }/settings" class="option"><i class="fa fa-fw fa-cog"></i> 用户设置 </a>
                </li>
                <li>
                    <a href="${app_path }/news" class="option"><i class="fa fa-fw fa-twitter"></i> 校园新闻 </a>
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
          	<section id="option_content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <h3 class="page-header">个人首页</h3>  
                    </div>
                </div>
                <div class="row">
                	<div class="col-md-4 col-md-offset-2">
                		<h2 style="color:#339999">学籍信息表</h2>
                	</div>
                </div>
                <div class="row">
                	<div class="col-md-8 col-md-offset-2">
                		<table class="my_table">
               				<tr class="single_tr">
               					<th>姓名</th>
               					<td>
               						${username }
               					</td>
               				</tr>
               				<tr class="double_tr">
               					<th>学号</th>
               					<td id='number'></td>
               				</tr>
               				<tr class="single_tr">
               					<th>专业</th>
               					<td id='profession'></td>
               				</tr>
               				<tr class="double_tr">
               					<th>班级</th>
               					<td id='classNum'></td>
               				</tr>
               				<tr class="single_tr">
               					<th>院系</th>
               					<td id='department'></td>
               				</tr>
                		</table>
                	</div>
                </div>
            </div>
            </section>
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
		
		$(function(){
			var name = "${username}";
			$.ajax({
				url:"${app_path}/student_info",
				data:"name="+name,
				success:function(res){
					add_student_info(res);
				}
			});
		})
		
		function add_student_info(res){
			var number = res.extend.info.number;
			console.log(number);
			var classNum = res.extend.info.classNum;
			var profession = res.extend.info.profession;
			var department = res.extend.info.department;
			$("#number").append(number);
			$("#profession").append(profession);
			$("#classNum").append(classNum);
			$("#department").append(department);
		}
		
	</script>

</body></html>