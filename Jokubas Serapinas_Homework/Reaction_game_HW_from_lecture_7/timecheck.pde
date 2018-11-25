void timecheck(){
  if(millis() >= lasttime + randomtimer){
    if (k == 0){
    rectangles.randoms();
    rectangles.display();
    toclick = millis();
    k++;
    }
  }
}
