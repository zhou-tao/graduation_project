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
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span
                    class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span> </a><a class="brand" href="#">教师系统 </a>
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
        <li class="active"><a href="#"><i class="icon-list-alt"></i><span>考勤录入</span> </a> </li>
        <li><a href="${app_path }/teacher/message"><i class="icon-facetime-video"></i><span>假条审批</span> </a></li>
        <li><a href="${app_path }/teacher/record"><i class="icon-bar-chart"></i><span>出勤情况</span> </a> </li>
        <li><a href="${app_path }/teacher/news"><i class="icon-code"></i><span>校园相关</span> </a> </li>
      </ul>
    </div>
    <!-- /container --> 
  </div>
  <!-- /subnavbar-inner --> 
</div>
<!-- /main -->
<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
      	<!-- body -->
      	<div class="col-md-6 col-md-offset-4">
	  		<form id='myForm'>
	  		  
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label" style="font-size:120%;margin-left:400px">姓名</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="name" style="height:35px;width:400px;margin-left:400px">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label" style="font-size:120%;margin-left:400px">学号</label>
			    <div class="col-sm-10">
			      <input type="number" class="form-control" name="number" style="height:35px;width:400px;margin-left:400px">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label" style="font-size:120%;margin-left:400px">时间</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',realFullFmt:'%Date %Time',readOnly:true})" name="recordTime" style="height:35px;width:400px;margin-left:400px">
			    </div>
			  </div>
			 <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label" style="font-size:120%;margin-left:400px">描述</label>
			    <div class="col-sm-10">
			      <textarea class="form-control" name="recordDesc" rows="3" style="height:70px;width:400px;margin-left:400px"></textarea>
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-success submit" style="height:35px;width:120px;margin-left:540px">提交</button>
			    </div>
			  </div>
			  <span class='errorMsg'></span>
			</form>
		</div>
      </div>
    </div>
  </div>
</div>
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
 <script type="text/JavaScript" src="${app_path }/My97DatePicker/WdatePicker.js"></script>  
<script src="${app_path }/assets_3/js/base.js"></script>
<script type="text/javascript">
	$('.submit').click(function(){
		var name = $('#name').val()
		var number = $('#number').val()
		var time = $('#time').val()
		var desc = $('#desc').val()
		var sendName = '${username}'
		if(name.trim() == '' || number == '' || time == '' || desc == ''){
			$('#errorMsg').append('请补全考勤录入信息后提交！')
			return false;
		}
		$.ajax({
			url: '${app_path}/teacher/attendance',
			type : 'POST',
			dataType : 'json',
			data : $('#myForm').serialize()+'&recordName=${username}',
			success : function(res){
				console.log(res)
				if(res.code == 100){
					alert('提交成功！')
				}else{
					alert('请重试！')
				}
			}
		})
	})
</script> 
</body>
</html>
