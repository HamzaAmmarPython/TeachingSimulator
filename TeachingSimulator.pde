import g4p_controls.*;
//Initialising some variables for students rowdiness, grades, teachers, speaking points, etc.
PImage bubble,img,teacherImage,teachingImage;
PImage[] studentImages = new PImage[3];
String[] TeacherQuotes = new String[2];
String speaker[] = {"False","N/A","N/A"};
int studentIndexes[][] = new int[3][4];
Teacher teacher;
Classroom C;
String name, teachingText;
float rowdiness = 1;
int speechCount = 0;
int numStudents = 8;
int time = 0;
int classIndex = 0;
int x, y, randomStudent;

//Setup function, sets the default teacher and their paramters
void setup(){
  size(1100,600);
  //Load the GUI, the classroom, and the framerate
  createGUI();
  C = new Classroom(numStudents,rowdiness);
  frameRate(60);
  
  //Loads the default teacher with his parameters
  TeacherQuotes[0] = "Why?";
  TeacherQuotes[1] = "Join Track!";
  name = "Mr. Snatty";  
  teacherImage = loadImage("ChemistryTeacher.png");
  teachingText = "O -- C -- O";
  teachingImage = loadImage("CO2.png");
  teacher = new Teacher(name, TeacherQuotes, subjectSelect.getSelectedText());
  
  
  //Loads the students with their randomized pictures and desks
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
};


//Draw function, runs 60 times per second
void draw(){
  //Increases the time variable by one (simulates time for randomness)
  time++;
  
  //Draws the classroom, teacher, desks and students
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
        if (teacher.teaching == true && time%50 == 0 && k != randomStudent) {
          C.Students[k].rowdiness += 0.1;
          C.Students[k].understanding ++;
        }
        else if (time%100 == 0) 
          C.Students[k].rowdiness -= 0.1;
        C.Students[k].displayStats(k);
      }
      catch (Exception e) {
        println();
      }
    }
  
  
  //Simulates random dialogue lines 
  
  //Chooses a random float from 1 to 1000, and if it is bigger than 995 then the code will continue
  if (random(1000)>995) {
    speechCount = 0;
    randomStudent = int(random(C.Students.length));
    
    //Random chance to ask a question or cause a disturbance depending on student rowdiness
    if (random(10)>C.Students[randomStudent].rowdiness) {
       C.Students[randomStudent].askQuestion(classIndex);
    }
    else {
      classIndex = subjectSelect.getSelectedIndex();
      C.Students[randomStudent].causeDisturbance(classIndex);
    }
  }
  
  
  //Code to showcase dialogue on screen
  
  //Checks when the speaker verifier is true
  if (speaker[0].equals("True")){
    //Starts counting how long the speaker has been speaking
    speechCount++;
    
    //Checks where the text bubble should be, and moves it there
    if(speaker[2].equals("Teacher")){
      //Positioning of the teacher
      x = 330;
      y = 100;
    }
    else {
      //Positioning of a random student
      x = int(C.Students[randomStudent].D.pos.x)+50;
      y = int(C.Students[randomStudent].D.pos.y)-70;
    }
    //When timer runs out, revert all speaker values to random
    if (speechCount >= 200){
       speaker[0] = "False"; 
       speaker[2] = "N/A";
       speechCount = 0;
       randomStudent = 13;
     }
     //Makes the speech bubble an adequate size for the text contained it
     if (speaker[1].length() > 9){
      image(bubble,x,y,7*speaker[1].length(),75);
    }
    else{
      image(bubble,x,y,13*speaker[1].length(),75);

    }
    //Edits the size and writes the text on the screen
    textSize(10);
    text(speaker[1], x+20,y+30);
   }
}

//reset function, resets the classroom, students and the time
void reset() {
  C = new Classroom(numStudents, rowdiness);
  for (int i=0; i<numStudents; i++) {
    C.Students[i].assignDesk();
  }
  time = 0;
  teacher.teaching = false;
}
