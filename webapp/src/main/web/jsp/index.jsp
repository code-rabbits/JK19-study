<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta  http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Java EE程序设计</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="jumbotron text-center" style="margin-bottom:0;color:#158bb8">
    <h1>Java EE程序设计</h1>
</div>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">JavaEE</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="#">主页</a>
                </li>
                <li>
                    <a href="<c:url value="/booklist.html"/>">参考图书</a>
                </li>
                <li>
                    <a href="<c:url value="/addbook.html"/>">新增图书</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-sm-5">
            <h2>关于教材</h2>
            <div class="fakeimg"><img src="./img/JavaEE.jpg" /> </div>
            <h3>课程内容链接</h3>
            <ul class="nav nav-pills nav-stacked">
                <li class="active">
                    <a href="https://lib-nuanxin.xuetang.wqketang.com/course/87518" target="_blank">文泉课堂</a>
                </li>
                <li>
                    <a href="https://canvas.zut.edu.cn/courses/717" target="_blank">Canvas</a>
                </li>
                <li>
                    <a href="https://gitee.com/zut-cs-427" target="_blank">Gitee</a>
                </li>
            </ul>
        </div>
        <div class="col-sm-7">
            <h2>核心内容</h2>
            <div id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="./img/Mybatis.png" alt="First slide">
                    </div>
                    <div class="item">
                        <img src="./img/Spring.png" alt="Second slide">
                    </div>
                    <div class="item">
                        <img src="./img/SpringMvc.jpg" alt="Third slide">
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev"> <span _ngcontent-c3="" aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span></a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
            </div>
        </div>
    </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
    <p>中原工学院 计算机学院 计算机科学与技术系</p>
</div>
</body>

</html>