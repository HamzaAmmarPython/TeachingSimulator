class Teacher{
  String name, subject;
  String[] answers;
  
  Teacher(String n, String[] a, String s){
    this.name = n;
    this.answers = a;
    this.subject = s;
  }
  void draw(){
    
  }
  void speak(){
     speaker[0] = "True";
     speaker[1] = this.answers[round(random(0,1))];
     speaker[2] = "Teacher";


  } 
  
  void introduction(){
    println("Hello my name is", this.name, "and I am your", this.subject);
  }

  
  } 
