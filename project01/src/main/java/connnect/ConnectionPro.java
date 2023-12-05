package connnect;
import java.sql.*;
import java.lang.*;

public class ConnectionPro {
    public static Connection getCon(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishok","root","root");
            return con;
        }catch(Exception e){
            System.err.print(e);
            return null;
        }
    }
}
