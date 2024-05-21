//Classroom class, mainly for drawing the classroom and the students
class Classroom {
    //Initialises the parameters
    Student[] Students;
    float gradeAverages;
    String[] StudentNames = loadStrings("Names.txt");
    Desk[][] Desks = new Desk[4][3];
    
    // Constructor
    Classroom(int numberOfStudents, float r) {
      this.gradeAverages = 0;
      this.Students = new Student[numberOfStudents];
      
      for(int i=0; i<3; i++) {
        for(int j=0; j<4; j++) {
           Desks[j][i] = new Desk(j,i);
         }
       }
      
      int randomNameOffSet = int(random(11));
      for (int i=0; i<numberOfStudents; i++) {
        this.Students[i] = new Student(this.StudentNames[randomNameOffSet+i],r);
       }
      
   }
    //Function to draw all of the parts of a classroom
    void drawClassroom() {
      //walls
      background(252,248,237);
      stroke(244,234,223);
      line(150,80,150,250);
      line(700,80,700,250);
      
      //roof
      fill(192,203,213);
      stroke(134,118,111);
      strokeWeight(6);
      quad(-450,-100,1000,10,700,80,150,80);
      
      //floor
      fill(206);
      stroke(105,79,54);
      strokeWeight(6);
      quad(-200,900,1000,580,700,250,150,250);
      
      //door
      fill(181,150,129);
      stroke(105,79,54);
      strokeWeight(6);
      quad(720,270,720,160,760,160,760,315); //door
      
      fill(240);
      noStroke();
      quad(730,220,730,170,750,170,750,227); //window
      
      //window
      fill(250);
      stroke(105,79,54);
      strokeWeight(6);
      quad(-10,340,-20,150,80,160,80,260);
      
      fill(40,33,32);
      noStroke();
      circle(745,240,8); //knob
      
      //white board
      fill(0,50,0);
      stroke(105,79,54);
      strokeWeight(4);
      rect(350,110,200,80);
      
      //teacher desk
      stroke(126);
      strokeWeight(4);
      line(192,260,192,295);
      line(278,260,278,295);
      line(293,235,293,270);
      noStroke();
      fill(138, 100, 55);
      quad(205,230,295,230,280,260,190,260);
      rect(190,260,90,20);
      quad(295,230,295,255,280,280,280,255);
      
      //student view grid
      stroke(10);
      fill(190);
      rect(800,-10,310,610);
      for (int i=1;i<12;i++) {
        line(800,50*i,1100,50*i);
      }
      
      //Class average
      stroke(10);
      fill(255);
      rect(593, 135, 80, 45);
      fill(10);
      textSize(10);
      text("Grade Average",600,148);
      textSize(12);
      text(round(this.gradeAverages)+"%",625,166);
    }

    // Set grade average
    void setGradeAverage() {
      this.gradeAverages = 0;
        for (int i=0; i < numStudents; i++) {
          this.gradeAverages += Students[i].grade;
        }
        
        this.gradeAverages /= numStudents;
    }
}
