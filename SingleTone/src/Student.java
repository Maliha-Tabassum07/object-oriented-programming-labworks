public class Student {
    private String name;
    private static Student s =null;// as it is need to accessed from static method
    private Student(String name){
        this.name=name;

    }
    public static Student getStudent(String name){
        if(s==null){
            s =new Student(name);
        }
        return s;

    }
    public String getName(){
        return name;

    }
    public static void destroyStudent(){
        s=null;
    }
}
