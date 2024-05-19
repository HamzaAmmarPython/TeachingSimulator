class Student{
  String[] questions = loadStrings("Question.txt");
  String[] disturbances = loadStrings("Disturbances.txt");

  float grade,rowdiness,understanding; //As mark gets lower, rowdiness of each student gets higher
  String name;
  String curDisturbances[] = new String[4];
  Desk D;

  
  Student(String n, float r){
    this.name = n;
    this.rowdiness = round(r*random(0.9,1.1)*1000.0)/1000.0;
    this.grade = 75; //Starting grade is always a 75, can go up or down
  }
  //Disturbance and question will be randomized once a list of these messages is made
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
     println(question);
     speaker[0] = "True";
     speaker[1] = question;
     speaker[2] = "Student";
  }
  
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
  
  void displayStats(int stuNum) {
    //name
    textSize(15);
    fill(0);
    text(this.name,810,20+stuNum*50);
    fill(10);
    textSize(12);
    text("- Understanding: "+this.understanding+"      - Rowdiness: "+this.rowdiness,810,40+stuNum*50);
  
  }
}
