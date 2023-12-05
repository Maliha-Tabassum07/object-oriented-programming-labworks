<%--
  Created by IntelliJ IDEA.
  User: DOLPHIN
  Date: 8/16/2022
  Time: 1:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <link rel= "stylesheet" type= "text/css" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="login-box" style="color: darkred">
        <div class="row">
            <div class="col-md-6 login-right" >
                <h1 style="font-size:28px; color: black"><b><u>Krishok Registration</u></b></h1>
                <form method="POST" action="reg.jsp" style="font-size:12px" >
                    <div class="form-group">
                        <label>Name:</label>
                        <input type="text" name="user" class="form-control" recquired >
                    </div>
                    <div class="form-group">
                        <label>Password: </label>
                        <input type="password" name="password" class="form-control" recquired>
                    </div>
                    <div class="form-group">
                        <label>NID:</label>
                        <input type="number" name="NID" class="form-control" recquired>
                    </div>
                    <div class="form-group">
                        <label>Email:</label>
                        <input type="text" name="email" class="form-control" recquired>
                    </div>
                    <div class="form-group">
                        <label>Phone No:</label>
                        <input type="text" name="phone" class="form-control" recquired>
                    </div>
                    <div class="form-group">
                        <label>USER Type: </label>

                        <select name="type"  >
                            <option value="Farmer">Farmer</option>
                            <option value="Buyer">Buyer</option>
                        </select>
                    </div>


                    <button type="submit" class="btn btn-Success">Register</button>


</form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
