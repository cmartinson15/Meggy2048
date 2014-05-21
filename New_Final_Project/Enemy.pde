void enemy()
{
  if (stalker) 
  {  
    enemyBlockX = random(4)*2;  
    enemyBlockY = random(4)*2+1;  
    stalker = false;
  }
  
  
  if (blockArray[0].x==enemyBlockX && blockArray[0].y==enemyBlockY)
  {
    stalker = true;
    score--;
    scoreKeeping;
  } 
}

