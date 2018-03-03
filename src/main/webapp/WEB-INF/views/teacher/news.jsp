<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html lang="en">
<head>
<meta charset="utf-8">
<title>Teacher Page</title>
<%
	pageContext.setAttribute("app_path",request.getContextPath());
%>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="${app_path }/assets_3/css/bootstrap.min.css" rel="stylesheet">
<link href="${app_path }/assets_3/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
        rel="stylesheet">
<link href="${app_path }/assets_3/css/font-awesome.css" rel="stylesheet">
<link href="${app_path }/assets_3/css/style.css" rel="stylesheet">
<link href="${app_path }/assets_3/css/pages/dashboard.css" rel="stylesheet">
<link href="${app_path }/my_css/student_news.css" rel="stylesheet" style="text/css">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span
                    class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span> </a><a class="brand" href="#">Teacher Online </a>
      <div class="nav-collapse">
        <ul class="nav pull-right">
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="icon-user"></i> ${username } <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">修改密码</a></li>
              <li><a href="${app_path }/login.jsp">退出登录</a></li>
            </ul>
          </li>
        </ul>
        <form class="navbar-search pull-right">
          <input type="text" class="search-query" placeholder="Search">
        </form>
      </div>
      <!--/.nav-collapse --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /navbar-inner --> 
</div>
<!-- /navbar -->
<div class="subnavbar">
  <div class="subnavbar-inner">
    <div class="container">
      <ul class="mainnav">
        <li><a href="${app_path }/teacher/home"><i class="icon-dashboard"></i><span>个人首页</span> </a> </li>
        <li><a href="${app_path }/teacher/email"><i class="icon-list-alt"></i><span>邮箱收件</span> </a> </li>
        <li><a href="${app_path }/teacher/message"><i class="icon-facetime-video"></i><span>通报消息</span> </a></li>
        <li><a href="${app_path }/teacher/record"><i class="icon-bar-chart"></i><span>出勤情况</span> </a> </li>
        <li class="active"><a href="#"><i class="icon-code"></i><span>校园相关</span> </a> </li>
      </ul>
    </div>
    <!-- /container --> 
  </div>
  <!-- /subnavbar-inner --> 
</div>
<div class="content">
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
<!-- /main -->
<div class="extra">
  <div class="extra-inner">
    <div class="container">
      <div class="row">
                    <div class="span3">
                        <h4>
                            About Free Admin Template</h4>
                        <ul>
                            <li><a href="javascript:;">by EGrappler</a></li>
                            <li><a href="javascript:;">Web Development Resources</a></li>
                            <li><a href="javascript:;">Responsive HTML5 Portfolio Templates</a></li>
                            <li><a href="javascript:;">Free Resources and Scripts</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Support</h4>
                        <ul>
                            <li><a href="javascript:;">Frequently Asked Questions</a></li>
                            <li><a href="javascript:;">Ask a Question</a></li>
                            <li><a href="javascript:;">Video Tutorial</a></li>
                            <li><a href="javascript:;">Feedback</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Something Legal</h4>
                        <ul>
                            <li><a href="javascript:;">Read License</a></li>
                            <li><a href="javascript:;">Terms of Use</a></li>
                            <li><a href="javascript:;">Privacy Policy</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Open Source jQuery Plugins</h4>
                        <ul>
                            <li><a href="">Open Source jQuery Plugins</a></li>
                            <li><a href="">HTML5 Responsive Tempaltes</a></li>
                            <li><a href="">Free Contact Form Plugin</a></li>
                            <li><a href="">Flat UI PSD</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /extra-inner --> 
</div>
<!-- /extra -->
<div class="footer">
  <div class="footer-inner">
    <div class="container">
      <div class="row">
        <div class="span12"> &copy; 2018 <a href="#"></a>. Graduation Project <a href="#" target="_blank" title="信息门户">信息门户</a> - More Information To <a href="http://www.wxc.edu.cn/" title="皖西学院" target="_blank">皖西学院</a></div>
        <!-- /span12 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /footer-inner --> 
</div>
<!-- /footer --> 
<!-- Le javascript
================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="${app_path }/assets_3/js/jquery-1.7.2.min.js"></script> 
<script src="${app_path }/assets_3/js/excanvas.min.js"></script> 
<script src="${app_path }/assets_3/js/chart.min.js" type="text/javascript"></script> 
<script src="${app_path }/assets_3/js/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="${app_path }/assets_3/js/full-calendar/fullcalendar.min.js"></script>
 
<script src="${app_path }/assets_3/js/base.js"></script> 
</body>
</html>
