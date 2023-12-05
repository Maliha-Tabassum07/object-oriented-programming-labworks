package service;
public class Teacher_Service {
    private String[] name= new String[15];
    private String[] mail= new String[15];
    private String[] pass= new String[15];
    public int counter=0;
    public Teacher_Service(String name,String email,String pass ){
        this.name[counter]=name;
        this.mail[counter]=email;
        this.pass[counter]=pass;
        counter++;
    }
    public Teacher_Service(String email, String pass){
        boolean f= false;
        for(int i=0;i<=counter;i++){
            if(mail[i]==email){
                if(this.pass[i]==pass){
                    System.out.println("Student "+this.name[i]+" exists in this section");
                    f=true;
                }
                else{
                    System.out.println("Pass Doesn't match");
                }
            }

        }
        if (f==false){
            System.out.println("Account doesn't exist. Please Register!");
        }

    }
}
