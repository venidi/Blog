<%--
  Created by IntelliJ IDEA.
  User: venidi
  Date: 16-8-20
  Time: 上午8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>修改博客</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>

</head>
<body>
<div class="container">
    <h1 class="text-center">修改博客</h1>
    <hr>
    <form:form action="${pageContext.request.contextPath}/root/blogs/updateP" method="post" commandName="blogP" role="form">
        <div class="form-group">
            <label for="title">Title:</label>
            <input type="text" class="form-control" id="title" name="title" value="${blogsEntity.title}" />
        </div>
        <%--<div class="form-group">--%>
                <%--&lt;%&ndash;<label for="kinds">Kind:</label>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<input type="text" class="form-control" id="kinds" name="kinds" placeholder="Enter Kind:"/>&ndash;%&gt;--%>
            <%--<select class="form-control" id="kinds" name="kinds" >--%>
                <%--<option>干货</option>--%>
                <%--<option>摄影</option>--%>
                <%--<option>随笔</option>--%>
                <%--<option>其他</option>--%>
            <%--</select>--%>
        <%--</div>--%>

        <div class="form-group">
            <label for="content">Content:</label>
            <textarea class="form-control" id="content" name="content" rows="20" >${blogsEntity.content}</textarea>
        </div>
        <%--<div class="form-group">--%>
        <%--<label for="date">Publish Date:</label>--%>
        <%--<input type="date" class="form-control" id="date" name="date"/>--%>
        <%--</div>--%>

        <input type="hidden" id="id" name="id" value="${blogsEntity.id}">

        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success">提交</button>
        </div>
    </form:form>
</div>
</body>
</html>
