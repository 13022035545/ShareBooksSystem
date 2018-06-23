<%--
  Created by IntelliJ IDEA.
  User: LiuQuanwei
  Date: 2018/6/21
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <title>title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/bookManagement/css/manager_top.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function exit() {
            if(confirm("你确定退出登陆吗？")){
                location.href="managerExitLogin";
            }
        }
    </script>
</head>
<body >
    <div id="top" class="bg-primary text-white">
        <div id="loginMessage">
            <span class="text-white" id="loginMessageP">欢迎你:&nbsp&nbsp<s:property value="#session.managerLoginName"/></span>
            <a class="text-white" href="javascript:exit()" role="button" id="back">Exit</a>
        </div>
    </div>
</body>
</html>
