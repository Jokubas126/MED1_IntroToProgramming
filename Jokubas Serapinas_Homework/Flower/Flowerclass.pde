class myFlower{

float r;
int petalsnumber;
float x;
float y;
float speedX;
float speedY;

myFlower(float temp_r, int temp_petalsnumber, float temp_x, float temp_y, int temp_piccolor, float temp_speedX, float temp_speedY){
 r = temp_r;
 petalsnumber = temp_petalsnumber;
 x = temp_x;
 y = temp_y;
 speedX = temp_speedX;
 speedY = temp_speedY;
}

//function for displaying the flower
void flower(){
  background(#4BCB2F);
  fill(#E3E802);
  for(float i=0; i<PI*2; i+=2*PI/petalsnumber){
    ballX = x + r*cos(i) + speedX;
    ballY = y + r*sin(i) + speedY;
    x = x + speedX;
    y = y + speedY;
    ellipse(ballX,ballY,r,r); //the petals
  }
  
  fill(#FF0000);
  ellipse(x,y,r,r); //the middle
}

//function for bouncing from the edges
void bounce(){
 if(ballX < 0 || ballX > width){
   speedX = speedX * -1;
 }
 if(ballY < 0 || ballY > height){
   speedY = speedY * -1;
 } 
}
}
