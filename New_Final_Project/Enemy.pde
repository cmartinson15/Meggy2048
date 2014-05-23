void enemy()
{
  if (creeper) 
  {  
    enemyBlockX = random(4)*2;  
    enemyBlockY = random(4)*2+1;  
    creeper = false;
  }
  if (blockArray[0].x==enemyBlockX && blockArray[0].y==enemyBlockY) //what's supposed to happen when the player runs over the red block.
  {
    creeper = true; //spawns a new enemy block
    score--; //supposed to take away a point from the playe
    topLights-1;
  }
  if (newBlockX==enemyBlockX && newBlockY==enemyBlockY) //prevents the blocks from spawning on top of eachother.
  {
    creeper=true;
  }
}


