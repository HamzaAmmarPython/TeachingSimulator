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
     println(this.answers[round(random(0,1))]);
  } 
  
  void introduction(){
    println("Hello my name is", this.name, "and I am your", this.subject);
  }
  
  void teach(){
    switch (subject){
      case "Math":
        text("y = mx + b", 400,130);
        //println("The slope does slope stuff and slopes all over the place");
        break;  
      
      case "Chemistry":
        text("O--C--O", 400, 130);
        //println("Carbon bonds with 2 oxygen atoms to make CO2");
        break;
        
      case "CS":
        break;
        
  }
  
  } 
}
