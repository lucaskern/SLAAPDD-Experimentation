//handles the match and the animation
class Match
{
  PImage[] images;
  PImage unLit;

  int imageCount;
  int frame;

  //constructor that brings in the name of the file and the number of frames
  Match(int count, String imagePrefix)
  {
    imageCount = count;
    images = new PImage[imageCount];

    for (int i = 0; i < imageCount; i++)
    {
      String fileName = "Frames/" + imagePrefix + i + ".png";
      images[i] = loadImage(fileName);
    }
  }

  void display(float xLoc, float yLoc, int frameMove)
  {
    //only transition frame after an alotted time
    if (frameCount % 4 == 0)
    {
      frame = (frame+frameMove) % imageCount;
    }
    image(images[frame], xLoc, yLoc);
  }


  //Make the match unlit at the start of the game, hitting start lights it
  void unLit()
  {
    unLit = loadImage("Frames/MatchUnlit.png");
    image(unLit, width / 2.2, height / 1.2);
  }
}