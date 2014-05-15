void drawBlock(int x, int y, int color)
{
  DrawPx(x,y,color);
  DrawPx(x,y-1,color);
  DrawPx(x+1,y,color);
  DrawPx(x+1,y-1,color);
}

