class Ring{
 
  float x;
  float y;
  float sizeX = 10;
  float sizeY = 100;
  float thick = 5;
  color colour;
  
  void display(){
    strokeWeight(thick);
    stroke(colour);
    noFill();
    ellipse(x,y,sizeX,sizeY);
  }
  
  void randoms(){
    x = random(500,950);
    y = random(-300,300);
  }
  
}
