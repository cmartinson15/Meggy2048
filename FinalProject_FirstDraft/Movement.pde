void Movement()
{
  CheckButtonsPress();
    if(Button_Left)
    {
      updateBlockLocation();
      blockDirection=270;
      spawnBlock=true;
    }
    if(Button_Up)
    {
      updateBlockLocation();
      blockDirection=0;
      spawnBlock=true;
    }
    if(Button_Right)
    {
      updateBlockLocation();
      blockDirection=90;
      spawnBlock=true;
    }
    if(Button_Down)
    {
      updateBlockLocation();
      blockDirection=180;
      spawnBlock=true;
    }
}



