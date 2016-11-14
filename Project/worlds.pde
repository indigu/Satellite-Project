//o = original
//t = temp
class World
{
  float radius;
  float distance;
  float angle;


  World(float rad, float dis)
  {
    radius = rad;
    distance = dis;
  }

  void run()
  {
    display();
  }

  void display()
  {
    translate(width/2, height/2);
    ellipse(0,0, radius, radius);
  }

}



void starBackground()
{
  float ellipseSize = random(0,10);
  fill(0,10);
  rect(0, 0, width, height);
  
  fill(200, 90);
  ellipse(random(width), random(height), ellipseSize, ellipseSize);
}