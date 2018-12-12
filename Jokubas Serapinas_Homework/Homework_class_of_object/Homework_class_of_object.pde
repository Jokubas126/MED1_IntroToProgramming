int num = 50; //number of all the flowers shown

//positions of each flower separately
int[] x = new int[num];
int[] y = new int[num];

int position = 0;
int addition = 1;

Flower[] flowers = new Flower[num];

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
    flowers[i] = new Flower(x[i], y[i], i);
    flowers[i].display();
  }
}
