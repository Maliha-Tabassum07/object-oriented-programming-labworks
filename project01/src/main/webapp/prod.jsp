<%--
  Created by IntelliJ IDEA.
  User: DOLPHIN
  Date: 8/30/2022
  Time: 1:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="connnect.ConnectionPro"%>
<%@page import="java.sql.*" %>
<%@page errorPage="error.jsp" %>


<%
    String name=request.getParameter("Name");
    String pname=request.getParameter("productName");
    int quantity=Integer.parseInt(request.getParameter("quantity"));
    String price=request.getParameter("price");


        Connection con = ConnectionPro.getCon();
        PreparedStatement ps = con.prepareStatement("insert into product(name, farmer, quantity, price) values('"+pname+"','"+name+"','"+quantity+"','"+price+"')");

//        ps.setString(3, name);
//        ps.setString(2, pname);
//        ps.setInt(4, quantity);
//        ps.setString(5, price);
//        //ps.setString(6, nid);
        ps.executeUpdate();
        response.sendRedirect("AddProduct.jsp?msg=successful");
//    }
//    catch (Exception e){
//        response.sendRedirect("loginPage.jsp?msg=error");
//    }


%>