package model;
import service.Student_Service;
public class Student {
    private String name;
    private String id;
    private String email;
    private String pass;
    public Student(String name, String email, String pass){
        this.name=name;
        this.id=id;
        this.email=email;
        this.pass=pass;
        Student_Service SS= new Student_Service(this.name, this.email,this.pass);

    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
    public String getId(){
        return id;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPass() {
        return pass;
    }

    @Override
    public String toString() {
        return "Student{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", pass='" + pass + '\'' +
                '}';
    }
}
