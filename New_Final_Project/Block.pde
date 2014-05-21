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
