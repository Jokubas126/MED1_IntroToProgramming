void mousePressed(){
    indepAngle[number] = angle;
    bullets[number].show = true;
    bullets[number].speed(angle);
    number++;
}

void keyPressed(){
  if (keyCode == ENTER){
    scored = true;
  }
}
