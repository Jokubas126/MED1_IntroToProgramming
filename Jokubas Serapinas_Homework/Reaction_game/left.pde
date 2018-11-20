void left(){
  left = 5 - count;
  textSize(20);
  text(left, 0,20);
  text("to go", 20, 20);
  text("current time", 0, 50);
  text(time[0]/1000 - starttime, 120, 50);
}
