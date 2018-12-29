int r=60; //radius of circles
float speedX = 1; //movement speed on x axis
float speedY = 1; //movement speed on y axis
float ballX = width / 2; //place of the circles on x axis
float ballY = height / 2; // place of the circles on y axis
myFlower Flower1; //object of the flower

void setup() {
  size(1500,800);
  background(#4BCB2F);
  int _r=60;
  float _ballX = width / 2;
  float _ballY = height / 2;
  int _petalsnumber = 6;
  int _picturecolor = #E3E802;
  float _speedX = 1;
  float _speedY = 1;
  Flower1 = new myFlower(_r,_petalsnumber,_ballX,_ballY,_picturecolor, _speedX, _speedY);
}

void draw(){
  Flower1.flower();
  Flower1.bounce();
}  
 
