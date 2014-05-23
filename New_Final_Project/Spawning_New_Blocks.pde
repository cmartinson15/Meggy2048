void spawnNewBlock() 
{
  if (spawnBlock) // deffinition of the spawnBlock boolean
  {  
    newBlockX = random(4)*2;  
    newBlockY = random(4)*2+1;  
    spawnBlock = false;
  }
  if (blockArray[0].x==newBlockX && blockArray[0].y==newBlockY) //what happens when the player's block and a point block overlap
  {
    spawnBlock = true; //spawns a new point block in a random spot
    score++; //Adds a point for matching a point block and the player.
    scoreKeeping(); //sends the points through the scoreKeeping process.
  } 
}

