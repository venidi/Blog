<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: venidi
  Date: 16-8-20
  Time: 上午10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
    <div id="loginModal" class="modal show">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close">x</button>
                    <h1 class="text-center text-primary">登录</h1>
                </div>
                <div class="modal-body">
                    <form:form  action="${pageContext.request.contextPath}/root/homepage/loginP"  method="post" commandName="user" role="form">
                        <div class="form-group">
                            <div class="col-sm-10 center-block">
                                <input type="text" class="form-control input-lg" id="username" name="username" placeholder="Username">
                            </div>
                        </div>
                        <br>
                        <div class="form-group">
                            <div class="col-sm-10 center-block">
                                <input type="password" class="form-control input-lg" id="password" name="password"  placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                                <button  class="btn btn-primary btn-block">登录</button>
                        </div>
                        </div>
                    </form:form>
                </div>
                <div class="modal-footer">

                </div>
            </div>
        </div>



</body>
</html>
