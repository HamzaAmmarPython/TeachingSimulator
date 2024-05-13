String[] DaSilvaQuotes = {"That's Beatiful", "Taylor Swift"};
String[] SnattyQuotes = {"Why?", "Join Track"};
Teacher DaSilva = new Teacher("Mr. DaSilva", DaSilvaQuotes, "Math");
Teacher Snatty = new Teacher("Mr. Snatty", SnattyQuotes, "Chemistry");
void setup(){
  size(800,800);
  Student Jeff = new Student("Jeff Bezos");
  Jeff.causeDisturbance(2);
  Jeff.askQuestion(2);
  
  

  Snatty.speak();
};
void draw(){
  graphics();
  Snatty.teach();
}
