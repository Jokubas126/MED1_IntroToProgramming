void keyPressed(){
if (keyCode == DOWN || keyCode == UP){
    racket1.move();
    racket2.display();
  }
  
  if (key == 'w' || key == 'W' || key == 's' || key == 'S'){
    racket2.move();
    racket1.display();
  }
}
