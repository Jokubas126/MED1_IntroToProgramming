void gameOver(){
  background(#A0A2C6); //background color - bright brown
  textSize(30);
  text("GAME OVER", width/2 - 50, height/2);
  textSize(50);
  if (xball <= 0){
   text("PLAYER 2 WINS!", width/2 - 100, height / 2 + 100); 
  }
  if (xball >= width){
   text("PLAYER 1 WINS!", width/2 - 150, height / 2 + 100); 
  }
  noLoop();
}
