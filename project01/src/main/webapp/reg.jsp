
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="connnect.ConnectionPro"%>
<%@page import="java.sql.*" %>
<%@page errorPage="error.jsp" %>


<%
    String name=request.getParameter("user");
    String password=request.getParameter("password");
    String nid=request.getParameter("NID");
    String email=request.getParameter("email");
    String phone=request.getParameter("phone");
    String type=request.getParameter("type");

    try {
        Connection con = ConnectionPro.getCon();
        PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?)");

        ps.setString(1, phone);
        ps.setString(2, name);
        ps.setString(3, email);
        ps.setString(4, password);
        ps.setString(5, type);
        ps.setString(6, nid);
        ps.executeUpdate();
        response.sendRedirect("loginPage.jsp?msg=successful");
    }
    catch (Exception e){
        response.sendRedirect("loginPage.jsp?msg=error");
    }


%>