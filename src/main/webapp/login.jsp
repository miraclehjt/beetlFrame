<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录</title>
        <link rel="stylesheet" href="static/plugins/bootstrap/css/bootstrap.css"/>
        <style type="text/css">
            body {
                background: url(static/img/login.jpg) fixed center center no-repeat;
                background-size: cover;
                width: 100%;
                height: 100%;
                margin: 0;
                padding: 0;
            }
            .login {
                vertical-align: center;
                margin-top: 180px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-1 col-xs-1"></div>
                <div class="col-lg-3 col-md-3 col-sm-10 col-xs-10 login" style="border-radius:10px;background-color: #afb5bf;opacity: 0.7;">
                    <div class="col-lg-12 text-center text-info" style="margin-bottom: 3%;">
                        <h2>欢迎您</h2>
                    </div>
                    <form action="/dologin" method="post">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 3%;">
                            <input type="text" class="form-control" name="userName" placeholder="请输入账号">
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 3%;">
                            <input type="password" class="form-control" name="password" placeholder="请输入密码"/>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 7%;">
                            <button type="submit" name="login" class="btn btn-success btn-block">登录</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>