  #include <MeggyJrSimple.h>

void setup()
{
  MeggyJrSimpleSetup();
  Serial.begin(9600);
}

int blockDirection;
int blockAmount=3; //The ammount of blocks
int marker=3; //Not sure if I need this or not yet.


struct BlockEdge //This is the code for a block structure
{
  int x; //upper left coordinate
  int y;
  int color;
  int dir;
};

BlockEdge s1 = {6,7,12,270};
BlockEdge s2 = {4,3,13,270};
BlockEdge s3 = {0,1,14,270};


BlockEdge blockArray[64] = {s1, s2, s3};


void loop()
{
  for (int i=0; i<blockAmount; i++)
    { 
      drawBlock(blockArray[i].x,blockArray[i].y,blockArray[i].color); //This draws the amount of blocks in BlockArray
    }
  DisplaySlate();
  delay(125);
  Movement();
  updateBlockLocation();
  ClearSlate();
  
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
