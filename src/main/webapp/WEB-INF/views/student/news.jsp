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
	<link rel="stylesheet" href="${app_path }/my_css/student_news.css">

</head>
<body style="">
	
	<div id="wrapper" class="">
        <div class="overlay" style="display: none;"></div>
    
        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                       	操作
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
                    <a href="${app_path }/message"><i class="fa fa-fw fa-dropbox"></i> 最新消息 </a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-twitter"></i> 校园新闻 </a>
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
                        <h3 class="page-header">校园新闻</h3>  
                    </div>
                </div>
                <div class="header">
                	<h2>校领导除夕看望慰问春节期间坚守一线的工作人员</h2>
                </div>
                <div class="content">
                	<p>2月15日，正值除夕之际，校党委副书记卢义忠看望慰问节日期间坚守工作一线的工作人员，并送去节日的慰问。后勤服务总公司副总经理王宁及相关同志陪同看望慰问。</p>
                	<p>卢义忠先后走访了明德楼、逸夫楼、校园环卫、学生公寓等处。</p>
                	<p class="image">
                		<img alt="" src="${app_path }/my_img/574be2f7-ed32-470c-b2fe-2d4803a0f270.jpg">
                	</p>
                	<p>每到一处，卢义忠与坚守岗位的工作人员亲切握手交流，详细询问他们日常工作情况和生活状况，代表学校向工作人员及家人表示节日的问候和祝福，对他们为了校园的安全和全校教职员工过上一个祥和幸福的春节而放弃节假日坚持工作的精神表示感谢。</p>
                	<p class="image">
                		<img alt="" src="${app_path }/my_img/80ac0e44-1938-4856-8d04-e4b30304a22a.jpg">
                	</p>
                	<p>临行前，校领导再三叮嘱工作人员务必要安排好春节期间的工作和生活。</p>
                	<p class="image">
                		<img alt="" src="${app_path }/my_img/b8d56475-38ff-4106-8edf-942eb5d90e2c.jpg">
                	</p>
                	<p>据悉，春节期间，我校后勤服务总公司、明德物业公司和大众物业公司有近100名工作人员坚守在一线岗位上。</p>
                	<p class="image">
                		<img alt="" src="${app_path }/my_img/999114fc-22b3-4989-a1c3-6364dde6e748.jpg">
                	</p>
                	<p class="foot"><a href="http://www.wxc.edu.cn/4/list.htm" class="more">点我获取更多新闻...</a></p>
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