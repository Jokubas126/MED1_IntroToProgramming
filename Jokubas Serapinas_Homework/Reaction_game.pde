int count = 0;
int left;
int k = 0;
int i = 0;

float x;
float y;
float r;
float randomtimer = random (3000, 6000);
float lasttime = millis();
float toclick;

float[] time = new float[2];

Circle  circles;

void setup(){
  size(1000,600);
  background(255,200,200);
  noFill();
  strokeWeight(2);
  circles = new Circle(x,y,r,toclick);
  circles.randoms();
  circles.display();
  for (i=0; i<2; i++){
    time[i] = 0;
  }
  i=1;
  textSize(40);
  text("Click on appearing circles as fast as you can ;)", 50, height/2-20, width - 20, height / 2 + 20);
  textSize(20);
  text("Click on a circle to begin", width / 2 - 100, height / 2 + 50);
}

void draw(){
  left();
  timecheck();
}
