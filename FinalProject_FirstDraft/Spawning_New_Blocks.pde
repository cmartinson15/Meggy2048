void spawnNewBlock() 
{
  if (spawnBlock) 
  {  
    newBlockX = random(4)*2;  
    newBlockY = random(4)*2+1;  
    while (ReadPx(newBlockX,newBlockY) !=0)
   {
    newBlockX = random(4)*2;  
    newBlockY = random(4)*2+1;
   }
   spawnBlock = false;
  }
}
