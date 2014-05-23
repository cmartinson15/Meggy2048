void scoreKeeping()
{
  topLights=((topLights*2)+1); //sets up the top lights
  if(score==1)
  {
    topLights=1;
  }
  if(score==9)
  {
    drawEnemyBlock2();
  }
  if(topLights>=128)
  {
    ClearSlate;
    topLights=1;
    DisplaySlate;
  }
  SetAuxLEDs(topLights);
}

void endGame() //what happens at end game
{
  if(gameWin)
  {
    for(int i=0;i<8;i++)
    {
     for(int z=0;z<8;z++)
      {
        DrawPx(i,z,3);
      }
    }
    gameWin=true; //should have the player win
  }
  if (score==1)
  {
    gameWin=true;
  }
  if(gameLoose)
  {
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
    }
      gameLoose=true; //should have the player loose
    }
  if (score==0)
  {
    gameLoose=true;
  }
}

