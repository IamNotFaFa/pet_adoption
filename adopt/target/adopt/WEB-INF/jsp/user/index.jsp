<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <title>首页</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>
    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${path}/static/bootstrap/css/bootstrap.min.css" type="text/css" media="all">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${path}/static/css/user/font-awesome.css" type="text/css" media="all">
    <!-- Font-Awesome-Icons-CSS -->
    <link rel="stylesheet" href="${path}/static/css/user/owl.carousel.css" type="text/css" media="all" />
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${path}/static/css/user/style.css" type="text/css" media="all" />


    <!-- Style-CSS -->
    <!-- //css files -->
    <!-- web fonts -->
    <link href="http://fonts.googleapis.com/css?family=Molle:400i&amp;subset=latin-ext" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
</head>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
<!-- //sticky navigation 首页轮播图 -->
<div class="w3l-main" id="home1">
    <div class="container">
        <!-- header -->
        <div class="header">
            <div class="logo">
                <h1>
                    <a href="#">
                        <img class="logo-img center-block" src="/static/images/home/logo.png" height="130px" width="130px" alt="" /> 
                    </a>
                </h1>
            </div>
            <div class="clearfix"> </div>
        </div>
        <!-- //header -->
    </div>
    <!-- Slider -->
    <div class="slider">
        <div class="callbacks_container">
            <ul class="rslides" id="slider">
                <li>
                    <div class="slider-img-w3layouts one">
                        <div class="w3l-overlay">
                            <div class="container">
                                <div class="banner-text-info">
                                    <h3>
                                        <span></span>
                                        <span></span>
                                    </h3>
                                    <p> 携手共创美好宠物家庭，你我都有这份责任！！！</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="slider-img-w3layouts two">
                        <div class="w3l-overlay">
                            <div class="container">
                                <div class="banner-text-info">
                                    <h3>
                                        <span></span>
                                        <span></span></h3>
                                    <p> 携手共创美好宠物家庭，你我都有这份责任！！！</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="slider-img-w3layouts three">
                        <div class="w3l-overlay">
                            <div class="container">
                                <div class="banner-text-info">
                                    <h3>有
                                        <span>你们</span>，才有
                                        <span>我们</span> !</h3>
                                    <p> 携手共创美好宠物家庭，你我都有这份责任！！！</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="slider-img-w3layouts four">
                        <div class="w3l-overlay">
                            <div class="container">
                                <div class="banner-text-info">
                                    <h3>喜欢
                                        <span>狗</span> 也爱
                                        <span>猫</span></h3>
                                    <p> 携手共创美好宠物家庭，你我都有这份责任！！！</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <!--//Slider-->
</div>
<!--//banner-->



<!-- footer -->
<section class="footer-w3">
    <div class="container">
        <div class="col-lg-4 col-md-4 col-sm-4 footer-agile1" data-aos="zoom-in">
            <h3>网站简介</h3>
            <p class="footer-p1">
                该网站旨在帮助想要领养宠物的人士以及希望加入我们团队的志愿者。
                如果您想领养宠物，请慎重选择并负责任地照顾这些可爱的猫狗！
                如果您希望成为志愿者，请与我们联系。我们欢迎所有热爱动物的朋友，
                一起努力为宠物寻找温暖的家！
            </p>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 footer-mid-w3" data-aos="zoom-in">
            <h3>宠物展示</h3>
            <div class="agileinfo_footer_grid1">
                <a href="#">
                    <img src="/static/images/home/f1.jpg" alt=" " class="img-responsive">
                </a>
            </div>
            <div class="agileinfo_footer_grid1">
                <a href="#">
                    <img src="/static/images/home/f2.jpg" alt=" " class="img-responsive">
                </a>
            </div>
            <div class="agileinfo_footer_grid1">
                <a href="#">
                    <img src="/static/images/home/f3.jpg" alt=" " class="img-responsive">
                </a>
            </div>
            <div class="agileinfo_footer_grid1">
                <a href="#">
                    <img src="/static/images/home/f4.jpg" alt=" " class="img-responsive">
                </a>
            </div>
            <div class="agileinfo_footer_grid1">
                <a href="#">
                    <img src="/static/images/home/f5.jpg" alt=" " class="img-responsive">
                </a>
            </div>
            <div class="agileinfo_footer_grid1">
                <a href="#">
                    <img src="/static/images/home/f6.jpg" alt=" " class="img-responsive">
                </a>
            </div>
            <div class="clearfix"> </div>
        </div>
        <!--联系方式-->
        <div class="col-lg-4 col-md-4 col-sm-4 footer-agile1" data-aos="zoom-in">
            <h3>联系方式</h3>
            <p>电话&nbsp;&nbsp;<span style="font-size: 22px;color: white">16587548454</span></p>
            <br>
            <p>邮件&nbsp;&nbsp;<span style="font-size: 22px;color: white">zhusihao@qq.com</span></p>
            <br>
            <p>官网&nbsp;&nbsp;<span style="font-size: 22px;color: white">www.pet.com</span></p>
            <br>
            <p><a href="${path}/admin/login" style="color: white">管理员登录</a></p>
        </div>

    </div>

</section>


<!-- js 非得用2.0版本得jQuery-->
<script src="${path}/static/js/user/jquery-2.2.3.min.js"></script>
<script src="${path}/static/bootstrap/js/bootstrap.min.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->

<!-- Banner Slider -->
<script src="${path}/static/js/user/responsiveslides.min.js"></script>
<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            pager: true,
            nav: true,
            speed: 1000,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });
    });

</script>
<!-- //Banner Slider -->

</body>
</html>
