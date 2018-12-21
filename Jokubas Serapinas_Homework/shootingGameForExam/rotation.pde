void rotation(){
    if (angle > PI/4 || angle < -PI/4){
      aVelocity = aVelocity * -1;
    }
    angle += aVelocity;
   }
