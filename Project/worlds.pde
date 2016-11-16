class World
{
  float radius;
  float distance;
  float angle;
  float speed;

  PShape earth;
  PShape moon;

  World(float rad, float dis)
  {
    radius = rad;
    distance = dis;
    angle = random(TWO_PI);
    speed = 0.01;
    
    noStroke();
    noFill();
    earth = createShape(SPHERE, radius/2);
    earth.setTexture(EarthTexture);
    
    moon = createShape(SPHERE, radius/2);
    moon.setTexture(MoonTexture);  
  }

  void run()
  {
    display();
  }

  void display()
  {    
    lights();
    translate(width/2, height/2); 
    translate(distance, 0);
    rotate(angle);
    rotation();
    shape(earth);
  }
  
  void moon()
  {    
    lights();
    translate(distance, 0);
    rotate(angle);
    rotation();
    shape(moon);
  }
  
  void rotation()
  {
    angle = angle + speed;
  }
}