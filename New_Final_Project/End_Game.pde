void endGame() //what happens at end game
{
  if (score==13) //supposed to have the player win at one point
  {
      for(int i=0;i<8;i++)
      {
        for(int z=0;z<8;z++)
          {
            DrawPx(i,z,3);
            gameWin=true;
          }
        }
  }
  if(gameWin==true) //trying to set up the win boolean
  {
    {
     {
      for(int i=0;i<8;i++)
      {
        for(int z=0;z<8;z++)
          {
            DrawPx(i,z,3);
            gameWin=true;
          }
        }
      }
    }
  }
  if (score2==18) //supposed to have the player loose at 9
  {
      for(int i=0;i<8;i++)
      {
        for(int z=0;z<8;z++)
          {
            DrawPx(i,z,Red);
            gameLoose=true;
          }
        }
  }
  if(gameLoose==true) //trying to set up the loose boolean.
  {
      for(int i=0;i<8;i++)
      {
        for(int z=0;z<8;z++)
          {
            DrawPx(i,z,Red);
            gameLoose=true;
          }
        }
      }
  if (Button_A)
  {
    asm volatile ("  jmp 0");    //resets game, Jacob helped me with this one.
  }
}
