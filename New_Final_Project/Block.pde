void drawBlock(int x, int y, int color)
{
  DrawPx(x,y,color);
  DrawPx(x,y-1,color);
  DrawPx(x+1,y,color);
  DrawPx(x+1,y-1,color);
}

void drawNewBlock()
{
   DrawPx(newBlockX,newBlockY,12);
   DrawPx(newBlockX,newBlockY-1,12);
   DrawPx(newBlockX+1,newBlockY,12);
   DrawPx(newBlockX+1,newBlockY-1,12);
}

void drawEnemyBlock()
{
  DrawPx(enemyBlockX,enemyBlockY,3);
  DrawPx(enemyBlockX,enemyBlockY-1,3);
  DrawPx(enemyBlockX+1,enemyBlockY,3);
  DrawPx(enemyBlockX+1,enemyBlockY-1,3);
}

void drawEnemyBlock2()
{
  DrawPx(enemy2BlockX,enemy2BlockY,3);
  DrawPx(enemy2BlockX,enemy2BlockY-1,3);
  DrawPx(enemy2BlockX+1,enemy2BlockY,3);
  DrawPx(enemy2BlockX+1,enemy2BlockY-1,3);
}

void drawEnemyBlock3()
{
  DrawPx(enemy3BlockX,enemy3BlockY,3);
  DrawPx(enemy3BlockX,enemy3BlockY-1,3);
  DrawPx(enemy3BlockX+1,enemy3BlockY,3);
  DrawPx(enemy3BlockX+1,enemy3BlockY-1,3);
}
