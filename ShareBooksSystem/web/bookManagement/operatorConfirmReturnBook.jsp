<%--
  Created by IntelliJ IDEA.
  User: LiuQuanwei
  Date: 2018/6/25
  Time: 11:27
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
    <title>操作员确认归还图书</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/operatorConfirmShareBook.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function confirmReturnBook(returnCode){
            if(confirm("确认信息无误")){
                location.href="operatorConfirmReturnBookAction?returnCode="+returnCode;
            }
        }
    </script>
</head>
<body>
    <div id="main">
        <div class="container" id="queryBook_title">
            <h3 class="display-5">确认归还信息</h3>
        </div>
        <div>
            <s:iterator value="#session.operatorReturnBook" status="st" var="operatorBooks" >
                <div id="bookPicture">
                    <img src='<s:property value="#operatorBooks.bookPicture"/>' alt="网络错误" referrerpolicy="no-referrer" >
                </div>
                <br/>
                <div class="form-inline">
                    <label>书名:</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <s:property value="#operatorBooks.bookName"/>
                </div>
                <br/>
                <div class="form-inline">
                    <label >作者:</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <s:property value="#operatorBooks.bookAuthor"/>
                </div>
                <br/>
                <div class="form-inline">
                    <br/>
                    <label>出版社:</label>&nbsp&nbsp&nbsp
                    <s:property value="#operatorBooks.bookPublish"/>
                </div>
                <br/>
            </s:iterator>
            <s:iterator value="#session.operatorReturnUser" status="st" var="user" >
                <div class="form-inline">
                    <label>归还者姓名:</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <s:property value="#user.userName"/>
                </div>
                <br/>
                <div class="form-inline">
                    <label >归还者学号:</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <s:property value="#user.userIdentity"/>
                </div>
                <br/>
            </s:iterator>
            <span class="text-danger"><s:property value="#session.operatorConfirmReturnBookError"/></span>
            <div id="twoButton">
                <a class="btn btn-primary" href="javascript:confirmReturnBook('<s:property value="#session.operatorReturnCode"/>')" role="button" id="confirm">确认归还</a>
                <a class="btn btn-primary" href="operatorReturnBook.jsp" role="button" id="back">返回</a>
            </div>
        </div>

    </div>
    <% session.removeAttribute("operatorConfirmReturnBookError"); %>
</body>
</html>
