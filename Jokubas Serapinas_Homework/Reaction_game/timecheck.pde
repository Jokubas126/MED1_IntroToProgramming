//checks on which time does the rectangle need to appear
void timecheck(){
  if (millis() > totalTimeToTakeOut + rectangles[count].time){
    appear = true;
  }
}
