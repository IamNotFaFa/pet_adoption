<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>动物的具体信息</title>
    <style type="text/css">
        .myDiv {
            margin-top: 40px;
        }
    </style>
    <link rel="stylesheet" href="${path}/static/bootstrap/css/bootstrap.min.css">
    <link href="${path}/static/css/user/jquery.slideBox.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="${path}/static/css/user/show.css">
    <script src="${path}/static/js/user/jquery-2.2.3.min.js"></script>
    <script src="${path}/static/bootstrap/js/bootstrap.js"></script>
    <script src="${path}/static/js/user/jquery.slideBox.min.js" type="text/javascript"></script>
    <script src="${path}/static/js/user/jquery.comment.js"></script>
</head>
<body>
<div class="myDiv">
    <div>
        <h2>待领养的动物</h2>
        <center>
            <div id="demo1" class="slideBox">
                <ul class="items">
                    <c:forEach items="${pics}" var="pic">
                        <li>
                            <a href=""><img class="my-img" src="/static/images/animal/${pic}"></a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="name">
                <img src="/static/images/adopt/p1.jpg" height="50px" width="50px">
                <span>我叫 ${pet.petName}</span>
            </div>
        </center>
        <div class="animal">
            <div class="group">
                <div class="animalX1">
                    <img src="/static/images/adopt/p2.jpg"><span>编号</span><br>
                    <p>${pet.id}</p>
                </div>
                <div class="animalX2">
                    <img src="/static/images/adopt/p3.jpg"><span>生日</span><br>
                    <p>
                        <fmt:formatDate pattern="yyyy-MM-dd" value="${pet.birthday}"/>
                    </p>
                </div>
            </div>
            <div class="group">
                <div class="animalX3">
                    <img src="/static/images/adopt/p4.jpg"><span>品种</span><br>
                    <p>${pet.petType}</p>
                </div>
                <div class="animalX4">
                    <img src="/static/images/adopt/p5.jpg"><span>性别</span><br>
                    <p>${pet.sex}</p>
                </div>
            </div>
        </div>
        <div class="animal_me">
            <div class="animal_me1">
                <img src="/static/images/adopt/p6.jpg">
                <img src="/static/images/adopt/p7.jpg">
                <img src="/static/images/adopt/p8.jpg">
                <img src="/static/images/adopt/p9.jpg">
                <img src="/static/images/adopt/p10.jpg">
            </div>
            <div class="animal_me2"><p>大家好，我是${pet.petName}。${pet.remark}。你能带我回家吗？</p></div>
            <div class="animal_me3"><img src="/static/images/adopt/p11.jpg"></div>
        </div>
        <div class="my_btn">
            <button class="btn btn-primary btn-lg" id="pet_adopt_modal_btn">想要领养</button>
            <button class="btn btn-primary btn-lg" id="tianchuan_btn"
                    style="float: right;position: relative;left: 150px;bottom: 45px">返回中心
            </button>
        </div>
    </div>

    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myAdopt" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        请确认个人信息
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="new_adopt_form">
                        <input type="hidden" value="${user.id}" name="id">
                        <div class="form-group">
                            <label for="new_Name" class="col-sm-2 control-label">
                                姓名： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_Name"
                                       placeholder="userName" name="userName" value="${user.userName}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_petName" class="col-sm-2 control-label">
                                宠物姓名： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_petName"
                                       placeholder="petName" name="petName" value="${pet.petName}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_Sex" class="col-sm-2 control-label">
                                性别： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_Sex"
                                       placeholder="sex" name="sex" value="${user.sex}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_tel" class="col-sm-2 control-label">
                                联系方式： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_tel"
                                       placeholder="telephone" name="telephone" value="${user.telephone}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_Email" class="col-sm-2 control-label">
                                邮件： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_Email"
                                       placeholder="Email" name="new_Email" value="${user.email}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_Adress" class="col-sm-2 control-label">
                                地址： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_Adress"
                                       placeholder="地址" name="address" value="${user.address}" readonly>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="adopt_btn">关闭
                    </button>
                    <button type="button" class="btn btn-primary" id="submit_btn">提交申请</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>

    <div class="container">
        <%--存放评论的地方--%>
        <div class="comment-list">

        </div>

        <div class="commentbox">
            <textarea cols="80" rows="50" placeholder="来说几句吧" class="mytextarea" id="content"></textarea>
            <div class="btn btn-info pull-right" id="comment">评论</div>
        </div>
    </div>
</div>
<%--主回复--%>
<div class="modal fade" id="saveAnswer" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel1">评论</h4>
            </div>
            <div class="modal-body">
                <form id="save_answer_form">
                    <input type="hidden" name="id" id="edit_id">
                    <textarea class="form-control" id="edit_content" placeholder="请发表评论！" name="content"></textarea>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="comment_btn">关闭</button>
                <button type="button" class="btn btn-primary" id="save_answer_btn">提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<div class="modal fade" id="saveAnswers" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel2">评论</h4>
            </div>
            <div class="modal-body">
                <form id="save_answers_form">
                    <input type="hidden" name="id" id="answer_id"<%-- value="${answer.id}"--%>>
                    <input type="hidden" name="comment_id" id="comment_id"<%-- value="${answer.comment.id}"--%>>
                    <textarea class="form-control" id="answer_content" placeholder="请发表评论！" name="content"></textarea>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="answer_btn">关闭</button>
                <button type="button" class="btn btn-primary" id="save_answers_btn">提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<script>
    var user = "${sessionScope.user}";

    jQuery(function ($) {
        $('#demo1').slideBox();
    });

    var id = "${sessionScope.pet}";

    $(function () {
        to_page();
    });

    function to_page() {
        $("#content").val("");
        //session里面的数据
        $.ajax({
            url: "${path}/comment/petComments?petId=" + "${pet.id}",
            type: "GET",
            success: function (result) {
                submit(result);
            },
            error: function (result) {
                alert("评论导出失败");
            }
        });
    }

    //字符串拼接
    function submit(result) {
        //清空数据
        $(".comment-list").empty();
        //对结果进行遍历
        var comments = result.extend.comment;
        console.log(result.extend.comment);
        $.each(comments, function (index, comment) {
            var headTd = $("<header></header>").append($("<img>").attr("src", "/static/images/user/" + (comment.user.pic)));
            var head = $("<div></div>").addClass("comment-right");
            var userNameTd = $("<h3></h3>").append(comment.user.userName);
            var bodyTd = $("<div></div>").addClass("comment-content-header");
            var timeTd = $("<span></span>").append($("<i></i>").addClass("glyphicon glyphicon-time")).append(comment.commentTime);
            bodyTd.append(timeTd);
            var commentTd = $("<p></p>").addClass("content").append(comment.content);
            var answer = $("<div></div>").addClass("comment-content-footer");
            var answerHead = $("<div></div>").addClass("row");
            var answerbtn = $("<div></div>").addClass("col-md-2").append($("<span></span>").addClass("reply-btn").append("回复").attr("save-id", comment.id));
            answerHead.append(answerbtn);
            answer.append(answerHead);
            var replayListTd = null;
            if (comment.answer != null) {
                var answers = comment.answer;
                replayListTd = $("<div></div>").addClass("reply-list");
                $.each(answers, function (index, answer) {
                    if (answer.replayId != null) {
                        var replay = $("<div></div>").append($("<a></a>").append(answer.user.userName)).append("回复：").append($("<a></a>").append(answer.answer.user.userName).append("  ")).append($("<span></span>").append(answer.content));
                        var contentTd = $("<p></p>").append($("<span></span>").append(answer.answerTime)).append($("<span></span>").addClass("reply-list-btn").append("回复").attr("saves-id", answer.id));
                        var replayTd = $("<div></div>").addClass("reply").append(replay).append(contentTd);
                        replayListTd.append(replayTd);
                    } else {
                        var replay = $("<div></div>").append($("<a></a>").append(answer.user.userName)).append("回复：").append($("<a></a>").append(comment.user.userName).append("  ")).append($("<span></span>").append(answer.content));
                        var contentTd = $("<p></p>").append($("<span></span>").append(answer.answerTime)).append($("<span></span>").addClass("reply-list-btn").append("回复").attr("saves-id", answer.id));
                        var replayTd = $("<div></div>").addClass("reply").append(replay).append(contentTd);
                        replayListTd.append(replayTd);
                    }
                });
            }
            head.append(userNameTd).append(bodyTd).append(commentTd).append(answer).append(replayListTd);
            $("<div></div>").addClass("comment-info")
                .append(headTd)
                .append(head)
                .appendTo(".comment-list")
        });
    };

    $("#comment").click(function () {
        var comment = $("#content").val();
        if (comment == null) {
            alert("请填入评论后才能发表")
        }
        ;
        $.ajax({
            url: "${path}/comment/create?content=" + comment,
            type: "GET",
            success: function (result) {
                if(result.code){
                    alert("评论成功");

                }else{
                    alert("请先登录后再评论");
                }
                to_page();
            },
            error: function (result) {
                alert("评论插入失败")
            }
        })
    });


    //清空表单样式及内容
    function reset_form(ele) {
        $(ele)[0].reset();
        //清空表单样式
        $(ele).find("*").removeClass("has-error has-success");
        $(ele).find(".help-block").text("");
    }

    //点击申请按钮弹出模态框。
    $("#pet_adopt_modal_btn").click(function () {
        //清除表单数据（表单完整重置（表单的数据，表单的样式））
        reset_form("#new_adopt_form");
        $("#new_id").val("${user.id}");
        $("#new_userName").val("${user.userName}");
        $("#new_sex").val("${user.sex}");
        $("#new_telephone").val("${user.telephone}");
        $("#new_Email").val("${user.email}");
        $("#new_address").val("${user.address}");
        //弹出模态框
        $("#myAdopt").modal({
            backdrop: "static"
        });
    });
    //点击保存，保存到申请表
    $("#submit_btn").click(function () {
        var ted = document.getElementById("new_adopt_form");
        var adopt = new FormData(ted);
        console.log(adopt);
        $.ajax({
            url: "${path}/adopt/create",
            type: "POST",
            processData: false,  // 告诉jQuery不要去处理发送的数据
            contentType: false, // 告诉jQuery不要去设置Content-Type请求头
            date: adopt,//控制层并没有用到这里的数据，可以省略掉
            success: function (result) {
                if(result.code){
                    alert("提交成功");

                }else{
                    alert("登录后才能申请领养")
                }
                $("#adopt_btn").click();
            },
            error: function (result) {
                alert("提交失败");
                $("#adopt_btn").click();
            }
        });
    });


    $("#tianchuan_btn").click(function () {
        window.location.href = "${path}/user/service";
    });

    $(document).on("click", ".reply-btn", function () {
        var id = $(this).attr("save-id");
        console.log(id);
        $.ajax({
            url: "${path}/comment/findById?id=" + id,
            type: "GET",
            success: function (result) {
                //填充用户信息
                $("#edit_id").val(result.extend.comment.id);
            }
        });
        //2、弹出模态框
        $("#saveAnswer").modal({
            backdrop: "static"
        });
    });

    $("#save_answer_btn").click(function () {
        var id = $("#edit_id").val();
        var content = $("#edit_content").val()
        $.ajax({
            url: "${path}/answer/create",
            type: "POST",
            dataType: "json",
            data: {'commentId': id, 'content': content},
            success: function (result) {
                if(result.code){
                    alert("回复成功！");
                }else{
                    alert("登录后才能回复评论")
                }
                $("#comment_btn").click();
                to_page();
            },
            error: function (result) {
                alert("回复失败！");
                $("#comment_btn").click();
            }
        })
    });

    $(document).on("click", ".reply-list-btn", function () {
        var id = $(this).attr("saves-id");
        console.log(id);
        $.ajax({
            url: "${path}/answer/findById?id=" + id,
            type: "GET",
            success: function (result) {
                //填充用户信息
                $("#comment_id").val(result.extend.answer.comment.id);
                $("#answer_id").val(result.extend.answer.id);
            }
        });
        //2、弹出模态框
        $("#saveAnswers").modal({
            backdrop: "static"
        });
    });
    $("#save_answers_btn").click(function () {
        var comment_id = $("#comment_id").val();
        var id = $("#answer_id").val();
        var content = $("#answer_content").val()
        $.ajax({
            url: "${path}/answer/creates",
            type: "POST",
            dataType: "json",
            data: {'replayId': id, 'content': content, 'commentId': comment_id},
            success: function (result) {
                if(result.code){
                    alert("回复成功！");

                }else{
                    alert("登录后才能回复评论！");

                }
                to_page();
                $("#answer_btn").click();
            },
            error: function (result) {
                alert("回复失败！")
                $("#answer_btn").click();
            }
        })
    })
</script>
</body>
</html>


