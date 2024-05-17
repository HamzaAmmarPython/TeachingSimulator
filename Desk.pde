class Desk {
  Student s;
  PVector pos, numDesk;
  
  Desk(int column,int row) {
    this.numDesk = new PVector(column-2,row);
    this.pos = new PVector(200+125*column,310+85*row);
  }
  
  void drawDesk() {
    //desks
    stroke(126);
    strokeWeight(4);
    line(this.pos.x+3,this.pos.y+40,this.pos.x+3,this.pos.y+60);
    line(this.pos.x+67,this.pos.y+40,this.pos.x+67,this.pos.y+60);
    line(this.pos.x+67+4*(this.numDesk.x),this.pos.y+5,this.pos.x+67+4*(this.numDesk.x),this.pos.y+35);
    line(this.pos.x+3+4*(this.numDesk.x),this.pos.y+5,this.pos.x+3+4*(this.numDesk.x),this.pos.y+35);
    noStroke();
    fill(138, 100, 55);
    rect(this.pos.x+20,this.pos.y+20,35,30);
    fill(232,172,97);
    quad(this.pos.x+70+4*(this.numDesk.x),this.pos.y,this.pos.x+70+4*(this.numDesk.x),this.pos.y+15,this.pos.x+70,this.pos.y+40,this.pos.x+70,this.pos.y+30);
    quad(this.pos.x+4*(this.numDesk.x),this.pos.y,this.pos.x+4*(this.numDesk.x),this.pos.y+15,this.pos.x,this.pos.y+40,this.pos.x,this.pos.y+30);
    quad(this.pos.x+4*(this.numDesk.x),this.pos.y,this.pos.x+70+4*(this.numDesk.x),this.pos.y,this.pos.x+70,this.pos.y+30,this.pos.x,this.pos.y+30);
    rect(this.pos.x,this.pos.y+30,70,10);
    stroke(227,162,87);
    line(this.pos.x+3,this.pos.y+30,this.pos.x+67,this.pos.y+30);

    //chairs
    stroke(126);
    strokeWeight(4);
    line(this.pos.x+21,this.pos.y+30,this.pos.x+21,this.pos.y+70);
    line(this.pos.x+53,this.pos.y+30,this.pos.x+53,this.pos.y+70);
    noStroke();
    fill(138, 100, 55);
    rect(this.pos.x+20,this.pos.y+15,35,15);
  }
}