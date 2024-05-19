class Teacher{
  String name, subject;
  String[] answers;
  Boolean teaching;
  
  Teacher(String n, String[] a, String s){
    this.name = n;
    this.answers = a;
    this.subject = s;
    this.teaching = false;
  }
  
  void drawTeacher(){
    //Teacher
    image(teacherImage, 300,145,45,75);
    image(img, 280, 50);
    textSize(15);
    text(teachingText, 400,130);
    if (teachingImage != null)
      image(teachingImage, 380,137, 120,50);
  }
  
  void speak(){
     speaker[0] = "True";
     speaker[1] = this.answers[round(random(0,1))];
     speaker[2] = "Teacher";
  } 
  
  void introduction(){
    println("Hello my name is", this.name, "and I am your", this.subject);
  }

  
  } 
