<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	pageContext.setAttribute("app_path",request.getContextPath());
%>	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Title</title>
	<link rel="stylesheet" type="text/css" href="${app_path }/menu_static/bootstrap-3.3.4.css">
	<link rel="stylesheet" href="${app_path }/menu_static/style.css">
	<link rel="stylesheet" href="${app_path }/my_css/student_leave.css">
	<style type="text/css">
		html,body{
			height: 100%;
			background-color: #D8BFD8;
			background-size: 100% 100%;
		}
	</style>

</head>
<body>
<!-- 审批记录模态框 -->
	<div class="modal fade" tabindex="-1" role="dialog" id="myForm">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">审批记录</h4>
	      </div>
	      <div class="modal-body">
	        <table class="table table-striped table-hover" id="lista">
			  <thead>
			  	<tr>
			  		<td>日期</td>
			  		<td>描述</td>
			  		<td>结果</td>
			  	</tr>
			  </thead>
			  <tbody>
			  </tbody>
			</table>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
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
                    <a href="#"><i class="fa fa-fw fa-file-o"></i> 在线请假 </a>
                </li>
                <li>
                    <a href="${app_path }/settings"><i class="fa fa-fw fa-cog"></i> 用户设置 </a>
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
                        <h3 class="page-header">在线请假</h3>  
                    </div>
                </div>
                <div class="row">
                	<div class="col-sm-offset-8 col-sm-2">
				      <button type="button" class="btn btn-info" id="list">
				      	<span class="glyphicon glyphicon-list-alt" aria-hidden="true">
				      	</span> 审批记录
				      </button>
				    </div>
                </div>
                <form class="form-horizontal" id="myform" style="margin-top:30px">
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label" style="font-size:110%;color:white">请假类型</label>
				    <div class="col-sm-8">
				      <select class="select" name="leaveType" id="leaveType" style="width:750px;height:36px;border-radius:5px">
				      	<option value="病假">病假</option>
				      	<option value="事假">事假</option>
				      	<option value="婚假">婚假</option>
				      	<option value="丧假">丧假</option>
				      </select>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label" style="font-size:110%;color:white">起始时间</label>
				    <div class="col-sm-8">
				      <input type="date" class="form-control" id="startTime" name="startTime">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label" style="font-size:110%;color:white">结束时间</label>
				    <div class="col-sm-8">
				      <input type="date" class="form-control" id="endTime" name="endTime">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label" style="font-size:110%;color:white">请假描述</label>
				    <div class="col-sm-8">
				    	<textarea class="form-control" rows="3"  id="leaveDesc" name="leaveDesc"></textarea>
				    </div>
				  </div>	  
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-8">
				      <button type="submit" class="btn btn-default" id="send">提交</button>
				    </div>
				  </div>
				</form>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->
	
	<script src="${app_path }/menu_static/jquery-1.10.2.js.下载"></script><script src="${app_path }/menu_static/jquery.min.js(1).下载"></script>
	<script src="${app_path }/menu_static/bootstrap-3.3.4.js.下载"></script><script src="${app_path }/menu_static/bootstrap.min.js.下载"></script>
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
			var number = '${number}'
			var username = '${username}'
			console.log(number)
			console.log(username)
		})
		
		$('#send').click(function(){
			var number = "${number}"
			var name = "${username}"
			var leaveType = $("#leaveType option:selected").text()
			var startTime = $("#startTime").val()
			var endTime = $("#endTime").val()
			var leaveDesc = $("#leaveDesc").val()
			
			console.log(number + name + leaveType + startTime + endTime + leaveDesc)
			$.ajax({
				url : '${app_path}/student/sendLeave',
				type : 'POST',
				data : $('#myform').serialize()+'&name=${username}&status=0&number='+number,
				success : function(res){
					console.log(res)
					if(res.code == 100){
						alert('申请成功！')
						form_reset();
					}else{
						alert('请重试！')
					}
				}
			})
			return false;
		})
		
		function form_reset(){
			$("#startTime").val('')
			$("#endTime").val('')
			$("#leaveDesc").val('')
		}
		
		$("#list").click(function(){
			var number = "${number}"
			$("#lista tbody").empty()
			getCheckList(number)
			$("#myForm").modal("show")
		})
		
		function getCheckList(number){
			$.ajax({
				url : '${app_path}/findCheckedLeave',
				type : 'POST',
				data : 'number='+number,
				success : function(res){
					if(res.code == 100){
						var list = res.extend.list
						$.each(list,function(index,item){
							if(item.status == 0){
								item.status = '待审核'
							}else if(item.status == 1){
								item.status = '已通过'
							}else if(item.status == 2){
								item.status = '未通过'
							}
							$("<tr></tr>").append($("<td></td>").append(item.startTime))
	    					.append($("<td></td>").append(item.leaveDesc))
	    					.append($("<td></td>").append(item.status))
	    					.appendTo("#lista tbody");
						})
					}
				}
			})
		}
	</script>

</body></html>