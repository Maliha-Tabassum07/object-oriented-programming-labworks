<%--
  Created by IntelliJ IDEA.
  User: DOLPHIN
  Date: 8/23/2022
  Time: 3:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>

<html>
<head>
    <title>ErrorDetection</title>
    <style>
        *{
            padding: 0px;
            margin: 0px;
        }

    </style>
</head>
<body>
<div style="padding:24px;color: blue; background: bisque ">
    <h1> There is an error! </h1>

    <br>
    <p> Note: <%= exception%>  </p>


    </br>
</div>

</body>
</html>