<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Book List</title>
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
                    <a href="<c:url value="/index.html"/> ">主页</a>
                </li>
                <li class="active">
                    <a href="<c:url value="/booklist.html"/> ">参考图书</a>
                </li>
                <li>
                    <a href="<c:url value="addbook.html"/> ">新增图书</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<table class="table table-hover col-sm-10">
    <h2>Book List</h2>
    <thead>
    <tr>
        <th>ISBN</th>
        <th>Name</th>
        <th>Price</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
    <tr>
        <td>${book.isbn}</td>
        <td>${book.name}</td>
        <td>${book.price}</td>
    </tr>
    </c:forEach>
</table>
</body>

</html>