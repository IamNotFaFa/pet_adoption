<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 23:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>宠物知识</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>

    <!-- css files -->
    <link rel="stylesheet" href="${path}/static/bootstrap/css/bootstrap.css" type="text/css" media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${path}/static/css/user/style.css" type="text/css" media="all" />
    <link href='${path}/static/css/user/simplelightbox.min.css' rel='stylesheet' type='text/css'>
</head>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
<!-- welcome -->
<div class="about" id="about">
    <div class="container">
        <h3 class="agile-title">宠物知识</h3>
        <div class="about-top w3ls-agile">
            <div class="col-md-6 red">
                <img class="img-responsive" src="/static/images/about/ab.jpg" alt="">
            </div>
            <div class="col-md-6 come">
                <div class="about-wel">
                    <h5>领养宠物必备小知识
                        <span>Tips</span>
                    </h5>
                    <p>狗子和猫咪都是我们很好的朋友，领养他们前一定要充分的了解相关知识，
                        才能够很好的对我们的猫咪和狗子负好责任，
                        关爱动物从你我做起，他们永远是我们的好朋友！！！
                    </p>
                    <ul>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>心理健康</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>生活品质</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>饮食习惯</li>
                    </ul>
                </div>
                <div class="button-styles">
                    <a href="#cat" data-toggle="modal" data-target="#Catbtn">猫咪Tips</a>
                    <a href="#dog" data-toggle="modal" data-target="#Dogbtn">狗子Tips</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Gallery -->
<div id="gallery" class="gallery">
    <div class="container">
        <h3 class="agile-title">看看我们可爱的小动物们！！！</h3>
    </div>
    <div class="agileinfo-gallery-row">
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/c1.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/c1.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/d1.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/d1.jpg" alt="" title="Dog Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/c2.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/c2.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/d2.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/d2.jpg" alt="" title="Dog Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/c3.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/c3.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/d3.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/d3.jpg" alt="" title="Dog Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/c4.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/c4.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/d4.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/d4.jpg" alt="" title="Dog Life Image" />
            </a>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- Modal5 -->
<div class="modal fade" id="Catbtn" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-info">
                    <h4>Cat Life</h4>
                    <img src="/static/images/about/c.jpg" alt=" " class="img-responsive" />
                    <p class="para-agileits-w3layouts">
                        我们不应将小猫长时间局限于家中，它们需要定期外出，呼吸新鲜空气并自由活动，这对它们的身心健康至关重要。在日常养护中，
                        除了保证它们的基本饮食和健康需求，还应投入更多时间与它们互动和玩耍，增强它们的社交能力和活力。此外，为了维持小猫的清洁与健康，我们还必须定期为它们梳理毛发，
                        这不仅能去除杂质，预防皮肤病，还能增进与宠物的情感联系。这些细心的照料是每一位宠物主人应尽的责任，也是我们对这些小生命最基本的关爱。
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal5 -->
<div class="modal fade" id="Dogbtn" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-info">
                    <h4>Dog Life</h4>
                    <img src="/static/images/about/d.jpg" alt=" " class="img-responsive" />
                    <p class="para-agileits-w3layouts">

                        喂食时间应严格规范，尽可能遵循宠物在原主人家的饮食习惯，避免给予过多的甜食、咸食或刺激性食物。初到新家的小宠物，主人应亲自进行喂养，
                        这样不仅有助于快速建立与宠物之间的深厚情感，还能增强彼此的信任。此外，主人还需要承担帮助小动物克服分离焦虑，适应新环境的责任，
                        尽力减轻它们离开母亲的不适感。
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //Gallery -->
<!-- js -->
<script src="${path}/static/js/jquery-3.4.1.min.js"></script>
<script src="${path}/static/bootstrap/js/bootstrap.min.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->

<!-- simple-lightbox -->
<script src="${path}/static/js/user/simple-lightbox.min.js"></script>
<script>
    $(function () {
        var gallery = $('.agileinfo-gallery-row a').simpleLightbox({
            navText: ['&lsaquo;', '&rsaquo;']
        });
    });
</script>


<!-- Light-box css -->
<!-- //simple-lightbox -->

</body>
</html>
