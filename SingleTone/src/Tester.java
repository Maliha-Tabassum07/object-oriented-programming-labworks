public class Tester {
    public static void main(String[] args){
        Student s= Student.getStudent("Tom Cruise");
        System.out.println(s.getName());
        Student.destroyStudent();
        Student s1= Student.getStudent("Brat Pit");
        System.out.println(s1.getName());
        Student.destroyStudent();

    }
}
