  float x = 1;
  
  void setup() {
    size(600, 600);
    rectMode(CENTER);
  }
  
  void draw() {
    background(133, 0, 75);
    stroke(255, 0, 0);
    strokeWeight(8);
    fill(100, 127, 255);
    rect(width/3, x+2, 10, 10);
  }
