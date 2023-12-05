<%--
  Created by IntelliJ IDEA.
  User: DOLPHIN
  Date: 8/30/2022
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="connnect.ConnectionPro"%>
<%@page import="java.sql.*" %>
<%@page errorPage="error.jsp" %>

<%


    Connection con = ConnectionPro.getCon();
    Statement st = con.createStatement();
    String name= session.getAttribute("name").toString();
    String pname="";
    int quantity=0;
    String price="";
    int pId=0;

    ResultSet rs = st.executeQuery("SELECT * from product");

%>
<html>
<head>
    <title>Product List</title>
</head>
<style>
    body {
        background-image:url("crops.jpg"); background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%;

    }
</style>
<body>
<%while (rs.next()){%>
<%
    pId =rs.getInt("idproduct");
    pname=rs.getString("name");
    quantity=rs.getInt("quantity");
    price=rs.getString("price");
%>
<div style="background: rgba(76, 175, 80, 0.6)">
    <h1>Product ID: <%=pId%></h1>
    <h1>Product Name: <%=pname%></h1>>
    <h1>Amount Available: <%=quantity%></h1>>
    <h1>Price:  <%=price%> </h1>
    <form action="Order.jsp">
        <button type="submit" style="font-size:20px;background-color:olivedrab">Buy</button>
    </form>>

</div>>


<%}%>

</body>

</html>

