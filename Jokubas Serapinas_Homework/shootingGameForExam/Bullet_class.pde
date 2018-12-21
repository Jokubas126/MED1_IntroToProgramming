class Bullet{
  
  float bulletX = 110;
  float bulletY = 0;
  float size = 30;
  float speed = 2;
  float xSpeed;
  float ySpeed;
  float x = 110;
  float y = 110;
  
  boolean show;
  
  color bulletColor;
  
  Bullet(color temp_color){
    bulletColor = temp_color;
  }
  
  void display(){
    noStroke();
    fill(bulletColor);
    ellipse(bulletX, bulletY,size,size);
  }
  
  void move(){
    bulletX += xSpeed;
    bulletY += ySpeed;
  }
  
  void checkBool(){
    if (bulletX > width){
      show = false;
    }
  }
  
  void speed(float angle){
    xSpeed = speed * cos(angle);
    ySpeed = speed * sin(angle);
  }
  
  void onGun(float gunAngle, float aVelocity){
    if((gunAngle <= 0 && aVelocity <= 0) || (gunAngle >= 0 && aVelocity >= 0)){ 
      bulletX = x * cos(gunAngle);
      
    }
    else{ 
      bulletX = x * cos(gunAngle);
    }
    if(aVelocity >= 0){
      bulletY = y * sin(gunAngle);
    } else bulletY = y * sin(gunAngle);
  }
}
