package Tester;

import java.sql.*;
import java.util.Scanner;
import com.mysql.cj.protocol.Resultset;

public class Tester {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab02", "root", "root" );
            Statement statement= con.createStatement();
            Statement statement1= con.createStatement();
            Statement statement2= con.createStatement();
            Statement statement3= con.createStatement();
            Statement statement4= con.createStatement();

            ResultSet resultSet = statement.executeQuery("select * from student");
            ResultSet resultSet1 = statement1.executeQuery("select * from sec");
            ResultSet resultSet2 = statement2.executeQuery("select * from teacher");
            ResultSet resultSet3 = statement3.executeQuery("SELECT * FROM student WHERE section=1");
            ResultSet resultSet4 = statement4.executeQuery("SELECT * FROM student WHERE section=2");

            System.out.println("Press 1 to login as a student");
            System.out.println("Press 2 to login as a teacher");
            System.out.println("Press 3 to register as a student");
            int userInput = sc.nextInt();
            if (userInput == 3) {
                System.out.println("Name:");
                String regName = sc.next();
                System.out.println("ID:");
                String regId = sc.next();
                System.out.println("Email:");
                String regEmail = sc.next();
                System.out.println("Pass:");
                String regPass = sc.next();
                String s= "insert into student(Name, SId, Email, Password) values (?,?,?,?)";
                PreparedStatement preparedStatement= con.prepareStatement(s);
                preparedStatement.setString(1, regName);
                preparedStatement.setString(2, regId);
                preparedStatement.setString(3, regEmail);
                preparedStatement.setString(4, regPass);
                preparedStatement.executeUpdate();

            }
            else if (userInput == 1) {
                System.out.println("Email:");
                String logEmailStudent = sc.next();
                System.out.println("Pass:");
                String logPassStudent = sc.next();
                while(resultSet.next()){
                    if (logEmailStudent.equals(resultSet.getString("Email"))){
                        if(logPassStudent.equals(resultSet.getString("Password"))){
                            System.out.println("Login Successful");
                            int id=resultSet.getInt("SId");
                            resultSet1.next();
                            System.out.print(resultSet1.getString("SecName")+" ");
                            System.out.print(resultSet1.getString("Time")+" ");
                            System.out.print(" Remaining Seats: ");
                            int seats1= resultSet1.getInt("SeatNo");
                            System.out.print(seats1);
                            System.out.println();
                            int secNo1= resultSet1.getInt("numb");
                            resultSet1.next();
                            System.out.print(resultSet1.getString("SecName")+" ");
                            System.out.print(resultSet1.getString("Time")+" ");
                            System.out.print(" Remaining Seats: ");
                            int seats2= resultSet1.getInt("SeatNo");
                            System.out.print(seats2);
                            System.out.println();
                            System.out.println("Choose your section");
                            int secNo2= resultSet1.getInt("numb");
                            int secChoice = sc.nextInt();
                            if(secChoice==secNo1){
                                seats1--;
                                String u= "UPDATE lab02.sec SET SeatNo=? WHERE SecName = 'Section-01';";
                                PreparedStatement section= con.prepareStatement(u);
                                section.setInt(1,seats1);
                                section.executeUpdate();
                                String u1= "UPDATE lab02.student SET section=? WHERE SId = ?;";
                                PreparedStatement i= con.prepareStatement(u1);
                                i.setInt(1,secNo1);
                                i.setInt(2,id);
                                i.executeUpdate();
                                System.out.println("Seat Updated");

                            }
                            else{
                                seats2--;
                                String u= "UPDATE lab02.sec SET SeatNo=? WHERE SecName = 'Section-02';";
                                PreparedStatement section= con.prepareStatement(u);
                                section.setInt(1,seats1);
                                section.executeUpdate();
                                String u1= "UPDATE lab02.student SET section=? WHERE SId = ?;";
                                PreparedStatement i= con.prepareStatement(u1);
                                i.setInt(1,secNo2);
                                i.setInt(2,id);
                                i.executeUpdate();
                                System.out.println("Seat Updated");
                                System.out.println("Seat Updated");
                            }


                        }
                    }

                    System.out.println();

                }
            }
            else if (userInput == 2) {
                System.out.println("Email:");
                String logEmailTeacher = sc.next();
                System.out.println("Pass:");
                String logPassTeacher = sc.next();
                while(resultSet2.next()){
                    if (logEmailTeacher.equals(resultSet2.getString("Email"))){
                        if(logPassTeacher.equals(resultSet2.getString("Pass"))){
                            System.out.println("Login Successful");
                            System.out.println("Which section list do you want to see?");
                            int input = sc.nextInt();
                            if(input==1) {
                                while (resultSet3.next()) {
                                    System.out.print("SID   ");
                                    System.out.println("Section");
                                    System.out.print(resultSet3.getString("SId"));
                                    System.out.print("   ");
                                    System.out.println(resultSet3.getString("section"));

                                }
                            }
                                else if(input==2){
                                    while (resultSet4.next()) {
                                        System.out.print("SID   ");
                                        System.out.println("Section");
                                        System.out.print(resultSet4.getString("SId"));
                                        System.out.print("   ");
                                        System.out.println(resultSet4.getString("section"));

                                    }
                                }
                        }
                    }
                }

            }
            else {
                System.out.println("Wrong input please try again!");
            }
        }
        catch(Exception e)
        {
            System.err.println(e);
        }
    }
}

