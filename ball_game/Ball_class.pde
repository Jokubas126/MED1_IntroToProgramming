class Ball{
  
  int ballsize;
  
  float xball;
  float yball;
  float yballspeed;
  float xballspeed;
  float accelerate;
  float convert;
  float t;
  float yracket1;
  float yracket2;
  
  Ball(int temp_ballsize, float temp_xball, float temp_yball, float temp_yballspeed, float temp_xballspeed, float temp_accelerate, float temp_convert, float temp_t, float temp_yracket1, float temp_yracket2){
    ballsize = temp_ballsize;
    xball = temp_xball;
    yball = temp_yball;
    yballspeed = temp_yballspeed;
    xballspeed = temp_xballspeed;
    accelerate = temp_accelerate;
    convert = temp_convert;
    t = temp_t;
    yracket1 = temp_yracket1;
    yracket2 = temp_yracket2;
  }
  
  void display(){ //function for making a ball
  ellipse(xball, yball, ballsize, ballsize); // ball which always moves
  xball = xball + xballspeed; //makes ball moving
  yball = yball + yballspeed;
}



void trajectory(){
 if (xball < width / 2){
   for (float traj1 = height - racket1.yracket + racket1.racketheight / 2; traj1 <= height - racket1.yracket + racket1.racketheight; traj1 += 2){
     t = t + 0.5;
     if (traj1 == yball || traj1 == yball + 1 ){
       yballspeed = yballspeed + t;
    }
   }
   for (float traj1 = height - racket1.yracket + racket1.racketheight / 2; traj1 >= height - racket1.yracket; traj1 -= 2){
     t = t + 0.5;
     if (traj1 == yball || traj1 == yball + 1 ){
       yballspeed = yballspeed - t;
    }
   }
 }
 else if (xball > width / 2){
   for (float traj2 = height - racket2.yracket + racket2.racketheight / 2; traj2 <= height - racket2.yracket + racket2.racketheight; traj2 += 2){
     t += 0.5;
     if (traj2 == yball || traj2 == yball + 1){
       yballspeed = yballspeed + t;
    }
   }
   for (float traj2 = height - racket2.yracket + racket2.racketheight / 2; traj2 >= height - racket2.yracket; traj2 -= 2){
     t += 0.5;
     if (traj2 == yball || traj2 == yball + 1){
       yballspeed = yballspeed - t;
    }
   }
 }
 t = 0; //makes t into 0 after using it
}



void changeDirection(){
  if (xball > width / 2){
    if (yball >= racket2.yracket && yball <= racket2.yracket + racket2.racketheight){
      if (xball > width - (ballsize / 2) - racket2.racketwidth){
       xballspeed = xballspeed * convert;//change direction on x axe
       hit2 = !hit2;
       score();
      }
    }
  }
  if (xball < width / 2){
    if ((yball >= racket1.yracket && yball <= racket1.yracket + racket1.racketheight)){
      if (xball < ballsize / 2 + racket1.racketwidth){
        xballspeed = xballspeed * convert;//change direction on x axe
        hit1 = !hit1;
        score();
      }
    }
  }
  if (yball > height || yball < 0){
   yballspeed = yballspeed * convert; // change direction on y axe
  }
  if (xball >= width-3 || xball <= 3){ 
    gameOver();
    }
}



void acceleration(){
  if (xballspeed > 0){
  xballspeed = xballspeed + accelerate;
  }
  else xballspeed = xballspeed - accelerate;
}
}
