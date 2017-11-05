<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
        <meta http-equiv="Cache-Control" content="no-siteapp"/>

        <link rel="stylesheet" type="text/css" href="/static/plugins/H-ui/css/H-ui.min.css"/>
        <link rel="stylesheet" type="text/css" href="/static/plugins/H-ui/css/H-ui.admin.css"/>
        <link rel="stylesheet" type="text/css" href="/static/plugins/H-ui/css/iconfont.css"/>
        <link rel="stylesheet" type="text/css" href="/static/plugins/H-ui/css/skin.css" id="skin"/>

        <title>kkbook</title>
    </head>
    <body>
        <header class="navbar-wrapper">
            <div class="navbar navbar-fixed-top">
                <div class="container-fluid cl">
                    <a class="logo navbar-logo f-l mr-10 hidden-xs">kkbook</a>
                    <a class="logo navbar-logo-m f-l mr-10 visible-xs">book</a>
                    <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>

                    <nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
                        <ul class="cl">
                            <li>超级管理员</li>
                            <li class="dropDown dropDown_hover">
                                <a href="#" class="dropDown_A">root <i class="Hui-iconfont">&#xe6d5;</i></a>
                                <ul class="dropDown-menu menu radius box-shadow">
                                    <li><a href="javascript:;">个人信息</a></li>
                                    <li><a href="#">切换账户</a></li>
                                    <li><a href="logout">退出</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <aside class="Hui-aside">
            <div class="menu_dropdown bk_2">
                <dl id="menu-article">
                    <dt>
                        <i class="Hui-iconfont">&#xe616;</i>资讯管理
                        <i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
                    </dt>
                    <dd>
                        <ul>
                            <li>
                                <a data-href="/jsp/hello.jsp" data-title="资讯管理" href="javascript:void(0)">资讯管理</a>
                            </li>
                        </ul>
                    </dd>
                </dl>
            </div>
        </aside>
        <div class="dislpayArrow hidden-xs">
            <a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a>
        </div>
        <section class="Hui-article-box">
            <div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
                <div class="Hui-tabNav-wp">
                    <ul id="min_title_list" class="acrossTab cl">
                        <li class="active">
                            <span title="首页" data-href="welcome.html">首页</span>
                        </li>
                    </ul>
                </div>
                <div class="Hui-tabNav-more btn-group">
                    <a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:void (0);">
                        <i class="Hui-iconfont">&#xe6d4;</i>
                    </a>
                    <a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:void (0);">
                        <i class="Hui-iconfont">&#xe6d7;</i>
                    </a>
                </div>
            </div>
            <div id="iframe_box" class="Hui-article">
                <div class="show_iframe">
                    <div style="display:none" class="loading"></div>
                    <iframe scrolling="yes" frameborder="0" href="/login.jsp"></iframe>
                </div>
            </div>
        </section>

        <script type="text/javascript" src="/static/js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="/static/plugins/H-ui/js/H-ui.min.js"></script>
        <script type="text/javascript" src="/static/plugins/H-ui/js/H-ui.admin.js"></script>

    </body>
</html>
