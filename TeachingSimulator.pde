import g4p_controls.*;
PImage bubble;
String[] DaSilvaQuotes = {"That's Beatiful", "Taylor Swift"};
String[] SnattyQuotes = {"Why?", "Join Track"};
Teacher DaSilva = new Teacher("Mr. DaSilva", DaSilvaQuotes, "Math");
Teacher Snatty = new Teacher("Mr. Snatty", SnattyQuotes, "Chemistry");
String speaker[] = {"False","N/A","N/A"};
int speechCount = 0;
Student Jeff;

void setup(){
  size(800,600);
  //Jeff.causeDisturbance(1);
  //Jeff.askQuestion(1);
  createGUI();
  Jeff = new Student("Jeff Bezos");
  bubble = loadImage("speech.png");
  //Snatty.speak();
};

void draw(){
  int x,y;
  
  graphics();
  Snatty.teach();
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
