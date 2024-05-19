import g4p_controls.*;
PImage bubble,img,teacherImage,teachingImage,studentImage;
String[] TeacherQuotes = new String[2];
Teacher teacher;
Classroom C;
String name;
String speaker[] = {"False","N/A","N/A"};
int speechCount = 0;
int numStudents = 8;
int randomStudent;
String teachingText;

void setup(){
  size(800,600);
  
  createGUI();
  C = new Classroom(numStudents);
  
  TeacherQuotes[0] = "Why?";
  TeacherQuotes[1] = "Join Track!";
  name = "Mr. Snatty";  
  teacherImage = loadImage("ChemistryTeacher.png");
  teachingText = "O -- C -- O";
  teachingImage = null;
  teacher = new Teacher(name, TeacherQuotes, subjectSelect.getSelectedText());
  
  img = loadImage("realTeacherTemplate.png");
  studentImage = loadImage("student.png");
  bubble = loadImage("speech.png");
  
  for (int i=0; i<8; i++) {
    C.Students[i].assignDesk();
  }
       
  //Snatty.speak();
};

void draw(){
  int x,y;
  C.drawClassroom();
  teacher.drawTeacher();
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
  C = new Classroom(numStudents);
  for (int i=0; i<8; i++) {
    C.Students[i].assignDesk();
  }
}
