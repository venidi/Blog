<%--
  Created by IntelliJ IDEA.
  User: venidi
  Date: 16-8-19
  Time: 下午8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>添加博客</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="text-center">添加博客</h1>
    <hr/>
    <form:form action="/root/blogs/addP" method="post" commandName="blog" role="form">
        <div class="form-group">
            <label for="title">Title:</label>
            <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title:"/>
        </div>
        <div class="form-group">
            <%--<label for="kinds">Kind:</label>--%>
            <%--<input type="text" class="form-control" id="kinds" name="kinds" placeholder="Enter Kind:"/>--%>
            <select class="form-control" id="kinds" name="kinds" >
                <option>干货</option>
                <option>摄影</option>
                <option>随笔</option>
                <option>其他</option>
            </select>
        </div>

        <div class="form-group">
            <label for="content">Content:</label>
            <textarea class="form-control" id="content" name="content" rows="20" placeholder="Please Input Content"></textarea>
        </div>
        <%--<div class="form-group">--%>
            <%--<label for="date">Publish Date:</label>--%>
            <%--<input type="date" class="form-control" id="date" name="date"/>--%>
        <%--</div>--%>
        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success center-block">提交</button>
        </div>
    </form:form>
</div>
<%--!-- jQuery文件。务必在bootstrap.min.js 之前引入 --%>
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
