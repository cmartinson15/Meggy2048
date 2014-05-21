void Movement()
{
  CheckButtonsPress();
    if(Button_Left)
    {
      blockDirection=270;
      //spawnBlock=true;
    }
    if(Button_Up)
    {
      blockDirection=0;
      //spawnBlock=true;
    }
    if(Button_Right)
    {
      blockDirection=90;
      //spawnBlock=true;
    }
    if(Button_Down)
    {
      blockDirection=180;
      //spawnBlock=true;
    }
    if(blockDirection==0)
      blockArray[0].y++;
    if(blockDirection==90)
      blockArray[0].x++;
    if(blockDirection==180)
      blockArray[0].y--;
    if(blockDirection==270)
      blockArray[0].x--;
    if(blockArray[0].x>7)
      blockArray[0].x=0;
    if(blockArray[0].x<0)
      blockArray[0].x=7;
    if(blockArray[0].y>7)
      blockArray[0].y=0;
    if(blockArray[0].y<0)
      blockArray[0].y=7;
      
}



