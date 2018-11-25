int num = 50;
int[] x = new int[num];
int[] y = new int[num];
int position = 0;
int addition = 1;

Object[] object = new Object[num];

void setup() { 
  size(800,600);
  noStroke();
  fill(255, 102);
}

void draw() {
  background(0);
  if (position < num){
    x[position] = mouseX;
    y[position] = mouseY;
    position++;
  }
  else {
    position = 0;
    addition++;
  }
  for (int i = 0; i < num; i++){
    object[i] = new Object(x[i], y[i], i);
    object[i].display();
  }
}

/*background(0);
  // Shift the values to the right
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  // Add the new values to the beginning of the array
  x[0] = mouseX;
  y[0] = mouseY;
  // Draw the circles
  for (int i = 0; i < num; i++) {
    ellipse(x[i], y[i], i/2.0, i/2.0);
  }*/
