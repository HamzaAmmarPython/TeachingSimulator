void setup() {
  size(800,600);
  background(252,248,237);
}

void draw() {
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
  quad(-200,670,1000,580,700,250,150,250);
  
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
  quad(30,275,25,150,100,160,100,230);
  
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
  
  int x = 130;
  int y = 310;
  for(int i=0; i<3; i++) {
    for(int j=-2; j<3; j++) {
      //desks
      stroke(126);
      strokeWeight(4);
      line(x+3,y+40,x+3,y+60);
      line(x+67,y+40,x+67,y+60);
      line(x+67+4*(-j),y+5,x+67+4*(-j),y+35);
      line(x+3+4*(-j),y+5,x+3+4*(-j),y+35);
      noStroke();
      fill(138, 100, 55);
      rect(x+20,y+20,35,30);
      fill(232,172,97);
      quad(x+70+4*(-j),y,x+70+4*(-j),y+15,x+70,y+40,x+70,y+30);
      quad(x+4*(-j),y,x+4*(-j),y+15,x,y+40,x,y+30);
      quad(x+4*(-j),y,x+70+4*(-j),y,x+70,y+30,x,y+30);
      rect(x,y+30,70,10);
      stroke(227,162,87);
      line(x+3,y+30,x+67,y+30);
      
      //chairs
      stroke(126);
      strokeWeight(4);
      line(x+21,y+30,x+21,y+70);
      line(x+53,y+30,x+53,y+70);
      noStroke();
      fill(138, 100, 55);
      rect(x+20,y+15,35,15);
      
      
      x += 125;
    }
    y += 85;
    x = 130;
  }
}
