//o = original
//t = temp
class World
{
  float radius;
  float distance;
  float angle;
  float speed;

  World(float rad, float dis)
  {
    radius = rad;
    distance = dis;
    angle = random(TWO_PI);
    speed = random(0.01, 0.05);
  }

  void run()
  {
    center();
    display();
  }

  void display()
  {    
    translate(distance, 0);
    rotate(angle);
    rotation();
    ellipse(0,0, radius, radius);
  }
  
  void center()
  {
   translate(width/2, height/2); 
  }    
  
  void rotation()
  {
    angle = angle + speed;
  }
}

/* Much less fancy way of drawing the background
void starBackground()
{
  float ellipseSize = random(0,10);
  fill(0,10);
  rect(0, 0, width, height);
  
  fill(200, 90);
  ellipse(random(width), random(height), ellipseSize, ellipseSize);
}
*/

void rectBackground()
{
  float rectSize = random(0,10);
  fill(0,10);
  rect(0, 0, width, height);
  
  fill(random(0,255), random(0,255), random(0,255));
  rect(random(width), random(height), rectSize, rectSize);
}

void word()
{
    fill(255, 255, 0);
     
    text("Satellites Information Center", width/6 + 10, height/6);
    text("Click anywhere to continue", width/5, height/1.1);
    smooth();
}