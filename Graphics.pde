//Draws some of the basics (teacher, lesson, and the teacher template
void graphics(){
  //Teacher
  image(teacherImage, 300,145,45,75);
    image(img, 280, 50);
    text(teachingText, 400,130);
    if (teachingImage != null)
      image(teachingImage, 380,137, 120,55);
}
