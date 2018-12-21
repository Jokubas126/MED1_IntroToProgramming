void detection(){
  for (int i = n; i < number; i++){
    for(int ii = 0; ii < numTarget; ii++){
     if(bullets[i].bulletX > target[targetRow][ii].x && bullets[i].bulletY > target[targetRow][ii].y - target[targetRow][ii].sizeY/2 && bullets[i].bulletY < target[targetRow][ii].y + target[targetRow][ii].sizeY/2 && bullets[i].bulletColor == target[targetRow][ii].colour){ 
       scored = true;
       n += number;
       targetRow++;
     }
    }
  }
}
