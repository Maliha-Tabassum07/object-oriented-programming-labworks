package test;
import java.util.Scanner;
import model.*;
import service.Student_Service;

public class Tester {
    public static void main(String[] args){
      Scanner sc= new Scanner(System.in);
          System.out.println("Press 1 to login as a student");
          System.out.println("Press 2 to login as a teacher");
          System.out.println("Press 3 to register as a student");
          System.out.println("Press 4 to register as a teacher");
          int userInput= sc.nextInt();
          if (userInput==3){
              System.out.println("Name:");
              String regName= sc.next();
              System.out.println("ID:");
              String regId= sc.next();
              System.out.println("Email:");
              String regEmail= sc.next();
              System.out.println("Pass:");
              String regPass= sc.next();
              Student S1= new Student(regName,regEmail,regPass);
          }
          else if (userInput==1) {
              System.out.println("Email:");
              String logEmailStudent= sc.next();
              System.out.println("Pass:");
              String logPassStudent= sc.next();
              Student_Service SS= new Student_Service(logEmailStudent,logPassStudent);
          }
          else if (userInput==2) {
              System.out.println("Email:");
              String logEmailTeacher= sc.next();
              System.out.println("Pass:");
              String logPassTeacher= sc.next();
          }
          else if (userInput==4) {
              System.out.println("Name:");
              String regNameTeacher= sc.next();
              System.out.println("Email:");
              String regEmailTeacher= sc.next();
              System.out.println("Pass:");
              String regPassTeacher= sc.next();
              Teacher T1= new Teacher(regNameTeacher,regEmailTeacher,regPassTeacher);
          }
          else{
              System.out.println("Wrong input please try again!");
          }
    }
}
