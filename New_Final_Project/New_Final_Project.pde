#include <MeggyJrSimple.h>

void setup()
{
  MeggyJrSimpleSetup();
  Serial.begin(9600);
}

int blockDirection;
int blockAmount=1; //The ammount of blocks
int marker=1; //Not sure if I need this or not yet.
int newBlockX = 0;
int newBlockY = 3;
int score=0;
int topLights;
boolean initialMove=false;
boolean spawnBlock=true;


struct blockCorner //This is the code for a block structure
{
  int x; //upper left coordinate
  int y;
  int color;
  int dir;
};

blockCorner s1 = {3,4,13,-1}; //block 1

blockCorner blockArray[64] = {s1}; //how many initial blocks


void loop()
{
  ClearSlate();
  for (int i=0; i<blockAmount; i++)
  { 
    drawBlock(blockArray[i].x,blockArray[i].y,blockArray[i].color); //This draws the amount of blocks in BlockArray
  }
  drawNewBlock();
  DisplaySlate();
  delay(100);
  Movement(); //Block movement
  updateDirection();
  if(initialMove==true)
    updateBlockLocation(); //More block movement,
  spawnNewBlock();
  if (Button_A)
    printArray();
}

void printArray() //Got this from Kaityln's Github didn't know what it was but looked important. 
{
  for (int i = 0; i < blockAmount; i++)
  {
    Serial.print("Block No. ");
    Serial.println(i);
    Serial.print("x:");
    Serial.println(blockArray[i].x);
    Serial.print("y:");
    Serial.println(blockArray[i].y);
    Serial.print("dir:");
    Serial.println(blockArray[i].dir);
    Serial.println();
  }
}

