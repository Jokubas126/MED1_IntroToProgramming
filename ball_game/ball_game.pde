
int ballsize = 40;
int racketwidth = 15, racketheight = 150;
int width = 1000, height = 800;
int score1 = 0, score2 = 0;

float convert = -1;
float yballspeed = 1, xballspeed = 1;
float accelerate = 0.2;
float speed = 7;
float xracket0 = 0, xracket1 = width - 15;
float xball = width / 2, yball = height / 2;
float yracket1 = height / 2, yracket2 = height / 2;
float t = 0;
float y;

//float[] xracket = {0, width - 15};
float[] yracket = {height/2, height/2};

boolean hit1 = false;
boolean hit2 = false;

Ball ball;

Racket[] rackets = {new Racket(xracket0,  yracket[0], racketwidth, racketheight, speed), 
  new Racket (xracket1, yracket[1], racketwidth, racketheight, speed)};
  


void setup(){
  size(1000,800);
  background(#A0A2C6); //background color - bright brown
  strokeWeight(1);
  fill(#000EFC);
  ball = new Ball(ballsize, xball, yball, yballspeed, xballspeed, accelerate, convert, t);
}

void draw(){
  background(#A0A2C6);
  fill(#165234);
  //score();
  for(int i=0;i<2;i++){
  rackets[i].display(yracket[i], i); //rectangles on the left and then right side
  }
  
  ball.display();
  ball.changeDirection();
  
  //ball.trajectory(); 
  //ball.acceleration();
  
  //changeHit();
}
