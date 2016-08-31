
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="zn-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <title>博客管理</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<body>
<div class="container">
    <h1 class="text-center">博客管理</h1>
    <hr>

    <h3>所有博客<a href="${pageContext.request.contextPath}/root/blogs/add" type="button" class="btn btn-primary btn-sm">添加</a> </h3>

    <%--如果列表为空--%>
    <c:if test="${empty blogList}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicin glyphicon-info-sign" aria-hidden="true"></span>
            博客列表为空，请<a href="${pageContext.request.contextPath}/root/blogs/add" type="button" class="btn btn-primary btn-sm">添加</a>
        </div>
    </c:if>

    <c:if test="${!empty blogList}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>ID</th>
                <th>标题</th>
                <th>发布日期</th>
                <th>分类</th>
                <th>操作</th>
            </tr>

            <c:forEach items="${blogList}" var="blog">
                <tr>
                    <td>${blog.id}</td>
                    <td>${blog.title}</td>
                    <td><fmt:formatDate value="${blog.date}" pattern="yyyy-MM-dd"/> </td>
                    <td>${blog.kinds}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/root/blogs/show/${blog.id}" type="button" class="btn btn-sm btn-success">详情</a>
                        <a href="${pageContext.request.contextPath}/root/blogs/update/${blog.id}" type="button" class="btn btn-sm btn-warning">修改</a>
                        <a href="${pageContext.request.contextPath}/root/blogs/delete/${blog.id}" type="button" class="btn btn-sm btn-danger">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</div>
</body>
</html>
