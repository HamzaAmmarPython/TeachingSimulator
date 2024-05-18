import g4p_controls.*;
PImage bubble;
PImage img;
PImage teacherImage;
PImage teachingImage;
PImage studentImage;
String[] TeacherQuotes = new String[2];
Teacher teacher;
Teacher Snatty;
Classroom C;
String name;
String speaker[] = {"False","N/A","N/A"};
int speechCount = 0;
int numStudents = 8;
String teachingText;
Student Jeff;

void setup(){
  size(800,600);
  //Jeff.causeDisturbance(1);
  //Jeff.askQuestion(1);
  createGUI();
  C = new Classroom(numStudents);
  Jeff = new Student("Jeff Bazos");
  img = loadImage("realTeacherTemplate.png");
  studentImage = loadImage("student.png");
  teacherImage = loadImage("speech.png");
  bubble = loadImage("speech.png");
  teachingText = "";
  teachingImage = null;
  
  for (int i=0; i<8; i++) {
    C.Students[i].assignDesk();
  }
       
  //Snatty.speak();
};

void draw(){
  int x,y;
  C.drawClassroom();
  graphics();
  for(int i=0; i<3; i++) {
    for(int j=0; j<4; j++) {
      C.Desks[j][i].drawDesk();
    }
  }
  
  if (speaker[0].equals("True")){
    speechCount++;
    if(speaker[2].equals("Teacher")){
      x = 330;
      y = 100;
    }
    else{
      x = 180;
      y = 220;
    }
    if (speechCount >= 100){
       speaker[0] = "False"; 
       speechCount = 0;
     }
    image(bubble,x,y,150,75);
    textSize(8);
    text(speaker[1], x+20,y+30);
   }
}

void rest() {
  C = new Classroom(numStudents);
  for (int i=0; i<8; i++) {
    C.Students[i].assignDesk();
  }
}
