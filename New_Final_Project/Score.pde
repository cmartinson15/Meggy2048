void scoreKeeping()
{
  topLights=((topLights*2)+1);
  if(score==1)
  {
    topLights=1;
  }
  if(score=9)
  {
    drawEnemyBlock2();
  }
  if(topLights>=128)
  {
    ClearSlate;
    topLights=0;
    DisplaySlate;
  }
  SetAuxLEDs(topLights);
}

void endGame() //what happens at end game
{
  if(score == 16) //if the player wins with 16 points
  {
    for(int i=0;i<8;i++)
    {
      for(int z=0;z<8;z++)
      {
        DrawPx(i,z,12);
      }
    }
  }
    gameWin=true;
  }
  if(score == -1)
  {
   {
    for(int i=0;i<8;i++)
    {
      for(int z=0;z<8;z++)
      {
        DrawPx(i,z,3);
      }
    }
  }
    gameLoose=true;
  }
}

