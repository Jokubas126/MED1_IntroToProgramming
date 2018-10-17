int r=60;
float speedX = 1;
float speedY = 1;
float ballX = width / 2;
float ballY = height / 2;
myFlower Flower1;

void setup() {
  size(1500,800);
  background(#4BCB2F);
  int _r=60;
  float _ballX = width / 2;
  float _ballY = height / 2;
  int _petalsnumber = 5;
  int _picturecolor = #E3E802;
  float _speedX = 1;
  float _speedY = 1;
  Flower1 = new myFlower(_r,_petalsnumber,_ballX,_ballY,_picturecolor, _speedX, _speedY);
}

void draw(){
  Flower1.flower();
  bounce(ballX, ballY, speedX, speedY);
}  
 
