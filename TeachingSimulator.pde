import g4p_controls.*;
PImage bubble,img,teacherImage,teachingImage;
PImage[] studentImages = new PImage[3];
String[] TeacherQuotes = new String[2];
Teacher teacher;
Classroom C;
String name;
String speaker[] = {"False","N/A","N/A"};
int speechCount = 0;
int numStudents = 8;
int randomStudent;
float rowdiness = 1;
String teachingText;
<<<<<<< Updated upstream
int time = 0;

=======
int classIndex = 0;
int studentIndexes[][] = new int[3][4];
>>>>>>> Stashed changes
void setup(){
  size(1100,600);
  
  createGUI();
  C = new Classroom(numStudents,rowdiness);
  frameRate(60);
  
  TeacherQuotes[0] = "Why?";
  TeacherQuotes[1] = "Join Track!";
  name = "Mr. Snatty";  
  teacherImage = loadImage("ChemistryTeacher.png");
  teachingText = "O -- C -- O";
  teachingImage = loadImage("CO2.png");
  teacher = new Teacher(name, TeacherQuotes, subjectSelect.getSelectedText());
  
  img = loadImage("realTeacherTemplate.png");
  studentImages[0] = loadImage("student.png");
  studentImages[1] = loadImage("studentBehind1.png");
  studentImages[2] = loadImage("studentBehind2.png");
  bubble = loadImage("speech.png");
  for(int i=0; i<3; i++) {
    for(int j=0; j<4; j++) {
      studentIndexes[i][j] = int(random(0,3));
    }
  }  
  for (int i=0; i<numStudents; i++) {
    C.Students[i].assignDesk();
  }
       
  //Snatty.speak();
};

void draw(){
  int x,y;
  time++;
  C.drawClassroom();
  teacher.drawTeacher();
  for(int i=0; i<3; i++) {
    for(int j=0; j<4; j++) {
      C.Desks[j][i].drawDesk(studentIndexes[i][j]);
    }
  }
  for (int k=0; k<numStudents; k++) {
    try {
      //teaching 
      if (teacher.teaching == true && time%100 == 0) {
        C.Students[k].rowdiness += 0.1;
        C.Students[k].understanding ++;
      }
      else if(time%100 == 0) 
        C.Students[k].rowdiness -= 0.1;
      C.Students[k].displayStats(k);
    }
    catch (Exception e) {
      println();
    }
  }
  
  //dialogue
  if (speaker[0].equals("True")){
    speechCount++;
    if(speaker[2].equals("Teacher")){
      x = 330;
      y = 100;
    }
    else {
      x = int(C.Students[randomStudent].D.pos.x)+60;
      y = int(C.Students[randomStudent].D.pos.y)-70;
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
  C = new Classroom(numStudents, rowdiness);
  for (int i=0; i<numStudents; i++) {
    C.Students[i].assignDesk();
  }
  time = 0;
  teacher.teaching = false;
}
