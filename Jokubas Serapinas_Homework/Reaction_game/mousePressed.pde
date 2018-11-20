void mousePressed(){
  if (mouseX <= rectangles.x + rectangles.r  && mouseX >= rectangles.x && mouseY <= rectangles.y + rectangles.r && mouseY >= rectangles.y){
      k = 0;
      toclick = millis();
      time[i] = millis() - toclick;
      time[0] = time[0] + time[i];
      background(255,200,200);
      finalscore();
      lasttime = millis();
      randomtimer = random (3000, 6000); // amount of time after the circle appears
  }
}
