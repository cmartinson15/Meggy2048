void endGame() //what happens at end game
{
  if (score==1) //supposed to have the player win at one point
  {
    {
     {
      for(int i=0;i<8;i++)
      {
        for(int z=0;z<8;z++)
          {
            DrawPx(i,z,Green);
            gameWin=true;
          }
        }
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
            DrawPx(i,z,Red);
            gameLoose=true;
          }
        }
      }
    }
  }
  if (score==-1) //supposed to have the player loose at negative one point
  {
    {
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
    }
  }
  if(gameLoose==true) //trying to set up the loose boolean.
  {
    {
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
    }
  }
}
