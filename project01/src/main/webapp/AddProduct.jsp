<%--
  Created by IntelliJ IDEA.
  User: DOLPHIN
  Date: 8/30/2022
  Time: 1:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="product-box" style="color: darkred">
        <div class="row">
            <div class="col-md-6 product-right" >
                <h1 style="font-size:28px; color: black"><b><u>Products</u></b></h1>
                <form method="POST" action="prod.jsp" style="font-size:12px" >
                    <div class="form-group">
                        <label>Your Name:</label>
                        <input type="text" name="Name" class="form-control" recquired >
                    </div>
                    <div class="form-group">
                        <label>Name of Product:</label>
                        <input type="text" name="productName" class="form-control" recquired >
                    </div>
                    <div class="form-group">
                        <label>Quantity: </label>
                        <input type="number" name="quantity" class="form-control" recquired>
                    </div>
                    <div class="form-group">
                        <label>Price:</label>
                        <input type="text" name="price" class="form-control" recquired>
                    </div>


                    <button type="submit" class="btn btn-Success">ADD</button>


                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
