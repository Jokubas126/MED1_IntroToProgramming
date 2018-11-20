void timecheck(){
  if(millis() >= lasttime + randomtimer){
    if (k == 0){
    circles.randoms();
    circles.display();
    k++;
    toclick = millis();
    }
  }
}
