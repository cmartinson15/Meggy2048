void spawnNewBlock() 
{
  if (spawnBlock) 
  {  
    newBlockX = random(4)*2;  
    newBlockY = random(4)*2+1;  
    spawnBlock = false;
  }
  if (blockArray[0].x==newBlockX && blockArray[0].y==newBlockY)
  {
    spawnBlock = true;
    score++;
    scoreKeeping();
  } 
}
