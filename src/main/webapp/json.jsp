<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/26
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<head>
    <title>Title</title>
    <script src="${path}/jquery-3.4.1.min.js"></script>
</head>
<body>
<script type="text/javascript">
    <!--定义JSON数组-->

    var jsonArr = ["张三","李四","王五","赵六"];
</script>
<a href="javascript:sendJson()">发送Json数据</a>
<script type="text/javascript">
    <!--发送json数据到servlet处理 -->
    function sendJson() {
        $.ajax({
            type: "POST",
            url: "${path}/get/json",
            data: {
                'jsonObj': JSON.stringify(jsonArr) //将原始json对象转为String
            },
            success: function (msg, status) {
                alert("请求提交后得到了成功的响应");
            }
        });
    }
</script>
</body>
</html>
