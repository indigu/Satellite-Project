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
  
  
  
}