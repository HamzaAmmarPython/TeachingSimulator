class Teacher{
  String name, subject;
  String[] answers;
  
  Teacher(String n, String[] a, String s){
    this.name = n;
    this.answers = a;
    this.subject = s;
  }
  
  void speak(){
     println(this.answers[round(random(0,1))]);
  } 
  
  void introduction(){
    println("Hello my name is", this.name, "and I am your", this.subject);
  }
  
  
  
}
