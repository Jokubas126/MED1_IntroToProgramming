int count = 0;
int left;
int k = 0; // k can be equal to 0 or to 1. It becomes 1 temporary, when it goes to timecheck() with value of 0
int i = 0; // used in "for" loops for time[]
int clicks = 0; // used with starttime checks how many clicks are made

float x; //rectangle's x coordinate
float y; // rectangle's y coordinate
float r; // rectangles width and height, which are the same to make it a square
float randomtimer = random (3000, 6000);
float starttime; // time used at the start of the program. It is used to take out the time used at the start at the game from the whole time
float lasttime = 0; // the last time that mouse was clicked, which is used with randomtimer to make square appear on random time
float toclick; // the last time, when mouse was clicked


float[] time = new float[2]; //time[0] is summed up time and time[1] is time gap between each click 

Rectangle  rectangles;

void setup(){
  size(1000,600);
  background(255,200,200);
  noFill();
  strokeWeight(2);
  rectangles = new Rectangle(x,y,r);
  rectangles.randoms();
  rectangles.display();
  for (i=0; i<2; i++){
    time[i] = 0;
  }
  i=1;
  textSize(40);
  text("Click on appearing rectangles as fast as you can ;)", 50, height/2-20, width - 20, height / 2 + 20);
  textSize(20);
  text("Click on a rectangle to begin", width / 2 - 100, height / 2 + 50);
}

void draw(){
  left(); //counts how many clicks for the game left and displays then in the upper left corner
  timecheck(); // makes random rectangles if k = 0, which becomes 0 after mousePressed() function
}
