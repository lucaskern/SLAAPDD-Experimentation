//individual drop
//has all programming for moving, displaying, collsion, etc

class Drop
{

  float xLoc;
  float yLoc;
  
  float xStarting;
  float yStarting;
  
  int type;
  
  float power;
  
  int boxSize = 35;

  float fallSpeed;

  Drop(float xStart, float yStart, float speed, float powerStart)
  {
    xLoc = xStart;
    yLoc = yStart;
    
    xStarting = xStart;
    yStarting = yStart;

    power = powerStart;
    
    type = int(random(4));

    fallSpeed = speed;
  }

  void reStart()
  {
    xLoc = random(4000);
    yLoc = random(-4000, -20);
  }

  //moves a drop random(fallspeed) every frame
  void move()
  {
    yLoc = yLoc + random(fallSpeed);

    //when a drop goes off screen it sends it back to top with a random location 
    if (yLoc > height + 20)
    {
      yLoc = xStarting;
      xLoc = yStarting;
    }
  }

  boolean collision()
  { 
    if (mouseX > xLoc-boxSize && mouseX < xLoc+boxSize && mouseY > yLoc-boxSize && mouseY < yLoc+boxSize) {
      clicked();
      return true;
    }
    return false;
  }
  
  void clicked() {
    // Test if the cursor is over the box 
    power--;
  }

  void display()
  {
    rectMode(CENTER);
    noStroke();
    //change color based on type
    
    switch (type) {
      case 0:
        fill(150, 200, 200);
        break;
      case 1:
        fill(33, 200, 200);
        break;
      case 2:
        fill(222, 200, 200);
        break;
      case 3:
        fill(80, 200, 200);
        break;
    }
    
    rect(xLoc, yLoc, 70, 70, 10, 10, 10, 10);
    
    String powerStr = str(round(power));
    
    fill(255,255,255);
    ellipse(xLoc + 35, yLoc - 35, 30, 30);
    
    fill(255,0,255);
    textFont(f, 30);
    text(powerStr, xLoc + 35, yLoc - 25);
    rectMode(CORNER);
  }
}