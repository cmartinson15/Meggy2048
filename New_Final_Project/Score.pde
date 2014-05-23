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
