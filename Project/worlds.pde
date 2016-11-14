//o = original
//t = temp
class World
{
  float xpos; 
  float ypos;
  float oRad;
  float oSize;
  float theta;
  color colour;


  World(float a, float b)
  {
    xpos = a;
    ypos = b;
  }

  void run()
  {
    display();
  }


  void display()
  {
    fill(0,100,255);
    ellipse(xpos, ypos, 100, 100);
  }

}

void starBackground()
{
  float ellipseSize = random(20);
  fill(0,10);
  rect(0, 0, width, height);
  
  fill(200, 200, 200);
  ellipse(random(width), random(height), ellipseSize, ellipseSize);
}