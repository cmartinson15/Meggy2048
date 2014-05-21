void scoreKeeping()
{
  topLights=((topLights*2)+1);
  if(score==1)
  {
    topLights=1;
  }
  if(topLights>=128)
  {
    ClearSlate;
    topLights=0;
    DisplaySlate;
  }
  SetAuxLEDs(topLights);
}
