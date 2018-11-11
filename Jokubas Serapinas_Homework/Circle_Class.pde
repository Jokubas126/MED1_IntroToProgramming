class Circle{
  
  float x;
  float y;
  float r;
  float time;
  
  Circle (float temp_x, float temp_y, float temp_r, float temp_time){
   x = temp_x;
   y = temp_y;
   r = temp_r;
   time = temp_time;
  }
  
  void display(){
    noFill();
    rect(x,y,r,r);
    toclick = millis();
  }
  
  void randoms(){
    circles.r = random(40, 100);
    circles.x = random(0,width - r);
    circles.y = random(0,height - r);
  }
  
  void movement(){} //start to move after 5 clicks
}
