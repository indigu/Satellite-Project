class World
{
  float radius;
  float distance;
  float angle;
  float satAngle;
  float speed;

  PShape earth;
  PShape moon;
  
  World(float rad, float dis)
  {
    radius = rad;
    distance = dis;
    angle = random(TWO_PI);
    satAngle = random(TWO_PI);
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
    pushMatrix();
    rotate(angle);
    translate(distance, 0);
    rotation();
    shape(earth);
    popMatrix();
  }
  
  void moon()
  { 
    pushMatrix();
    lights();
    rotate(angle);
    translate(distance, 0);
    rotation();
    shape(moon);
    popMatrix();
  }
  
  void satOne()
  {
    pushMatrix();
    rotate(angle);
    rotate(satAngle);
    translate(distance, 0);
    rotation();
    shape(earth);
    popMatrix();
  }
  
  void rotation()
  {
    angle = angle + speed;
  }
}