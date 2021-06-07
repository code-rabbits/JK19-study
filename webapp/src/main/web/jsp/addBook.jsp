<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>New Book</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="page-header" style="margin-bottom:0;color:#158bb8">
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
            <a class="navbar-brand" href="<c:url value="/index.html"/>">JavaEE</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li>
                    <a href="<c:url value="/index.html"/>">主页</a>
                </li>
                <li>
                    <a href="<c:url value="/booklist.html"/>">参考图书</a>
                </li>
                <li class="active">
                    <a href="#">新增图书</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<h2>Book Informations:</h2>
<form class="form-horizontal" role="form" method="post" action="<c:url value="/insert.html"/> ">
    <div class="form-group">
        <label for="isbn" class="col-sm-2 control-label">ISBN</label>
        <div class="col-sm-7">
            <input type="text" class="form-control" id="isbn" name="isbn" placeholder="请输入ISBN">
        </div>
    </div>
    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">Name</label>
        <div class="col-sm-7">
            <input type="text" class="form-control" id="name" name="name" placeholder="请输入Name">
        </div>
    </div>
    <div class="form-group">
        <label for="price" class="col-sm-2 control-label">Price</label>
        <div class="col-sm-7">
            <input type="text" class="form-control" id="price" name="price" placeholder="请输入price">
        </div>
        <br /><br />
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">提交</button>
            </div>
        </div>
    </div>
</form>

</body>

</html>