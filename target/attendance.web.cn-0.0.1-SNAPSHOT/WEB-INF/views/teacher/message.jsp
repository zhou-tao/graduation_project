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
        <li><a href="${app_path }/teacher/email"><i class="icon-list-alt"></i><span>考勤录入</span> </a> </li>
        <li class="active"><a href="#"><i class="icon-facetime-video"></i><span>假条审批</span> </a></li>
        <li><a href="${app_path }/teacher/record"><i class="icon-bar-chart"></i><span>出勤情况</span> </a> </li>
        <li><a href="${app_path }/teacher/news"><i class="icon-code"></i><span>校园相关</span> </a> </li>
      </ul>
    </div>
    <!-- /container --> 
  </div>
  <!-- /subnavbar-inner --> 
</div>
<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
      	<!-- body -->
      	<div class="col-md-6 col-md-offset-4">
	  		<table class="table table-striped table-hover" id='list'>
  				<thead>
  					<tr>
  						<th>姓名</th>
  						<th>学号</th>
  						<th>类型</th>
  						<th>描述</th>
  						<th>开始时间</th>
  						<th>结束时间</th>
  						<th>审批</th>
  					</tr>
  				</thead>
  				<tbody>
  				</tbody>
			</table>
		</div>
      </div>
    </div>
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
<script type="text/javascript">
	$(function(){
		findLeaveList();
	})
	
	function findLeaveList(){
		$.ajax({
			url : '${app_path}/teacher/findLeaveList',
			type : 'POST',
			success : function(res){
				console.log(res)
				var list = res.extend.list
				$.each(list,function(index,item){
					var YesBtn = $("<button></button>")
									.addClass("btn btn-info btn-sm yes_btn")
									.append($("<span></span>")
									.addClass("glyphicon glyphicon-ok"))
									.append("√")
					YesBtn.attr("id",item.id);
					var NoBtn = $("<button></button>")
									.addClass("btn btn-danger btn-sm no_btn")
									.append($("<span></span>")
									.addClass("glyphicon glyphicon-remove"))
									.append("X")
					NoBtn.attr("id",item.id);
					$("<tr></tr>").append($("<td></td>").append(item.name))
					.append($("<td></td>").append(item.number))
					.append($("<td></td>").append(item.leaveType))
					.append($("<td></td>").append(item.leaveDesc))
					.append($("<td></td>").append(item.startTime))
					.append($("<td></td>").append(item.endTime))
					.append($("<td></td>").append(YesBtn).append(' ').append(NoBtn))
					.appendTo("#list tbody");
				})
			}
		})
	}
	
	//审核通过
	$(document).on("click",".yes_btn",function(){
		var id = $(this).attr("id")
		$.ajax({
			url : '${app_path}/teacher/checkLeave',
			type : 'POST',
			dataType : 'json',
			data : "id="+id+"&status=1",
			success : function(res){
				console.log(res)
				if(res.code == 100){
					alert('审批成功！')
					$('#list tbody').empty()
					findLeaveList();
				}else{
					alert('请重试！')
				}
			}
		})
	})
	
	//不通过
	$(document).on("click",".no_btn",function(){
		var id = $(this).attr("id")
		var name = $(this).parents("tr").find("td:eq(0)").text();
		if(confirm('确定不通过 [ ' + name + ' ] 同学的请假申请吗？')){
			$.ajax({
				url : '${app_path}/teacher/checkLeave',
				type : 'POST',
				dataType : 'json',
				data : "id="+id+"&status=2",
				success : function(res){
					console.log(res)
					if(res.code == 100){
						$('#list tbody').empty()
						findLeaveList();
					}else{
						alert('请重试！')
					}
				}
			})
		}
	})
</script> 
</body>
</html>
