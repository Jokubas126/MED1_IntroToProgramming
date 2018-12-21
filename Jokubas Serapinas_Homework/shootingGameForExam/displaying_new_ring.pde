void newRing(){
  if (scored == true){ //happens when the player manage to hit the target
    score++;
    for (int i = 0; i < numTarget; i++){
      target[targetRow][i].randoms();
    }
    scored = false;
  }
  for (int i = 0; i < numTarget; i++){
    target[targetRow][i].display();
  }
}
