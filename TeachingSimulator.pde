import g4p_controls.*;
PImage bubble;
PImage img;
PImage teacherImage;
PImage teachingImage;
String[] TeacherQuotes = new String[2];
Teacher teacher;
Teacher Snatty;
String name;
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
=======
>>>>>>> Stashed changes
String teachingText;
Teacher DaSilva = new Teacher("Mr. DaSilva", DaSilvaQuotes, "Math");
Teacher Snatty = new Teacher("Mr. Snatty", SnattyQuotes, "Chemistry");
>>>>>>> d4830ee323c231463076351c7165ae0cfa1a4a01
String speaker[] = {"False","N/A","N/A"};
int speechCount = 0;
int numStudents = 8;
Desk[][] D = new Desk[4][3];
Student[] S;

void setup(){
  size(800,600);
  
  for(int i=0; i<3; i++) {
    for(int j=0; j<4; j++) {
        D[j][i] = new Desk(j,i);
      }
    }
  //Jeff.causeDisturbance(1);
  //Jeff.askQuestion(1);
  createGUI();

  img = loadImage("realTeacherTemplate.png");
  teacherImage = loadImage("speech.png");
  teachingText = "";
  teachingImage = null;
  //Snatty.speak();
};

void draw(){
  int x,y;
  
  graphics();
<<<<<<< Updated upstream
  //Snatty.teach();
=======
<<<<<<< HEAD
  for(int i=0; i<3; i++) {
    for(int j=0; j<4; j++) {
      D[j][i].drawDesk();
    }
  }
  
=======
  //Snatty.teach();
>>>>>>> d4830ee323c231463076351c7165ae0cfa1a4a01
>>>>>>> Stashed changes
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
  
};
