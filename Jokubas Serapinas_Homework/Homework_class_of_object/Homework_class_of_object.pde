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
