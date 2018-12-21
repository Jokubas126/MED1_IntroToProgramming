class Arrow{
  //x and y coordinates for guns left upper corner
  float x = 50;
  float y = 0;
  
  //size of the gun
  float sizeX=100;
  float sizeY=5;
  
  
  void display(){
    fill(#000000);
    stroke(#000000);
    rectMode(CENTER);
    rect(x,y,sizeX,sizeY);
  }
  
}
