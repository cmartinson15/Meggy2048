void drawBlock(int x, int y, int color) //code for the player's block
{
  DrawPx(x,y,color);
  DrawPx(x,y-1,color);
  DrawPx(x+1,y,color);
  DrawPx(x+1,y-1,color);
}

void drawNewBlock() //code for the random point block
{
   DrawPx(newBlockX,newBlockY,12);
   DrawPx(newBlockX,newBlockY-1,12);
   DrawPx(newBlockX+1,newBlockY,12);
   DrawPx(newBlockX+1,newBlockY-1,12);
}

void drawEnemyBlock() //code for the random enemy block
{
  DrawPx(enemyBlockX,enemyBlockY,Red);
  DrawPx(enemyBlockX,enemyBlockY-1,Red);
  DrawPx(enemyBlockX+1,enemyBlockY,Red);
  DrawPx(enemyBlockX+1,enemyBlockY-1,Red);
}

void drawEnemyBlock2() //code for the second random enemy block
{
  DrawPx(enemy2BlockX,enemy2BlockY,Red);
  DrawPx(enemy2BlockX,enemy2BlockY-1,Red);
  DrawPx(enemy2BlockX+1,enemy2BlockY,Red);
  DrawPx(enemy2BlockX+1,enemy2BlockY-1,Red);
}

void drawEnemyBlock3() //code for the third random enemy block
{
  DrawPx(enemy3BlockX,enemy3BlockY,Red);
  DrawPx(enemy3BlockX,enemy3BlockY-1,Red);
  DrawPx(enemy3BlockX+1,enemy3BlockY,Red);
  DrawPx(enemy3BlockX+1,enemy3BlockY-1,Red);  
}
