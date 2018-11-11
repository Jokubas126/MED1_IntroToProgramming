void score(){
  count++;
  if (count == 5){
    background(255,200,200);
    textSize(40);
    text("Your result is", width / 2 - 300, height / 2);
    text(time[0]/1000, width / 2, height / 2); 
    text("seconds", width / 2 + 200, height / 2);
    noLoop();
  }
}
