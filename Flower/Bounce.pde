void bounce(float x, float y, float sy, float sx){
 if(x < 0 || x > width){
   sx = sx * -1;
 }
 if(y < 0 || y > height){
   sy = sy * -1;
 }
}
