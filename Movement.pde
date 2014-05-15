void Movement()
{
  CheckButtonsPress();
    if(Button_Left)
    {
      updateBlockLocation();
      blockDirection=270;
    }
    if(Button_Up)
    {
      updateBlockLocation();
      blockDirection=0;
    }
    if(Button_Right)
    {
      updateBlockLocation();
      blockDirection=90;
    }
    if(Button_Down)
    {
      updateBlockLocation();
      blockDirection=180;
    }
}



