#include <MeggyJrSimple.h>

void setup()
{
  MeggyJrSimpleSetup();
  Serial.begin(9600);
}

int blockDirection;
int blockAmount=1; //The ammount of blocks
int marker=1; //Not sure if I need this or not yet.
int newBlockX = 0; //for the x of the point block
int newBlockY = 3; //for the y of the point block
int enemyBlockX = 6; //
int enemyBlockY = 3;
int enemy2BlockX = 6;
int enemy2BlockY = 3;
int enemy3BlockX = 6;
int enemy3BlockY = 3;
int score=0;
int topLights;
boolean initialMove=false;
boolean spawnBlock=true;
boolean creeper=true;
boolean gameWin=false;
boolean gameLoose=false;


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
  drawEnemyBlock();  
  drawEnemyBlock();
  DisplaySlate();
  delay(125);
  Movement(); //Block movement
  updateDirection();
  if(initialMove==true)
  updateBlockLocation(); //More block movement,
  spawnNewBlock(); //spawns the point blocks
  enemy(); //spawns the enemy blocks
  scoreKeeping;//not even sure if I need this or if it does anything in the loop
  endGame();
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

