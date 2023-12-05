<%@page import="connnect.ConnectionPro"%>
<%@page import="java.sql.*" %>
<%@page errorPage="error.jsp" %>

<%


        Connection con = ConnectionPro.getCon();
        Statement st = con.createStatement();
        String semail= session.getAttribute("email").toString();
        String name="";
        String phone="";
        String nid="";
        String accType="";

        ResultSet rs = st.executeQuery("SELECT * from user WHERE email='" + semail + "' ");

        while (rs.next()) {
             name=rs.getString("name");
             phone=rs.getString("phone");
             nid=rs.getString("NID");
             accType=rs.getString("type");

        }

%>
<html>
<head>
    <title>Profile</title>
</head>
<style>
    body {
        background-color: darkseagreen;

    }
</style>
<body>
<h1>Name:
    <%=name%>
</h1>
<h1>Email:
    <%=semail%>
</h1>
<h1>Phone:
    <%=phone%>
</h1>
<h1>NID:
    <%=nid%>
</h1>
<h1>Account Type:
    <%=accType%>
</h1>
</body>

</html>
