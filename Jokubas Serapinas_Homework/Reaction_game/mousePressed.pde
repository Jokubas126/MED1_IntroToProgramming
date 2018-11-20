void mousePressed(){
  if (mouseX <= circles.x + circles.r  && mouseX >= circles.x && mouseY <= circles.y + circles.r && mouseY >= circles.y){
    k = 0;
    time[i] = toclick - millis();
    time[0] = time[0] + time[i];
    background(255,200,200);
    score();
    lasttime = millis();
    randomtimer = random (3000, 6000); // amount of time after the circle appears
  }
}
