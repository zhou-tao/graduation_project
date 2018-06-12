<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<%
	pageContext.setAttribute("app_path", request.getContextPath());
%>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Support Admin</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="${app_path }/assets_4/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME CSS -->
    <link href="${app_path }/assets_4/assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="${app_path }/assets_4/assets/css/style.css" rel="stylesheet" />
    <!-- Google	Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Nova+Flat' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css' />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- ----------------------- edit student modal ------------------------------------------>
<div class="modal fade" tabindex="-1" role="dialog" id="edit_student_modal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">Edit Student</h4>
	      </div>
	      <div class="modal-body">
	   <!--------------------- edit form start ------------------------------------------->
	    	<form class="form-horizontal">
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="stuName_e" placeholder="Tom" name='name'>
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">学号</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="stuId_e" placeholder="2014013852" name='number' readonly>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">院系</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="stuDept_e" placeholder="信工学院" name='department'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">专业</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="profession_e" placeholder="电子信息工程" name='profession'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">班级</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="class_e" placeholder="1" name='classNum'>
	    </div>
	  </div>
	</form>
	    <!-- edit form end -->
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button type="button" class="btn btn-primary" id='save-change-student'>保存</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div>
<!--------------------------- edit teacher modal ---------------------------------->
<div class="modal fade" tabindex="-1" role="dialog" id="edit_teacher_modal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">Edit Student</h4>
	      </div>
	      <div class="modal-body">
	      <!------------------- edit teacher form start ----------------------------------->
	      <form class="form-horizontal" id='edit-teacher-form'>
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchName_e" placeholder="name" name='name'>
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">教职工号</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchId_e" placeholder="2014013852" name='number' readonly>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">专业</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchProfession_e" placeholder="电子信息工程" name='profession'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">班级</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchClass_e" placeholder="34" name='classNum'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">课程</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchCourse_e" placeholder="高数" name='course'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">电话</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchPhoneNum_e" placeholder="18860402758" name='tel'>
	    </div>
	  </div>
	</form>
	      <!-------------------- edit teacher form end  ----------------------------------->
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button type="button" class="btn btn-primary" id='save-change-teacher'>保存</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div>

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
	<form class="form-horizontal" id='add-teacher-form'>
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchName" placeholder="name" name='name'>
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">教职工号</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchId" placeholder="2014013852" name='number'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">专业</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchPro" placeholder="电子信息工程" name='profession'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">班级</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchCourse" placeholder="34" name='classNum'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">课程</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchCla" placeholder="高数" name='course'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">电话</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="tchPhoneNum" placeholder="18860402758" name='tel'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">密码</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="tchPassword" name='password'>
	    </div>
	  </div>
	</form>
	<!-----------------------------form end-------------------------->
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button type="button" class="btn btn-primary" id='add-teacher-btn'>保存</button>
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
	<form class="form-horizontal" id='add-student-form'>
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="stuName" placeholder="Tom" name='name'>
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">学号</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="stuId" placeholder="2014013852" name='number'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">院系</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="department" placeholder="信工学院" name='department'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">专业</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="profession" placeholder="电子信息工程" name='profession'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">班级</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="class" placeholder="1" name='classNum'>
	    </div>
	  </div>
	  <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">密码</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="password" name='password'>
	    </div>
	  </div>
	</form>
	<!-----------------------------form end-------------------------->
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button type="button" class="btn btn-primary" id='add-student-btn'>保存</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div>
<!------------------------------ modal end ---------------------------------------->
    <div id="head">
        <div class="container">
            <div class="row">

                <div class="col-lg-4 col-md-4 col-sm-4">
                    <a href="#">
                    <img src="${app_path }/assets_4/assets/img/logo.png"/>
                        </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 text-center" >
                     <img src="${app_path }/assets_4/assets/img/top-mouse.png "  class="header-mid" />
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <h4><span>联系电话:</span> 188-6040-2758</h4>
                    <h4><span>邮箱:</span> zhoutao_233@163.com</h4>
                </div>
                
            </div>
        </div>
    </div>    
    <section id="main">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-9 ">

                     <h3>All User List  
                     <select id='user-type'>
                     	<option value="student">学生</option>
                     	<option value="teacher">老师</option>
                     </select>
                     </h3>
                      <div class="hr-div"> <hr /></div>
                         <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="list">
                                    <thead>
                                        <tr>
                                            <th>编号</th>
                                            <th>姓名</th>
                                            <th>专业</th>
                                            <th>院系</th>
                                            <th>班级</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                            
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="teacher-list">
                                    <thead>
                                        <tr>
                                            <th>编号</th>
                                            <th>姓名</th>
                                            <th>专业</th>
                                            <th>班级</th>
                                            <th>课程</th>
                                            <th>电话</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                            
                       <div class="pageNav"></div>
                       
                     <div class="pageDesc">
                     </div>

                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <a href="${app_path }/login.jsp" class=" label label-danger"><strong>退出登录</strong> </a>
                    <div class="list-group">
					<a href="#" class="list-group-item active">Quick Links 
						</a> <a href="${app_path }/manager" class="list-group-item">管理首页
						</a> <a href="#" class="list-group-item" id="add_stu_link">新生录入
						</a> <a href="#" class="list-group-item" id="add_tch_link">教职工录入
						</a> <a href="#" class="list-group-item">反馈信息
						</a> <a href="#" class="list-group-item">用户清单
						</a> <a href="#" class="list-group-item">修改密码
						</a>
					</div>
                    <div class="alert alert-danger text-center">
                        <h3>Import Information</h3>
                       Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                         Nulla pretium lectus vel justo iaculis blandit.  
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
                    <h4><span>Call: </span>188-6040-2758</h4>
                    <h4><span>E-mail: </span>zhoutao_233@163.com</h4>
                    <h4><span>Skype:</span> sonasup</h4>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <h3>Subscribe For Updates</h3>
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control" required="required" placeholder="Your Email" />
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-danger">Click To Subscribe</button>
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
	    $("#add_stu_link").click(function(){
	    	$('#add_student_form').empty()
			$("#add_student_modal").modal("show");
		});
	    
	    $("#add_tch_link").click(function(){
	    	$('#add_teacher_form').empty()
			$("#add_teacher_modal").modal("show");
		});
	    
	    $(function(){
	    	to_page(1);
	    })
	    
	    function to_page(pn){
	    	$("#teacher-list").hide();
	    	$.ajax({
	    		url: "${app_path}/manager/student-list",
	    		type: "GET",
	    		data: "pn="+pn,
	    		success:function(res){
	    			console.log(res);
	    			build_table(res);
	    			build_pageDesc(res);
	    			build_pageNav(res);
	    		}
	    	})
	    }
	    
	    function build_table(res){
	    	$("#list tbody").empty();
	    	var list = res.extend.pageInfo.list;
	    	$.each(list,function(index,item){
	    		var EditBtn = $("<button></button>").addClass("btn btn-info edit-btn")
	    					.append($("<span></span>").addClass("glyphicon glyphicon-pencil").append("Edit"));
	    		EditBtn.attr("id",item.id);
	    		var DeleteBtn = $("<button></button>").addClass("btn btn-danger delete-btn")
	    					.append($("<span></span>").addClass("glyphicon glyphicon-trash").append("Delete"));
	    		DeleteBtn.attr("id",item.id);
	    	 $("<tr></tr>").append($("<td></td>").append(item.number))
	    					.append($("<td></td>").append(item.name))
	    					.append($("<td></td>").append(item.department))
	    					.append($("<td></td>").append(item.profession))
	    					.append($("<td></td>").append(item.classNum))
	    					.append($("<td></td>").append(EditBtn).append(" ").append(DeleteBtn))
	    					.appendTo("#list tbody");
	    	})
	    }
	    
	    function build_pageDesc(res){
	    	$(".pageDesc").empty();
	    	var total = res.extend.pageInfo.total;
	    	var pages = res.extend.pageInfo.pages;
	    	var pageNum = res.extend.pageInfo.pageNum;
	    	$(".pageDesc").append("共"+total+"条记录，当前第"+pageNum+"页，共"+pages+"页");
	    }
	    
	    //用于编辑或删除后跳转原页面
	    var curPage;
	    
	    function build_pageNav(res){
	    	$(".pageNav").empty();
	    	var pages = res.extend.pageInfo.pages;
	    	var pageNum = res.extend.pageInfo.pageNum;
	    	
	    	curPage = pageNum;
	    	
	    	var firstPage = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
	    	var prePage = $("<li></li>").append($("<a></a>").append("&laquo;").attr("href","#"));
	    	if(pageNum == 1){
	    		firstPage.addClass("disabled");
	    		prePage.addClass("disabled");
	    	}
	    	
	    	firstPage.click(function(){
	    		to_page(1);
	    	})
	    	
	    	prePage.click(function(){
	    		to_page(pageNum - 1);
	    	})
	    	
	    	var nextPage = $("<li></li>").append($("<a></a>").append("&raquo;").attr("href","#"));
	    	var lastPage = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
	    	if(pageNum == pages){
	    		nextPage.addClass("disabled");
	    		lastPage.addClass("disabled");
	    	}
	    	
	    	nextPage.click(function(){
	    		to_page(pageNum + 1);
	    	})
	    	
	    	lastPage.click(function(){
	    		to_page(pages);
	    	})
	    	
	    	var ul =$("<ul></ul>").addClass("pagination");
	    	
	    	ul.append(firstPage).append(prePage);
	    	
	    	$.each(res.extend.pageInfo.navigatepageNums,function(index,item){
	    		var pageNav = $("<li></li>").append($("<a></a>").append(item).attr("href","#"));
	    		if(item == pageNum){
	    			pageNav.addClass("active");
	    		}
	    		pageNav.click(function(){
	    			to_page(item);
	    		})
	    		ul.append(pageNav);
	    	});
	    	
	    	ul.append(nextPage).append(lastPage).appendTo(".pageNav");
	    }
	    
	    $("#user-type").change(function(){
	    	var type = $(this).children("option:selected").val();
	    	if(type == 'teacher'){
	    		hide_student_info();
	    		show_teacher_info();
	    		$("#teacher-list").show();
	    	}else if(type == "student"){
	    		hide_teacher_info();
	    		show_student_info();
	    	}
	    })
	    
	    function to_teacher_page(pn){
	    	$.ajax({
	    		url: '${app_path}/manager/teacher-list',
	    		type: 'GET',
	    		data: 'pn='+pn,
	    		success:function(res){
	    			console.log(res);
	    			show_teacher_table(res);
	    			build_pageDesc(res);
	    			build_pageNav(res);
	    		}
	    	})
	    }
	    
	    function show_teacher_table(res){
	    	$("#teacher-list tbody").empty();
	    	var list = res.extend.pageInfo.list;
	    	$.each(list,function(index,item){
	    		var EditBtn = $("<button></button>").addClass("btn btn-info edit-btn")
	    					.append($("<span></span>").addClass("glyphicon glyphicon-pencil").append("Edit"));
	    		EditBtn.attr("id",item.id);
	    		var DeleteBtn = $("<button></button>").addClass("btn btn-danger delete-btn")
	    					.append($("<span></span>").addClass("glyphicon glyphicon-trash").append("Delete"));
	    		DeleteBtn.attr("id",item.id);
	    	 $("<tr></tr>").append($("<td></td>").append(item.number))
	    					.append($("<td></td>").append(item.name))
	    					.append($("<td></td>").append(item.profession))
	    					.append($("<td></td>").append(item.classNum))
	    					.append($("<td></td>").append(item.course))
	    					.append($("<td></td>").append(item.tel))
	    					.append($("<td></td>").append(EditBtn).append(" ").append(DeleteBtn))
	    					.appendTo("#teacher-list tbody");
	    	})
	    }
	    
	    function hide_student_info(){
	    	$("#list").hide();
	    	$(".pageDesc").hide();
	    	$(".pageNav").hide();
	    }
	    
	    function show_student_info(){
	    	to_page(1);
	    	$("#list").show();
	    	$(".pageDesc").show();
	    	$(".pageNav").show();
	    }
	    
	    function show_teacher_info(){
	    	to_teacher_page(1);
	    	$("#teacher-list").show();
	    	$(".pageDesc").show();
	    	$(".pageNav").show();
	    }
	    
	    function hide_teacher_info(){
	    	$("#teacher-list").hide();
	    	$(".pageDesc").hide();
	    	$(".pageNav").hide();
	    }
	    
	    $(document).on('click','.edit-btn',function(){
	    	var number = $(this).parents("tr").find("td:eq(0)").text();
	    	var name = $(this).parents("tr").find("td:eq(1)").text();
	    	if(number >= 2014010000){
	    		console.log('===')
	    		var dept = $(this).parents("tr").find("td:eq(2)").text();
	    		var pro = $(this).parents("tr").find("td:eq(3)").text();
	    		var cla = $(this).parents("tr").find("td:eq(4)").text();
	    		$('#stuId_e').val(number)
	    		$('#stuName_e').val(name)
	    		$('#stuDept_e').val(dept)
	    		$('#profession_e').val(pro)
	    		$('#class_e').val(cla)
	    		$('#edit_student_modal').modal('show')
	    	}else{
	    		var pro = $(this).parents("tr").find("td:eq(2)").text();
	    		var cla = $(this).parents("tr").find("td:eq(3)").text();
	    		var course = $(this).parents("tr").find("td:eq(4)").text();
	    		var phone = $(this).parents("tr").find("td:eq(5)").text();
	    		$('#tchProfession_e').val(pro)
	    		$('#tchClass_e').val(cla)
	    		$('#tchCourse_e').val(course)
	    		$('#tchId_e').val(number)
	    		$('#tchName_e').val(name)
	    		$('#tchPhoneNum_e').val(phone)
	    		$('#edit_teacher_modal').modal('show')
	    	}
	    })
	    
	    $('#save-change-student').click(function(){
	    	$.ajax({
	    		url : '${app_path}/manager/student',
	    		type : 'PUT',
	    		data : $('#edit-student-form').serialize(),
	    		success : function(res){
	    			console.log(res)
	    		}
	    	})
	    	$('#edit_student_modal').modal('hide')
	    })
	    
	    $('#save-change-teacher').click(function(){
	    	$.ajax({
	    		url : '${app_path}/manager/teacher',
	    		type : 'PUT',
	    		data : $('#edit-teacher-form').serialize(),
	    		success : function(res){
	    			console.log(res)
	    		}
	    	})
	    	$('#edit_teacher_modal').modal('hide')
	    })
	    
	    $('#add-teacher-btn').click(function(){
	    	console.log($('#add-teacher-form').serialize())
	    	$.ajax({
	    		url : '${app_path}/manager/teacher',
	    		type : 'POST',
	    		data : $('#add-teacher-form').serialize(),
	    		success : function(res){
	    			console.log(res)
	    		}
	    	})
	    	$('#add_teacher_modal').modal('hide')
	    })
	    
	    $('#add-student-btn').click(function(){
	    	$.ajax({
	    		url : '${app_path}/manager/student',
	    		type : 'POST',
	    		data : $('#add-student-form').serialize(),
	    		success : function(res){
	    			console.log(res)
	    		}
	    	})
	    	$('#add_student_modal').modal('hide')
	    })
	    
	    $(document).on('click','.delete-btn',function(){
	    	var name = $(this).parents("tr").find("td:eq(1)").text();
	    	var number = $(this).parents("tr").find("td:eq(0)").text();
	    	var id = $(this).attr("id");
	    	if(number >= 2014010000){
	    		if(confirm("确定要删除 [ "+name+" ] 的记录吗？")){	
	    			$.ajax({
		    			url: '${app_path}/manager/student-list/'+id,
		    			type: 'DELETE',
		    			success:function(res){
		    				to_page(curPage);
		    			}
	    			})
	    		}
	    	}else if(number < 2014010000){
	    		if(confirm("确定要删除 [ "+name+" ] 的记录吗？")){	    			
	    			$.ajax({
		    			url: '${app_path}/manager/teacher-list/'+id,
		    			type: 'DELETE',
		    			success:function(res){
		    				to_teacher_page(curPage);
		    			}
		    		})	
	    		}
	    	}
	    })
	    
    </script>

</body>
</html>
