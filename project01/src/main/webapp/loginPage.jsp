<%--
  Created by IntelliJ IDEA.
  User: DOLPHIN
  Date: 8/22/2022
  Time: 11:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<style>
    body {
        background-image: url('Farmer.jpg');
    }
</style>

<body>
<div class="container">
    <div class="info" style="color: darkred">
        <div class="row">
            <div class="col-md-6 login-right" >
                <h1 style="font-size:28px">Krishok Login</h1>
                <form method="POST" action="login.jsp" style="font-size:12px" >

                        <div class="form-group">
                            <label>Email:</label>
                            <input type="text" name="email" class="form-control" recquired>
                        </div>
                    <div class="form-group">
                        <label>Password: </label>
                        <input type="password" name="password" class="form-control" recquired>
                    </div>
                    <button type="submit" class="btn btn-primary">Login</button>

                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
