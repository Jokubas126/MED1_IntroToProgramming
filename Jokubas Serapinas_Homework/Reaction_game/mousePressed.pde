void mousePressed(){
  if(firstClick == false){
    background(255,200,200);
    timeBefStart = millis();
    totalTimeToTakeOut += timeBefStart;
    firstClick = !firstClick;
  }
  
  if (mouseX <= rectangles[count].x + rectangles[count].r && mouseX >= rectangles[count].x &&
  mouseY <= rectangles[count].y + rectangles[count].r && mouseY >= rectangles[count].y){
    background(255,200,200);
    score();
    appear = false;
  }
}
