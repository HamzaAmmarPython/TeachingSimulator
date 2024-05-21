//Student class
class Student{
  //Loads parameters
  String[] questions = loadStrings("Question.txt");
  String[] disturbances = loadStrings("Disturbances.txt");
  String curDisturbances[] = new String[4];
  float grade,rowdiness,understanding; 
  String name;
  Desk D;

  //Constructor
  Student(String n, float r){
    this.name = n;
    this.understanding = 0;
    this.rowdiness = round(r*random(0.9,1.1)*1000.0)/1000.0;
    this.grade = 75; //Starting grade is always a 75, can go up or down
  }
  
  //Causes a random disturbance from the list, depending on the class
  void causeDisturbance(int classIndex){
     classIndex++;
     for (int i = 0; i < 4; i++){
       if (i < 2){
         this.curDisturbances[i] = this.disturbances[i];
       }
       else{
         this.curDisturbances[i] = this.disturbances[classIndex*2 + (i-2)];
       }
     }
     String randomMessage = curDisturbances[int(random(0,4))];
     speaker[0] = "True";
     speaker[1] = randomMessage;
     speaker[2] = "Student";

  }
  //Asks a random question from the list, depending on the class
  void askQuestion(int classIndex){
    classIndex++;
     for (int i = 0; i < 4; i++){
       if (i < 2){
         this.curDisturbances[i] = this.questions[i];
       }
       else{
         this.curDisturbances[i] = this.questions[classIndex*2 + (i-2)];
       }
     }
     String question = curDisturbances[int(random(0,4))];    
     speaker[0] = "True";
     speaker[1] = question;
     speaker[2] = "Student";
  }
  
  //Chooses a random desk for the student
  void assignDesk() {
    while (this.D == null) {
      int randColumn = int(random(4));
      int randRow = int(random(3));
      if (C.Desks[randColumn][randRow].S == null) {
        C.Desks[randColumn][randRow].S = this;
        this.D = C.Desks[randColumn][randRow];
      }
    }
  }
  //Shows each student's statistics on the right side of the screen
  void displayStats(int stuNum) {
    //name
    textSize(15);
    fill(0);
    text(this.name,810,20+stuNum*50);
    fill(10);
    textSize(12);
    text("- Understanding: "+round(this.understanding*1000.0)/1000.0+"      - Rowdiness: "+round(this.rowdiness*1000.0)/1000.0,810,40+stuNum*50);
  
  }
}
