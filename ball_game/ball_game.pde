//ask if I want 2 rackets to move seperately, is it possible to do the same class for both of them with the same constructor


int ballsize = 40;
int racketwidth = 15, racketheight = 150;
int width = 1000, height = 800;
int score1 = 0, score2 = 0;

float convert = -1;
float yballspeed = 1, xballspeed = 1;
float accelerate = 0.2;
float speed = 7;
float xracket1 = 0, xracket2 = width - 15;
float xball = width / 2, yball = height / 2;
float yracket1 = height / 2, yracket2 = height / 2;
float t = 0;

boolean hit1 = false;
boolean hit2 = false;

Ball ball;

Racket[] rackets = {new Racket(xracket1,  yracket1, racketwidth, racketheight, speed), 
  new Racket (xracket2, yracket2, racketwidth, racketheight, speed)};
//Racket racket2;

void setup(){
  size(1000,800);
  background(#A0A2C6); //background color - bright brown
  strokeWeight(1);
  fill(#000EFC);
  ball = new Ball(ballsize, xball, yball, yballspeed, xballspeed, accelerate, convert, t, yracket1, yracket2);
  rackets = new Racket[1]
  
  
  //racket2 = new Racket(xracket2, yracket2, racketwidth, racketheight, speed);
}

void draw(){
  background(#A0A2C6);
  fill(#165234);
  score();
  
  racket1.display();//rectangles on the left and then right side
  racket1.move();
  
  racket2.display();
  racket2.move();
  //
  ball.display();
  ball.changeDirection();
  //ball.trajectory(); 
  //ball.acceleration();
  
  changeHit();
}
