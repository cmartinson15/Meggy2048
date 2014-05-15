void updateDirection()
{
  for(int i; i < blockAmount; i++)
  {
    blockArray[i].dir= blockDirection;
  }
}

void updateBlockLocation() //Goes to direction but no collision detection
{
  for(int i = 0; i < blockAmount; i++)
  {
    if(blockDirection == 0)
    {
      if(ReadPx(blockArray[i].x,blockArray[i].y+2)==0 && blockArray[i].y < 7) 
      {
        blockArray[i].y=7;
      }
    }
    if(blockDirection == 90)
    {
      if(ReadPx(blockArray[i].x+2,blockArray[i].y)==0 && blockArray[i].x < 6) 
      {
        blockArray[i].x=6;
      }
    }
    if(blockDirection == 180)
    {
      if(ReadPx(blockArray[i].x,blockArray[i].y-2)==0 && blockArray[i].y > 1) 
      {
        blockArray[i].y=1;
      }
    }
    if(blockDirection == 270)
    {
      if(ReadPx(blockArray[i].x-2,blockArray[i].y)==0 && blockArray[i].x > 0) 
      {
        blockArray[i].x=0;
      }
    }
  }
}
