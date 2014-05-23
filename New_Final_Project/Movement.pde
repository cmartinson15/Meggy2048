void Movement()
{
  CheckButtonsPress();
    if(Button_Left) //left
    {
      blockDirection=270;
      //spawnBlock=true;
    }
    if(Button_Up)
    {
      blockDirection=0; //up
      //spawnBlock=true;
    }
    if(Button_Right)
    {
      blockDirection=90; //right
      //spawnBlock=true;
    }
    if(Button_Down)
    {
      blockDirection=180; //down
      //spawnBlock=true;
    }
    if(blockDirection==0) //Up
      blockArray[0].y++;
    if(blockDirection==90) //Right
      blockArray[0].x++;
    if(blockDirection==180) //Down
      blockArray[0].y--;
    if(blockDirection==270) //Left
      blockArray[0].x--;
    if(blockArray[0].x>7) //Corrections that make it loop
      blockArray[0].x=0;
    if(blockArray[0].x<0)//Corrections that make it loop
      blockArray[0].x=7;
    if(blockArray[0].y>7)//Corrections that make it loop
      blockArray[0].y=0;
    if(blockArray[0].y<0)//Corrections that make it loop
      blockArray[0].y=7;
      
}



