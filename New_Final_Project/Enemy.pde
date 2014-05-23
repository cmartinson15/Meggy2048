void enemy()
{
  if (bodyguard) //first enemy boolean deffinition
  {  
    enemyBlockX = random(4)*2;  
    enemyBlockY = random(4)*2+1;  
    bodyguard = false;
  }
  if (blockArray[0].x==enemyBlockX && blockArray[0].y==enemyBlockY) //what's supposed to happen when the player runs over the red block.
  {
    bodyguard = true; //spawns a new enemy block
    score2++; //supposed to take away a point from the player
  }
  if (newBlockX==enemyBlockX && newBlockY==enemyBlockY) //prevents the blocks from spawning on top of eachother.
  {
    bodyguard=true; //if point block and enemy block end up on the same tile then enemy block moves
  }
}

void enemy2() //supposed to spawn a second enemy
{
  drawEnemyBlock2(); //supposed to draw enemy block2
  if (secretService) //second enemy boolean
  {  
    enemy2BlockX = random(4)*2;  
    enemy2BlockY = random(4)*2+1;  
    secretService = false;
  }
  if (blockArray[0].x==enemy2BlockX && blockArray[0].y==enemy2BlockY) //what's supposed to happen when the player runs over the red block.
  {
    secretService = true; //spawns a new enemy block
    score2++; //supposed to take away a point from the player
  }
  if (enemyBlockX==enemy2BlockX && enemyBlockY==enemy2BlockY) //prevents the blocks from spawning on top of eachother.
  {
    secretService=true; //same as with creeper but with the two enemy blocks
  }
  if (newBlockX==enemy2BlockX && newBlockY==enemy2BlockY) //prevents the blocks from spawning on top of eachother.
  {
    secretService=true; //same as creeper's code
  }
}

void enemy3()//supposed to spawn third enemy
{
  drawEnemyBlock3();
  if(knight)
  {
    enemy3BlockX = random(4)*2;  
    enemy3BlockY = random(4)*2+1;  
    knight = false;
  }
  if (blockArray[0].x==enemy3BlockX && blockArray[0].y==enemy3BlockY) //what's supposed to happen when the player runs over the red block.
  {
    knight = true; //spawns a new enemy block
    score2++; //supposed to take away a point from the player
  }
  if (enemyBlockX==enemy3BlockX && enemyBlockY==enemy3BlockY) //prevents the blocks from spawning on top of eachother.
  {
    knight=true; //same as with creeper but with the first and third enemy blocks
  }
  if (enemy2BlockX==enemy3BlockX && enemy2BlockY==enemy3BlockY) //prevents the blocks from spawning on top of eachother.
  {
    knight=true; //same as with creeper but with the second and third enemy blocks
  }
  if (newBlockX==enemy3BlockX && newBlockY==enemy3BlockY) //prevents the blocks from spawning on top of eachother.
  {
    knight=true; //same as creeper's code
  }
}
  
  
