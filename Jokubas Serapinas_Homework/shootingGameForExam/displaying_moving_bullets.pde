void fordisplay(){
  //"for" loop for displaying and moving bullets
  for (int i = n; i < number; i++){
    if (bullets[i].show == true){
      bullets[i].display();
      bullets[i].move();
      bullets[i].checkBool();
    }
  }
}
