<%--
  Created by IntelliJ IDEA.
  User: zyh
  Date: 2017/7/5
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>会员中心</title>
    <script src="http://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="http://cdn.amazeui.org/amazeui/2.7.2/css/amazeui.min.css">
    <link rel="stylesheet" href="../../css/head.css">
    <link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <script src="http://cdn.amazeui.org/amazeui/2.7.2/js/amazeui.min.js"></script>
</head>
<body>
<div class="am-g head">
    <div class="am-u-sm-12 am-text-center">
        <span class="am-u-sm-4 am-text-left"><i class="fa fa-angle-left" aria-hidden="true"></i> 返回</span>
        <span class="am-u-sm-4 title">会员中心</span>
        <span class="am-u-sm-4 am-text-right"></span>
    </div>
</div>
<div class="am-g am-text-sm">
    <div class="content">
        <div class="am-text-lg am-padding-sm">
            <span>会员级别：
                <c:if test="${user.levenl==1}">
                <span class="am-text-danger">项目负责人</span>
                </c:if>
                <c:if test="${user.levenl==2}">
                 <span class="am-text-danger">高级合伙人</span>
                </c:if>
                 <c:if test="${user.levenl==3}">
                <span class="am-text-danger">合伙人</span>
                 </c:if>
            </span>
        </div>
        <div class="am-u-sm-12 am-text-center am-margin-bottom">
            <div>我的邀请码</div>
            <pre class="am-text-xl"><span class="am-text-danger">${user.userCode}</span></pre>
        </div>
        <div class="am-u-sm-12">用户手机号：${user.phoneNumber} <span class="am-text-secondary">修改</span></div>
        <div class="am-u-sm-12">邮箱：${user.email} <span class="am-text-secondary">修改</span></div>
        <div class="am-u-sm-12">身份证号码：${user.idNumber}</div>
        <div class="am-u-sm-12">性别：
            <c:if test="${user.gender==1}">
                女
            </c:if>
            <c:if test="${user.gender==0}">
                男
            </c:if>
        </div>

        <div class="am-u-sm-12">年龄：${user.age}</div>
        <c:if test="${user.gender==1}">
        <div class="am-u-sm-12">地址：${user.address}</div>
        </c:if>
    </div>
    <div class="am-u-sm-12 am-margin-top">
        <div>本月销售统计<a class="am-fr">更多></a></div>
        <div>我销售的服务包：220个</div>
        <div>我的团队销售的服务包：220个</div>
    </div>
</div>
</body>
</html>
