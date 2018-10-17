int r=60;
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
  Flower1 = new myFlower(_r,_petalsnumber,_ballX,_ballY,_picturecolor);
}

void draw(){
  Flower1.flower();
}  
 
