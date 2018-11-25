class Object{
 
  float x; // position on x axes of ellipse
  float y; // position on y axes of ellipse
  int r=20; // size of 1 ellipse
  int arrayPosition;
  
  Object(float temp_x, float temp_y, int temp_arrayPosition){
    x = temp_x;
    y = temp_y;
    arrayPosition = temp_arrayPosition;
  }
  
  void display(){
    fill(#FFFFFF);
    ellipse(x,y,r,r);
  }
}
