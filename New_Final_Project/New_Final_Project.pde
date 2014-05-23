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
int enemyBlockX = 6; //first enemy's x
int enemyBlockY = 3;//first enemy's y
int enemy2BlockX = 4; //second enemy's x
int enemy2BlockY = 3; //second enemy's y
int enemy3BlockX = 6; //third enemy's x
int enemy3BlockY = 3; //third enemy's y
int score=0; //initial score, what all other scores build off of.
int score2=0; //negative score, what the red block score builds off of
int topLights; //the lights at the top of the meggy, used for points
boolean initialMove=false; //keeps things moving smoothly
boolean spawnBlock=true; //The point block
boolean gameWin=false; //Winning
boolean gameLoose=false; //Loosing
boolean bodyguard=true; //first enemy
boolean secretService=true; //second enemy
boolean knight=true; //third enemy

struct blockCorner //This is the code for a block structure
{
  int x; //upper left coordinate
  int y;
  int color;
  int dir;
};

blockCorner s1 = {3,4,13,-1}; //Player's block

blockCorner blockArray[64] = {s1}; //how many blocks that move


void loop()
{
  ClearSlate();
  for (int i=0; i<blockAmount; i++)
  { 
    drawBlock(blockArray[i].x,blockArray[i].y,blockArray[i].color); //This draws the amount of blocks in BlockArray
  }
  drawNewBlock();//Draws the point block
  drawEnemyBlock();//Draws the enemy block
  Movement(); //Block movement
  updateDirection(); //smooth
  if(initialMove==true) //helps the controls move smoothly  
    updateBlockLocation(); //More block movement,
  spawnNewBlock(); //spawns the point blocks
  enemy(); //spawns the enemy blocks
  negativeScoreKeeping();//supposed to keep track of the amount of times the red block gets run over
  endGame(); //supposed to help determine if the player wins or not
  DisplaySlate();
  delay(125);
}
