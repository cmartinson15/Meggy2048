void scoreKeeping()
{
  topLights=((topLights*2)+1);
  if(score==1)
  {
    topLights=1;
  }
  if(topLights<=0)
  {
    for(int i=0;i<8;i++)
    {
      for(int z=0;z<8;z++)
      {
        DrawPx(i,z,3);
      }
    }
  }
  if(topLights>=128)
  {
    ClearSlate;
    topLights=0;
    DisplaySlate;
  }
  SetAuxLEDs(topLights);
}
