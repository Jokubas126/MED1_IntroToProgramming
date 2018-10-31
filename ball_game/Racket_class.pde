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
  
  void display(float yracket, int i){ //function for making rackets
  rect (xracket, yracket, racketwidth, racketheight); //rectangles on the left and then right side
  }
  
  void moveup(float y, int i){
  background(#A0A2C6);
  y = y - speed; //racket moving up
  if (i == 0){
    rackets[i].display(y, i);
  }
  i = 1;
  rackets[i].display(yracket, i);
  ball.display();
  //score();
  //changeHit();
 }
  }
  
  void movedown(float y, int i){
  background(#A0A2C6);
  y = y + speed; //racket moving down
  if (i == 0){
    rackets[i].display(y, i);
    i = 1;
    rackets[i].display(y, i);
  }
  if (i == 1){
  rackets[i].display(yracket[i], i);
  i = 0;
  rackets[i].display(yracket[i], i);
  }
  ball.display();
  //score();
  //changeHit();
 }
 
 /*
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
*/
//}
