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

    ResultSet rs = st.executeQuery("SELECT * from product WHERE farmer='" + name+"'");

%>
<html>
<head>
    <title>Product List</title>
</head>
<style>
    body {
        background-color: darkseagreen;

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
<h1>Product ID: <%=pId%>-----Product Name:
    <%=pname%>----- Amount: <%=quantity%>-----Price:  <%=price%>
</h1>

<%}%>

</body>

</html>
