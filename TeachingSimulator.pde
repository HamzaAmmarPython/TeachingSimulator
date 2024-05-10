void setup(){
  Student Jeff = new Student("Jeff Bezos");
  Jeff.causeDisturbance(2);
  Jeff.askQuestion(2);
  
  String[] DaSilvaQuotes = {"That's Beatiful", "Taylor Swift"};
  Teacher DaSilva = new Teacher("Mr. DaSilva", DaSilvaQuotes);
  DaSilva.speak();
  exit();
};
