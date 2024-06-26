<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
    <title>宠物领养管理后台</title>
    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS -->
    <link href="${path}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="${path}/static/css/admin/metisMenu.min.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link href="${path}/static/css/admin/dataTables.bootstrap.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${path}/static/css/admin/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${path}/static/css/admin/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="${path}/static/css/admin/boot-crm.css" rel="stylesheet" type="text/css">
    <style>
        .panel-heading{background-color: #337ab7;border-color: #2e6da4;font-size:14px;padding-left:20px;height:36px;line-height:36px;color:white;position:relative;cursor:pointer;}/*转成手形图标*/
        .panel-heading span{position:absolute;right:10px;top:12px;}
    </style>
</head>
<body>
<div id="wrapper">
    <!-- 导航栏部分 -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-brand" href="">宠物领养管理系统</a>
        </div>
        <!-- 导航栏右侧图标部分 -->
        <!-- 导航栏右侧图标部分 -->
        <ul class="nav navbar-top-links navbar-right">
            <!-- 消息通知 end -->
            <!-- 用户信息和系统设置 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="/admin/developing">
                    <i class="fa fa-user fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user ">
                    <li>
                        <input type="hidden" id = "currentAdminId" value="${admin.id}">
                    </li>
                    <li><a href="/admin/developing"><i class="fa fa-user fa-fw"></i>
                        管理员：${admin.adminName}</a>
                    </li>
                    <li><a href="/admin/developing"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
                    <li class="divider"></li>
                    <li>
                        <a href="${path}/admin/logout">
                            <i class="fa fa-sign-out fa-fw"></i>退出登录
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 用户信息和系统设置结束 -->
        </ul> <!-- 左侧显示列表部分 start-->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <!-- 教学管理  折叠的分组列表 -->
                <div class="panel-heading" id="collapseListGroupHeading3" data-toggle="collapse" data-target="#collapseListGroup3" role="tab">
                    <h4 class="panel-title">
                        后台管理 <span class="fa fa-chevron-up right"></span>
                    </h4>
                </div>
                <div id="collapseListGroup3" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="collapseListGroupHeading3">
                    <ul class="list-group">
                        <li class="list-group-item my_font">
                            <a href="${path}/admin/user">
                                <i class="fa fa-flash fa-fw"></i> 用户信息
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${path}/admin/admin">
                                <i class="fa fa-flash fa-fw"></i> 管理员信息
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${path}/admin/pet">
                                <i class="fa fa-sitemap fa-fw"></i> 宠物管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${path}/admin/adopt">
                                <i class="fa fa-sitemap fa-fw"></i> 领养管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${path}/admin/comment">
                                <i class="fa fa-sitemap fa-fw"></i> 评论管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${path}/admin/blog">
                                <i class="fa fa-sitemap fa-fw"></i> 团队活动管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${path}/admin/apply">
                                <i class="fa fa-sitemap fa-fw"></i> 志愿者申请
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${path}/admin/agree">
                                <i class="fa fa-sitemap fa-fw"></i> 同意领养列表
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${path}/admin/disAgree">
                                <i class="fa fa-sitemap fa-fw"></i> 不同意领养列表
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div><!-- 左侧显示列表部分 end-->
    </nav>
    <!-- 班级列表查询部分  start-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">管理员管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <!-- 搜索部分 -->
            <div class="panel-body">
                <form class="form-inline" method="get" >
                    <div class="form-group">
                        <label for="findByName">管理员名称</label>
                        <input type="text" class="form-control" id="findByName" value="" name="adminName">
                    </div>
                    <button type="button" class="btn btn-primary" id="admin_find_modal_btn">查询</button>
                </form>
            </div>
        </div>
        <button class="btn btn-primary" id="admin_add_modal_btn">新增</button>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">管理员信息列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped" id="admin_table">
                        <thead>
                        <tr>
                            <%--复选框，因为没有做相关功能，就弃用了--%>
                            <%--<th>
                                <input type="checkbox" id="check_all"/>
                            </th>--%>
                            <th>编号</th>
                            <th>管理员账号</th>
                            <th>真实姓名</th>
                            <th>电话</th>
                            <th>Email</th>
                            <th>生日</th>
                            <th>性别</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">

                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
            <!-- 显示分页信息 -->
            <div class="row">
                <!--分页文字信息  -->
                <div class="col-md-8" id="page_info_area"></div>
                <!-- 分页条信息 -->
                <div class="col-md-4" id="page_nav_area">

                </div>
            </div>
        </div>
    </div>
    <!-- 用户查询  end-->
</div>
<!-- 创建用户模态框 id newUser form users-->
<div class="modal fade" id="newAdmin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">新建管理员信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="new_admin_form">
                    <div class="form-group">
                        <label for="new_adminName" class="col-sm-2 control-label">
                            账号
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_adminName" placeholder="登录账号" name="adminName">
                        </div>
                        <label for="new_password" class="col-sm-2 control-label">
                            密码
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_password" placeholder="密码" name="adminPwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_Name" class="col-sm-2 control-label">
                            真实名字
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_Name" placeholder="真实名字" name="realName">
                        </div>
                        <label for="new_sex" class="col-sm-2 control-label">
                            性别
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control" id="new_sex" name="sex">
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_telephone" class="col-sm-2 control-label">
                            电话号码
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_telephone" placeholder="电话" name="telephone">
                        </div>
                        <label for="new_Email" class="col-sm-2 control-label">
                            Email
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_Email" placeholder="Email"  name="email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_birthday" class="col-sm-2 control-label">
                            生日
                        </label>
                        <div class="col-sm-4">
                            <input type="date" class="form-control" id="new_birthday" placeholder="生日" name="birthday">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_remark" class="col-sm-2 control-label">
                            个人介绍
                        </label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="new_remark" placeholder="个人介绍" name="remark"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_pic" class="col-sm-2 control-label">
                            头像
                        </label>
                        <div class="col-sm-4">
                            <img src="" id="new_pic" alt="" width="70px" height="100px">
                            <input type="file" id="pic" class="form-control" value="上传文件" name="file">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="admin_saveDown_btn">关闭</button>
                <button type="button" class="btn btn-primary" id="admin_save_btn">创建</button>
            </div>
        </div>
    </div>
</div>
<!-- 修改模态框 -->
<div class="modal fade" id="editAdmin" tabindex="-1" role="dialog" aria-labelledby="myModalLabe">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabe">修改管理员信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_admin_form" method="post" enctype="multipart/form-data">
                    <input type="hidden" id="edit_id" name="id">
                    <div class="form-group">
                        <label for="edit_adminName" class="col-sm-2 control-label">
                            账号
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_adminName" placeholder="登录账号" value="${admin.adminName}" name="adminName">
                        </div>
                        <label for="edit_password" class="col-sm-2 control-label">
                            密码
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_password" placeholder="密码" value="${admin.adminPwd}" name="adminPwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_Name" class="col-sm-2 control-label">
                            真实姓名
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_Name" placeholder="真实姓名" value="${admin.realName}" name="realName">
                        </div>
                        <label for="edit_sex" class="col-sm-2 control-label">
                            性别
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control" id="edit_sex" value="${admin.sex}" name="sex">
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_telephone" class="col-sm-2 control-label">
                            电话号码
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_telephone" placeholder="电话" value="${admin.telephone}" name="telephone">
                        </div>
                        <label for="edit_Email" class="col-sm-2 control-label">
                            Email
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_Email" placeholder="邮件" value="${admin.email}"  name="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_birthday" class="col-sm-2 control-label">
                            生日
                        </label>
                        <div class="col-sm-4">
                            <input type="date" class="form-control" id="edit_birthday" placeholder="生日" value="${admin.birthday}" name="birthday">
                        </div>

                    </div>
                    <div class="form-group">
                        <label for="edit_remark" class="col-sm-2 control-label">
                            个人介绍
                        </label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="edit_remark" placeholder="个人介绍" value="${admin.remark}" name="remark"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_pic" class="col-sm-2 control-label">
                            头像
                        </label>
                        <div class="col-sm-4">
                            <img src="" id="edit_pic" alt="" width="70px" height="100px">
                            <input type="file" class="form-control"  placeholder="文件" name="file">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="admin_updateDown_btn">关闭</button>
                <button type="button" class="btn btn-primary" id="admin_update_btn">保存修改</button>
            </div>
        </div>
    </div>
</div>
<%--登录失效，跳转至登录--%>
<div class="modal fade" id="notlogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabe">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title">登录失效</h4>
            </div>
            <div class="modal-body">
                <p>请先
                <a href="/admin/login">登录</a>！</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" aria-label="Close">关闭</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="access" tabindex="-1" role="dialog" aria-labelledby="myModalLabe">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title">无权访问</h4>
            </div>
            <div class="modal-body">
                <p>您无权使用该功能，详细信息请联系超级管理员！</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" aria-label="Close">关闭</button>
            </div>
        </div>
    </div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="${path}/static/js/jquery-3.4.1.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${path}/static/bootstrap/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="${path}/static/js/admin/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="${path}/static/js/admin/jquery.dataTables.min.js"></script>
<script src="${path}/static/js/admin/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="${path}/static/js/admin/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">

    //总的数据 当前的页面  页面容量  当前页码  当前总页数
    var totalRecord,currentPage,currentSize,currentPageSize,currentPages;
    var currentAdminId = $("#currentAdminId").val();

    var isFlush=0;

    $(function(){
       to_page(1);
    });
    function to_page(pn){
        $.ajax({
            url:"${path}/admin/admins",
            data:"pn="+pn,
            type:"GET",
            success:function(result){
                resolving(result);
            }
        });
    }


    function resolving(result){
        //1、解析并显示员工数据
        build_admins_table(result);
        //2、解析并显示分页信息
        build_page_info(result);
        //3、解析显示分页条数据
        build_page_nav(result);
    }
    function build_admins_table(result){
        //清空table表格
        $("#admin_table tbody").empty();
        //index：下标 user：单个对象
        var admins=result.extend.pageInfo.list;
        $.each(admins,function(index,admin){
            /*var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");*/
            var adminIdTd = $("<td></td>").append(admin.id);
            var adminNameTd = $("<td></td>").append(admin.adminName);
            var realNameTd = $("<td></td>").append(admin.realName);
            var telephoneTd=$("<td></td>").append(admin.telephone);
            var emailTd=$("<td></td>").append(admin.email);
            var birthdayTd=$("<td></td>").append(admin.birthday);
            var sexTd=$("<td></td>").append(admin.sex);

            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("修改");
            //为编辑按钮添加一个自定义的属性，来表示当前员工id
            editBtn.attr("edit-id",admin.id);
            var delBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            //为删除按钮添加一个自定义的属性来表示当前删除的员工id
            delBtn.attr("del-id",admin.id);
            var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
            //var delBtn =
            //append方法执行完成以后还是返回原来的元素
            $("<tr></tr>")/*.append(checkBoxTd)*/
                .append(adminIdTd)
                .append(adminNameTd)
                .append(realNameTd)
                .append(telephoneTd)
                .append(emailTd)
                .append(birthdayTd)
                .append(sexTd)
                .append(btnTd)
                .appendTo("#admin_table tbody");
        });
    }

    //解析显示分页信息
    function build_page_info(result){
        $("#page_info_area").empty();
        $("#page_info_area").append("当前"+result.extend.pageInfo.pageNum+"页,总"+
            result.extend.pageInfo.pages+"页,总"+
            result.extend.pageInfo.total+"条记录");
        totalRecord = result.extend.pageInfo.total;//最后的数据
        currentPage = result.extend.pageInfo.pageNum;//当前页
        currentPages=result.extend.pageInfo.pages;
        currentSize=result.extend.pageInfo.size;//当前页面的尺寸
        currentPageSize=result.extend.pageInfo.pageSize;//每页的尺寸
    }
    //解析显示分页条，点击分页要能去下一页....
    function build_page_nav(result){
        //page_nav_area
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");

        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.extend.pageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页的事件
            firstPageLi.click(function(){
                to_page(1);
            });
            prePageLi.click(function(){
                to_page(result.extend.pageInfo.pageNum -1);
            });
        }

        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if(result.extend.pageInfo.hasNextPage == false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            nextPageLi.click(function(){
                to_page(result.extend.pageInfo.pageNum +1);
            });
            lastPageLi.click(function(){
                to_page(result.extend.pageInfo.pages);
            });
        }

        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums,function(index,item){

            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if(result.extend.pageInfo.pageNum == item){
                numLi.addClass("active");
            }
            numLi.click(function(){
                to_page(item);
            });
            ul.append(numLi);
        });
        //添加下一页和末页 的提示
        ul.append(nextPageLi).append(lastPageLi);

        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    }


    //清空表单样式及内容
    function reset_form(ele){
        $(ele)[0].reset();
        //清空表单样式
        $(ele).find("*").removeClass("has-error has-success");
        $(ele).find(".help-block").text("");
    }
    //点击新增按钮弹出模态框。
    $("#admin_add_modal_btn").click(function(){
        //清除表单数据（表单完整重置（表单的数据，表单的样式））
        reset_form("#newAdmin form");
        if (currentAdminId == 0){
            $("#notlogin").modal({
                backdrop:"static"
            })
        }else if (currentAdminId == 1){
            //弹出模态框
            $("#newAdmin").modal({
                backdrop:"static"
            });
        }else {
            $("#access").modal({
                backdrop:"static"
            });
        }
    });
    //点击保存，保存员工。
    $("#admin_save_btn").click(function(){
        var name = $("#new_adminName").val();
        var password = $("#new_password").val();
        var realName = $("#new_Name").val();
        var telephone = $("#new_telephone").val();
        var email = $("#new_Email").val();
        var birthday = $("#new_birthday").val();
        var pic = $("#pic").val();
        var remark = $("#new_remark").val();
        if (name == ""){
            alert("账号不能为空！");
        }else if (password == ""){
            alert("密码不能为空！");
        }else if (realName == ""){
            alert("真实姓名不能为空！");
        }else if (telephone == ""){
            alert("电话不能为空！");
        }else if (email == ""){
            alert("邮箱不能为空！");
        }else if (birthday == ""){
            alert("生日不能为空！");
        }else if (pic == ""){
            alert("请上传一张照片作为头像！");
        }else if (remark == ""){
            alert("个人介绍不能为空！");
        }else {
            var admin = document.getElementById("new_admin_form");
            var admins = new FormData(admin);
            //2、发送ajax请求保存
            $.ajax({
                url:"${path}/admin/create",
                type:"POST",
                processData: false,  // 告诉jQuery不要去处理发送的数据
                contentType: false, // 告诉jQuery不要去设置Content-Type请求头
                data:admins,
                success:function (result) {
                    alert("管理员创建成功");
                    $("#admin_saveDown_btn").click();
                    if(currentSize=currentPageSize){
                        to_page(currentPages+1);
                    } else {
                        to_page(currentPages);
                    }
                },
                error:function (result) {
                    alert("管理员创建失败");
                }
            });
        }
    });

    //点击编辑按钮弹出模态框。
    $(document).on("click",".edit_btn",function(){
        //1、发送ajax,根据id获取用户信息
        //清除表单数据（表单完整重置（表单的数据，表单的样式））
        reset_form("#editAdmin form");
        var id = $(this).attr("edit-id");
        if (currentAdminId == 0){
            $("#notlogin").modal({
                backdrop:"static"
            })
        }else if (currentAdminId == 1 || id == currentAdminId){
            $.ajax({
                url:"${path}/admin/findById?id="+id,
                type:"GET",
                success:function(result){
                    //填充用户信息
                    console.log(result);
                    $("#edit_id").val(result.extend.admin.id);
                    $("#edit_adminName").val(result.extend.admin.adminName);
                    $("#edit_password").val(result.extend.admin.adminPwd);
                    $("#edit_Name").val(result.extend.admin.realName)
                    $("#edit_sex").val(result.extend.admin.sex);
                    $("#edit_telephone").val(result.extend.admin.telephone);
                    $("#edit_Email").val(result.extend.admin.email);
                    $("#edit_pic").attr("src","/static/images/admin/"+result.extend.admin.pic);
                    $("#edit_birthday").val(result.extend.admin.birthday);
                    $("#edit_remark").val(result.extend.admin.remark);
                }});
            //2、弹出模态框
            $("#editAdmin").modal({
                backdrop:"static"
            });
        }else {
            $("#access").modal({
                backdrop:"static"
            })
        }
    });

    //点击更新按钮弹出模态框。
    $("#admin_update_btn").click(function(){
        var name = $("#edit_adminName").val();
        var password = $("#edit_password").val();
        var realName = $("#edit_Name").val();
        var telephone = $("#edit_telephone").val();
        var email = $("#edit_email").val();
        var birthday = $("#edit_birthday").val();
        var remark = $("#edit_remark").val();
        if (name == ""){
            alert("账号不能为空！");
        }else if (password == ""){
            alert("密码不能为空！");
        }else if (realName == ""){
            alert("真实姓名不能为空！");
        }else if (telephone == ""){
            alert("电话不能为空！");
        }else if (email == ""){
            alert("邮箱不能为空！");
        }else if (birthday == ""){
            alert("生日不能为空！");
        }else if (remark == ""){
            alert("个人介绍不能为空！");
        }else {
            var admin=document.getElementById("edit_admin_form");
            var adminInfo=new FormData(admin);
            $.ajax({
                url:"${path}/admin/update",
                type:"POST",
                processData: false,  // 告诉jQuery不要去处理发送的数据
                contentType: false, // 告诉jQuery不要去设置Content-Type请求头
                data:adminInfo,
                success:function (result) {
                    alert("管理员信息更新成功！");
                    $("#admin_updateDown_btn").click();
                    to_page(currentPage);
                },
                error:function(result){
                    alert("管理员信息更新失败！");
                    to_page(currentPage);
                }
            });
        }
    });

    //单个删除
    $(document).on("click",".delete_btn",function(){
        var adminId = $(this).attr("del-id");
        if (adminId == 1){
            $("#access").modal({
                backdrop:"static"
            })
        }else if (currentAdminId == 0){
            $("#notlogin").modal({
                backdrop:"static"
            })
        }else if (currentAdminId == 1){
            //1、弹出是否确认删除对话框
            var adminName = $(this).parents("tr").find("td:eq(2)").text();
            if(confirm("确认删除【"+adminName+"】吗？")){
                //确认，发送ajax请求删除即可
                $.ajax({
                    url:"${path}/admin/delete?id="+adminId,
                    type:"GET",
                    success:function (result) {
                        if(result.code==100){
                            alert("管理员删除成功！");
                            if(currentSize==1){
                                to_page(currentPage-1);
                            } else {
                                to_page(currentPage);
                            }
                        }else{
                            alert("管理员删除失败！");
                            to_page(currentPage);
                        }
                    }
                });
            }
        }else {
            $("#access").modal({
                backdrop:"static"
            })
        }
    });
    $("#admin_find_modal_btn").click(function () {
        $("#admin_table tbody").empty();
        var adminName=$("#findByName").val();
        to_findByName(1,adminName);
    });

    function to_findByName(pn,adminName) {
        $.ajax({
            url:"${path}/admin/admins",
            type:"POST",
            dataType:"json",
            data:{"pn":pn,"adminName":adminName},
            async:"true",
            success:function (result) {
                build_admins_table(result);
                build_page_info(result);
                build_page_findByName(result,adminName);
            },
            error:function (result) {
                alert("模糊查询报错了！")
            }
        });
    }

    //解析显示分页条，点击分页要能去下一页....
    function build_page_findByName(result,adminName){
        //page_nav_area
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");

        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.extend.pageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页的事件
            firstPageLi.click(function(){
                to_findByName(1,adminName);
            });
            prePageLi.click(function(){
                to_findByName(result.extend.pageInfo.pageNum -1,adminName);
            });
        }

        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if(result.extend.pageInfo.hasNextPage == false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            nextPageLi.click(function(){
                to_findByName(result.extend.pageInfo.pageNum +1,adminName);
            });
            lastPageLi.click(function(){
                to_findByName(result.extend.pageInfo.pages,adminName);
            });
        }

        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums,function(index,item){

            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if(result.extend.pageInfo.pageNum == item){
                numLi.addClass("active");
            }
            numLi.click(function(){
                to_findByName(item,adminName);
            });
            ul.append(numLi);
        });
        //添加下一页和末页 的提示
        ul.append(nextPageLi).append(lastPageLi);

        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    }
</script>

</body>
</html>
