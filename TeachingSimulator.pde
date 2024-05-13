String[] DaSilvaQuotes = {"That's Beatiful", "Taylor Swift"};
Teacher DaSilva = new Teacher("Mr. DaSilva", DaSilvaQuotes, "Math");
void setup(){
  size(800,800);
  Student Jeff = new Student("Jeff Bezos");
  Jeff.causeDisturbance(2);
  Jeff.askQuestion(2);
  
  

  DaSilva.speak();
};
void draw(){
  graphics();
    DaSilva.teach();
}
