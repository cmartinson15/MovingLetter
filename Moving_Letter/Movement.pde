void movement()
{
  for(int z = marker-1; z > -1; z--)
  {
     if(direction == 0){
       cArray[z].y++;
     }
      if(direction == 90){
       cArray[z].x--;
      }
      if(direction == 180){
       cArray[z].y--;
      }
      if(direction == 270){
        cArray[z].x++;
      }  
      if(cArray[z].x>7){ //start of the corrections 
        cArray[z].x=0;
      }
      if(cArray[z].x<0){
        cArray[z].x=7;
      }
      if(cArray[z].y>7){
        cArray[z].y=0;
      }
      if(cArray[z].y<0){
        cArray[z].y=7;
      }
  }
}
// It's z instead of 0 in the cArray because you want it moving as one.
