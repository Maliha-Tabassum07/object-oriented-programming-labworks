<%@page import="connnect.ConnectionPro"%>
<%@page import="java.sql.*" %>
<%@page errorPage="error.jsp" %>


<%
    String email=request.getParameter("email");
    String pass=request.getParameter("password");
    String name="";
        try {
            Connection con = ConnectionPro.getCon();
            Statement st = con.createStatement();
            String accType="";
            ResultSet rs = st.executeQuery("SELECT * from user WHERE email='" + email + "' and password= '" + pass + "'");
            while (rs.next()) {
 //               if (email.equals(rs.getString("email"))) {
 //                   if (pass.equals(rs.getString("password"))) {
                        accType=rs.getString("type");
                        session.setAttribute("email", email);
                        session.setAttribute("name", rs.getString("name"));
//                        response.sendRedirect("HomePage.jsp");


                if(accType.equals("Farmer")){
                    response.sendRedirect("farHomePage.jsp");
                }else{
                    response.sendRedirect("HomePage.jsp");
                }
 //                   }
 //               }
                    //else {
                    response.sendRedirect("index.jsp?msg=Doesn'tMatch");

                //}
            }
        }
        catch (Exception e){

        }



%>