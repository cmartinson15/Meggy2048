void enemy()
{
  if (creeper) 
  {  
    enemyBlockX = random(4)*2;  
    enemyBlockY = random(4)*2+1;  
    creeper = false;
  }
  if (blockArray[0].x==enemyBlockX && blockArray[0].y==enemyBlockY)
  {
    creeper = true;
    
    SetAuxLEDs(0);
  } 
}

