void keyPressed(){
if (key == 'w' || key == 'W'){
    int i = 0;
    rackets[i].moveup(yracket[i], i);
    rackets[i].display(yracket[i], i);
  }
  if (key == 's' || key == 'S'){
    int i = 0;
    rackets[i].movedown(yracket[i], i);
    rackets[i].display(yracket[i], i);
  } 
  if (keyCode == UP){
    int i = 1;
    rackets[i].moveup(yracket[i], i);
    rackets[i].display(yracket[i], i);
  }
  if (keyCode == DOWN){
    int i = 1;
    rackets[i].movedown(yracket[i], i);
    rackets[i].display(yracket[i], i);
  }
}
