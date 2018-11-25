class Rectangle{
  
  float x;
  float y;
  float r;
  
  Rectangle (float temp_x, float temp_y, float temp_r){
   x = temp_x;
   y = temp_y;
   r = temp_r;
  }
  
  void display(){
    noFill();
    rect(x,y,r,r);
  }
  
  void randoms(){
    rectangles.r = random(40, 100);
    rectangles.x = random(0,width - r);
    rectangles.y = random(0,height - r);
  }
  
  void movement(){} //start to move after 5 clicks
}
