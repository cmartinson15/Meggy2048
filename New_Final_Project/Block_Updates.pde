
void updateDirection()
{
  for(int i; i < blockAmount; i++)
  {
    blockArray[i].dir= blockDirection;
  }
}

void updateBlockLocation() //makes things run a little smoother
{
  for(int i = 0; i < blockAmount; i++)
  {
    if(blockDirection == 0)
    {
      if(ReadPx(blockArray[i].x,blockArray[i].y+2)==0 && blockArray[i].y < 7) //checks if there's a block where it's going
      {
        blockArray[i].y+=2;
      }
      else if(ReadPx(blockArray[i].x,blockArray[i].y+2)==blockArray[i].color && blockArray[i].y<7) //checks if the block is the same color for collision detection
      {
        blockArray[i].y+=2;
      }
    }
    if(blockDirection == 90)
    {
      if(ReadPx(blockArray[i].x+2,blockArray[i].y)==0 && blockArray[i].x < 6) //checks if there's a block where it's going
      {
        blockArray[i].x+=2;
      }
      else if(ReadPx(blockArray[i].x,blockArray[i].y+2)==blockArray[i].color && blockArray[i].x<6) //checks if the block is the same color for collision detection
      {
        blockArray[i].x+=2;
      }
    }
    if(blockDirection == 180)
    {
      if(ReadPx(blockArray[i].x,blockArray[i].y-2)==0 && blockArray[i].y > 1) //checks if there's a block where it's going
      {
        blockArray[i].y-=2;
      }
      else if(ReadPx(blockArray[i].x,blockArray[i].y+2)==blockArray[i].color && blockArray[i].y>1) //checks if the block is the same color for collision detection
      {
        blockArray[i].y-=2;
      }
    }
    if(blockDirection == 270)
    {
      if(ReadPx(blockArray[i].x-2,blockArray[i].y)==0 && blockArray[i].x > 0) //checks if there's a block where it's going
      {
        blockArray[i].x-=2;
      }
      else if(ReadPx(blockArray[i].x,blockArray[i].y+2)==blockArray[i].color && blockArray[i].x>0) //checks if the block is the same color for collision detection
      {
        blockArray[i].x-=2;
      }
    }
  }
}

