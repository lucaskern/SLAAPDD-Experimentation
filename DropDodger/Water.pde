//An array of drop objects that creates and updates a specified number of drops
class Water
{
  Drop[] waterDrops;

  float dropSpeed;
  int difficulty;
  int dropNum;

  Water(int difficulty, float speed)
  {
    dropSpeed = speed;
    dropNum = 50;

    waterDrops = new Drop[150];

    for (int i = 0; i < waterDrops.length; i++)
    {
      float[] columns = new float[3];
      columns[0] = width * .25;
      columns[1] = width * .5;
      columns[2] = width * .75;
      int laneNum = round(random(2));
      
      waterDrops[i] = new Drop(columns[laneNum], -150 * i, 4, random(1,6));
    }
  }

  void move()
  {
    for (int i = 0; i < dropNum; i++)
    {
      waterDrops[i].move();
    }
  }

  //checks to see if any drop is touching the match head
  boolean collision()
  {
    for (int i = 0; i < dropNum; i++)
    {
      if (waterDrops[i].collision()) {
        return true;
      }
      
    }
    
    return false;
  }
  
  void display()
  {
    for (int i = 0; i < dropNum; i++)
      waterDrops[i].display();
  }

  void reStart()
  {
    print("reset");
    for (int i = 0; i < dropNum; i++)
    {
      waterDrops[i].reStart();
      
    }
  }
  
  void kill() {
    for (int i = 0; i < dropNum; i++)
    {
      if (waterDrops[i].power <= 1) {
        waterDrops[i].xLoc = 4000;
        //dropNum--;
      }
    }
  }
}