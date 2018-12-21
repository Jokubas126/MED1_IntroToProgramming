// A polar coordinate 
float r = 5; 
float theta = 0;
int max = 50000;
int blue = 50;
float range = 0;
float size = 30;
int colorChangeSpeed = 2;

void setup(){  
fullScreen();  
background(255); 

//following lines are for "for" loop in setup
/*for (int i = 0; i < max; i++){
  float x = r * cos(theta);  
  float y = r * sin(theta);
  noStroke();  
  fill(random(0,255),random(0,255),random(0,255));  
  ellipse(x + width/2, y + height/2, 16, 16);
  
  // Increment the angle
  r+=0.05;
  theta += 0.5;
}*/
}

void draw(){ 
  float x = range * cos(theta);  
  float y = range * sin(theta);
  float noiseValue = noise(range);
  noStroke();  
  fill(0, 0,blue);  
  ellipse(x + width/2, y + height/2, noiseValue *size, noiseValue*size);
  
  // Increment the angle
  range+=1;
  theta += 0.25;
  blue += noiseValue*colorChangeSpeed;
}
