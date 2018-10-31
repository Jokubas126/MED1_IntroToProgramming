class Racket{
  
  int racketwidth;
  int racketheight;
  
  float xracket;
  float yracket;
  float speed;
  
  Racket(float temp_xracket, float temp_yracket, int temp_racketwidth, int temp_racketheight, float temp_speed){
    xracket = temp_xracket;
    yracket = temp_yracket;
    racketwidth = temp_racketwidth;
    racketheight = temp_racketheight;
    speed = temp_speed;
  }
  
  void display(){ //function for making rackets
  rect (xracket, yracket, racketwidth, racketheight); //rectangles on the left and then right side
  }
  
  void move(){
 if (keyCode == UP && yracket > 0){
  background(#A0A2C6);
  yracket = yracket - speed; //racket moving up
  racket2.display();
  ball.display();
  score();
  changeHit();
 }
 if (keyCode == DOWN && yracket < height - racketheight){
  background(#A0A2C6);
  yracket = yracket + speed; //right racket moving down
  racket2.display();
  ball.display();
  score();
  changeHit();
 }
 if (key == 'w' || key == 'W' && yracket > 0){
  background(#A0A2C6);
  yracket = yracket - speed; //left racket moving up
  racket1.display(); //rectangles on the left and then right side
  ball.display();
  score();
  changeHit();
 }
 if (key == 's' || key == 'S' && yracket < height - racketheight){
  background(#A0A2C6);
  yracket = yracket + speed; //left racket moving to down
  racket1.display(); //rectangles on the left and then right side
  ball.display();
  score();
  changeHit();
 }
}
}
