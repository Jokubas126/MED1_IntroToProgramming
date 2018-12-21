int maxNumBullets = 10000; //maximum amount of bubbles to shoot
int number = 0; //starting point of bubbles for array of them
int n = 0; //number for where should for loop start
int numTarget = 6; 
int score = 0;
int targetRow;
int maxTargetRow = 60000;

float angle = 0.0; //angle of how much the coordinate system is turned
float aVelocity = 0.01; // amount of angular velocity which adds up to "angle"
float[] indepAngle = new float[maxNumBullets]; //array of angles which all bubbles have independently

boolean scored;
Ring[][] target = new Ring[maxTargetRow][numTarget];

Arrow gun = new Arrow(); 

int numColor = 3;
color[] colors = new color[numColor];
color bulletColor;
Bullet[] bullets = new Bullet[maxNumBullets]; //array of class for bullets (balls)


void setup(){
  size(1000,600);
  noStroke();
  translate(0,height/2);
  colors[0] = #FF0000;
  colors[1] = #00FF00;
  colors[2] = #0000FF;
  for (int i=0; i<maxNumBullets; i++){
    int index = (int)random(colors.length);
    bulletColor = colors[index];
    bullets[i] = new Bullet(bulletColor);
  }
  for (int i=0; i<maxTargetRow; i++){
    for (int ii=0; ii<numTarget; ii++){
       target[i][ii] = new Ring();
       int index = (int)random(colors.length);
       target[i][ii].colour = colors[index];
       target[i][ii].randoms();
    }
  }
}

void draw(){
  background(#FFFFEF);
  score();
  translate(0,height/2);
  
  //making the coordinate system for gun
  pushMatrix();
  rotation();
  rotate(angle);
  gun.display();
  bullets[number].onGun(angle, aVelocity);
  popMatrix();
  
  bullets[number].display(); // displaying the next ball on the tip of the gun
  fordisplay(); //for displaying each flying bullet in their own coordinate systems
  newRing();
  detection();
}
