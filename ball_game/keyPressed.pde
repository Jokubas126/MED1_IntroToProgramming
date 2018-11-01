void keyPressed(){
if (key == 'w' || key == 'W'){
    int i = 0;
    rackets[i].moveup(y, i);
    yracket[i] = y;
    rackets[i].display(yracket[i]);
    i = 0;
    rackets[i].display(yracket[i]);
  }
  if (key == 's' || key == 'S'){
    int i = 0;
    rackets[i].movedown(y, i);
    yracket[i] = y;
    rackets[i].display(y);
    i = 0;
    rackets[i].display(yracket[i]);
  } 
  if (keyCode == UP){
    int i = 1;
    rackets[i].moveup(y, i);
    yracket[i] = y;
    rackets[i].display(yracket[i]);
    i = 0;
    rackets[i].display(yracket[i]);
  }
  if (keyCode == DOWN){
    int i = 1;
    rackets[i].movedown(y, i);
    yracket[i] = y;
    rackets[i].display(yracket[i]);
    i = 0;
    rackets[i].display(yracket[i]);
  }
}
