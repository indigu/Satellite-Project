class Star
{
  float x;
  float y;
  
  Star()
  {
    x = random(0, width);
    y = random(0, height);
  }
  
  void StarRun()
  {
    fill(255);
    noStroke();
    ellipse(x, y, 4, 4);
  }
  
  void StarYellowRun()
  {
    fill(255, 255, 0);
    noStroke();
    ellipse(x, y, 3, 3);
  }
}
//Just a class for a background