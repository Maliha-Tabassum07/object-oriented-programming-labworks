<%--
  Created by IntelliJ IDEA.
  User: DOLPHIN
  Date: 8/31/2022
  Time: 2:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order</title>
</head>
<body>
<div class="container">
    <div class="login-box" style="color: darkred">
        <div class="row">
            <div class="col-md-6 login-right" >
                <h1 style="font-size:28px; color: black"><b><u>Order Info</u></b></h1>
                <form method="POST" action="preorder.jsp" style="font-size:12px" >
                    <div class="form-group">
                        <label>User Name:</label>
                        <input type="text" name="name" class="form-control" recquired >
                    </div>
                    <div class="form-group">
                        <label>Phone No: </label>
                        <input type="text" name="phone" class="form-control" recquired>
                    </div>
                    <div class="form-group">
                        <label>Email:</label>
                        <input type="text" name="email" class="form-control" recquired>
                    </div>
                    <div class="form-group">
                        <label>Delivery Address:</label>
                        <input type="text" name="address" class="form-control" recquired>
                    </div>

                    <div class="form-group">
                        <label>Product ID:</label>
                        <input type="number" name="PID" class="form-control" recquired>
                    </div>
                    <div class="form-group">
                        <label>Quantity:</label>
                        <input type="number" name="quan" class="form-control" recquired>
                    </div>
                    </div>
            <div class="form-group">
                <label>Payment Options: </label>

                <select name="type"  >
                    <option value="Bkash">Bkash</option>
                    <option value="Nagad">Nagad</option>
                </select>
            </div>


            <button type="submit" class="btn btn-Success">Pre-Order</button>


                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>

