<%--
  Created by IntelliJ IDEA.
  User: DOLPHIN
  Date: 8/23/2022
  Time: 2:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body style="background-color: lightgoldenrodyellow">
<div style="background-image: url('Farmer.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%; height: 100px; width: 100%;" class="container">
    <div class="info" style="color: black">
        <div  class="row" >
            <div style="text-align: center" class="col-md-6 login-right">
                <h1 style="font-size:28px">Krishok</h1>
            </div>
        </div>
    </div>
    <div >
        <div class="col-md-6 login-right">
            <span style="float:left;">
            <form action="ProfilePage.jsp" style="text-align: left">
                <button type="submit" style="font-size:20px">Buyer Profile</button>
            </form>
                </span>
            <span style="float:right;">
                     <form action="Logout.jsp" >
                <button type="submit" style="font-size:20px">Logout</button>
            </form>
            </span>
            <span>
                <div class="form-group">
                <select name="type" class="btn btn-primary" >
                    <option >Update</option>
                    <option >Report</option>
                </select>
            </div>
            </span>


        </div>

        </div>
    </div>


<div style="text-align: center">

    <form action="FindProd.jsp" >
        <button type="submit" style="font-size:20px;background-color:darkgreen">FIND PRODUCTS</button>
    </form>
</div>
</body>
</html>
