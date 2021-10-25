class Hotdog{
  
  float x;
  float y;
  float xspeed;
  float hotdogsize;
  int er = 5;
  
  Hotdog(float tempD){
    x=width;
    y=random(height);
    xspeed=random(2,6);
    hotdogsize=tempD;
  }
  
  void circle(){
    //ellipse
  stroke(255);
  ellipse(160,mouseY+40,er,er);
  }
  
  void left(){
    x=x-xspeed;
  }
  
  void game(){
    image(hotdog,x,y,hotdogsize,hotdogsize/2);
		if(x < 0){
			x = width;
		}
    }
  
  void disappear(){
    float d=dist(x,y,hotdogsize,160,mouseY+40,er);
    if(d<hotdogsize+er){
      x=(width);
      y=random(height);
    }
  }
}