class Student{
  String[] questions = loadStrings("Question.txt");
  String[] disturbances = loadStrings("Disturbances.txt");

  int grade; //As mark gets lower, rowdiness of each student gets higher
  String name;
  String curDisturbances[] = new String[4];

  
  Student(String n){
    this.name = n;
    this.grade = 75; //Starting grade is always a 75, can go up or down
  }
  //Disturbance and question will be randomized once a list of these messages is made
  void causeDisturbance(int classIndex){
     for (int i = 0; i < 4; i++){
       if (i < 2){
         this.curDisturbances[i] = this.disturbances[i];
       }
       else{
         this.curDisturbances[i] = this.disturbances[classIndex*2 + (i-2)];
       }
     }
     println(curDisturbances);
     String randomMessage = "THIS CLASS SUCKS!";
     println(randomMessage);
  }
  
  void askQuestion(){
    String question = "Can I go to the bathroom?";
    println(question);
  }
}


Student Jeff = new Student("Jeff Bezos");
Jeff.causeDisturbance(1);
Jeff.askQuestion();

exit();
