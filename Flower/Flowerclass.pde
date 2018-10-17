class myFlower{

float r;
int petalsnumber;
float x;
float y;
int piccolor;

myFlower(float temp_r, int temp_petalsnumber, float temp_x, float temp_y, int temp_piccolor){
 r = temp_r;
 petalsnumber = temp_petalsnumber;
 x = temp_x;
 y = temp_y;
 piccolor = temp_piccolor;
}

void flower(){
  fill(#E3E802);
  for (float i=0;i<PI*2;i+=2*PI/petalsnumber) {
  ballX = x + r*cos(i);
  ballY = y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(#FF0000);
  ellipse(x,y,r*1.2,r*1.2);
}
}
