// gzc exercise_wsc
PImage wsc;
PImage hotdog;
int hotdognumber=3;

//how many hotdogs[largest]
Hotdog[] hg = new Hotdog[200];

void setup(){
  size(600,300);
  
  wsc = loadImage("wsc.png");
  hotdog = loadImage("hotdog.png");
  
  //available hotdog_size
  for(int i=0;i<hg.length;i++){
    hg[i] = new Hotdog(45);
  } 
}

void mousePressed(){
  
  if(mousePressed&&(mouseButton == LEFT)){
    hotdognumber=hotdognumber+1;
  }else if(mousePressed&&(mouseButton == RIGHT)){
    hotdognumber=hotdognumber-1;
  }
}

void draw(){
  background(255);
  
  hg[1].circle();
  //wsc
  image(wsc,50,mouseY,150,90);
  
  for(int i=0;i<hotdognumber;i++){
  hg[i].left();
  hg[i].game();
  hg[i].disappear();
  }
}