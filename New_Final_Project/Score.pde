void scoreKeeping()
{
  topLights=((topLights*2)+1); //sets up the top lights
  if(score==1) //if the score is equal to 1
  {
    topLights=1; //light is equal to 1
  }
  if(topLights>=128) //if the top light bar fills out it loops back to 1
  {
    ClearSlate;
    topLights=1; //loops back to 1
    DisplaySlate;
  }
  SetAuxLEDs(topLights); //sets up the top lights
}

void negativeScoreKeeping() //measures every time the enemy block gets run over
{
  if(score2>=6) //spawns after getting run over 6 times total
  {
    enemy2();
  }
  if(score2>=12) //spawns after getting run over 12 times total
  {
    enemy3();
  }
}
