void drawBlock(int x, int y, int color)
{
  DrawPx(x,y,color);
  DrawPx(x,y-1,color);
  DrawPx(x+1,y,color);
  DrawPx(x+1,y-1,color);
}

void drawNewBlock()
{
   DrawPx(newBlockX,newBlockY,3);
   DrawPx(newBlockX,newBlockY-1,3);
   DrawPx(newBlockX+1,newBlockY,3);
   DrawPx(newBlockX+1,newBlockY-1,3);
}

void drawEnemyBlock()
{
  DrawPx(enemyBlockX,enemyBlockY,Red);
  DrawPx(enemyBlockX,enemyBlockY-1,Red);
  DrawPx(enemyBlockX+1,enemyBlockY,Red);
  DrawPx(enemyBlockX+1,enemyBlockY-1,Red);
}

void drawEnemyBlock2()
{
  DrawPx(enemy2BlockX,enemy2BlockY,Red);
  DrawPx(enemy2BlockX,enemy2BlockY-1,Red);
  DrawPx(enemy2BlockX+1,enemy2BlockY,Red);
  DrawPx(enemy2BlockX+1,enemy2BlockY-1,Red);
}

void drawEnemyBlock3()
{
  DrawPx(enemy3BlockX,enemy3BlockY,Red);
  DrawPx(enemy3BlockX,enemy3BlockY-1,Red);
  DrawPx(enemy3BlockX+1,enemy3BlockY,Red);
  DrawPx(enemy3BlockX+1,enemy3BlockY-1,Red);  
}
