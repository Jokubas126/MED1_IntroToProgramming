class Flower{
 
  float x; // position on x axe of ellipse
  float y; // position on y axe of ellipse
  float Py; // position on y axe of petal
  float Px; // position on x axe of petal
  int r=20; // size of 1 ellipse
  int arrayPosition;
  int petalNumber = 6; // petal amount
  
  Flower(float temp_x, float temp_y, int temp_arrayPosition){
    x = temp_x;
    y = temp_y;
    arrayPosition = temp_arrayPosition;
  }
  
  void display(){
    fill(#FFFFFF);
    ellipse(x,y,r,r);
    fill(#4DFF08);
    for (int i=0; i<petalNumber; i++){
      Px = x + r * sin(i);
      Py = y + r * cos(i);
      ellipse(Px,Py,r,r);
    }
  }
}
