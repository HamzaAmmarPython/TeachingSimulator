class Teacher{
  String name;
  String[] answers;
  
  Teacher(String n, String[] a){
    this.name = n;
    this.answers = a;
  }
  
  void speak(){
     println(this.answers[round(random(0,1))]);
  } 
  
  
  
}
