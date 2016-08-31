<%--
  Created by IntelliJ IDEA.
  User: venidi
  Date: 16-8-19
  Time: 下午5:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="zn-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <title>My Blog</title>
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<body>
<div class="container">
    <h1>Venidi</h1>
    <span class="pull-right"><a href="/root/homepage/login" type="button" class="btn btn-primary btn-sm">Login</a> </span>
    <%--如果列表为空--%>
    <c:if test="${empty blogList}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicin glyphicon-info-sign" aria-hidden="true"></span>博客列表为空，请<a href="/root/blogs/add" type="button" class="btn btn-primary btn-sm">添加</a>
        </div>
    </c:if>
    <c:if test="${!empty blogList}">
        <table class="table table-striped">
            <tr>
                <th>标题</th>
                <th class="text-center">分类</th>
            </tr>

            <c:forEach items="${blogList}" var="blog">
                <tr>
                    <td><a href="/root/blogs/show/${blog.id}">${blog.title}</a> </td>
                    <td class="text-center">${blog.kinds}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</div>
</body>
</html>
