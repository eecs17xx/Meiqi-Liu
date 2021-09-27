 PImage img;
 PFont font;
 int fontSize = 24;
 String message1 = "Hi!";
 String message2 = "Good Bey"
 
 void setup() {
   size(800, 500, 250);
   frameRate(60);
   
   img = loadImage("Image 1.jpeg");
   
   font = createFont("English is hard", fontSize);
   textFont(font, fontSize);
   textAlign(CENTER);
   
   background(100, 20,160);
 }
 
 void draw(){
   if (mousePressed) {
    if (mouseX < width/2) {
      fill(255, 0, 0);
      text(message1, mouseX, mouseY);
    } else {
      fill(0, 0, 255);
      text(message2, mouseX, mouseY);
    }
  }
  
  line(width/2, 0, width/2, height);
  println(mouseX);
  
  surface.setTitle("" + frameRate);
}
