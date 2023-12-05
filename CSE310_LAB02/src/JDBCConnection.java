import javax.swing.*;
import java.sql.*;
import java.util.Scanner;

public class JDBCConnection {
    public static void main(String[] args){
        Scanner sc= new Scanner(System.in);
        try{
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_summer", "root", "root" );
            Statement statement= con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from student");
            while(resultSet.next()){
                System.out.print(resultSet.getInt("sid")+" ");
                System.out.print(resultSet.getString("name")+" ");
                System.out.print(resultSet.getString("")+" ");
                System.out.println();

            }
            System.out.println("1----------------------------");
            for(int i=0;i<2;++i){
                System.out.println("Please enter your name");
                String name= sc.nextLine();
                System.out.println("Please enter your department");
                String dept= sc.nextLine();
                String s= "insert into student(name, dept) values (?,?)";
                PreparedStatement preparedStatement= con.prepareStatement(s);
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, dept);
                preparedStatement.executeUpdate();


            }
            System.out.println("2----------------------");
            statement= con.createStatement();
            resultSet = statement.executeQuery("select *from student");
            while(resultSet.next()){
                System.out.print(resultSet.getInt("sid")+" ");
                System.out.print(resultSet.getString("name")+" ");
                System.out.print(resultSet.getString("dept")+" ");
            }
        }
        catch(Exception e){
            System.err.println(e);
        }
    }

}

