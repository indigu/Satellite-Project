class World
{
  float radius;
  float distance;
  float angle;
  float satAngle;
  float speed;
  
  PVector vec;
  PShape earth;
  PShape moon;
  
  World(float rad, float dis)
  {
    radius = rad;
    distance = dis;
    angle = random(TWO_PI);
    satAngle = random(TWO_PI);
    speed = 0.01;
    vec = PVector.random3D();
    vec.mult(distance);
    
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
    translate(vec.x, vec.y, vec.z);
    rotation();
    shape(earth);
    popMatrix();
  }
  
  void moon()
  { 
    pushMatrix();
    lights();
    rotate(angle);
    translate(vec.x, vec.y, vec.z);
    rotation();
    shape(moon);
    popMatrix();
  }
  
  void satOne()
  {
    pushMatrix();
    rotate(angle);
    rotate(satAngle);
    translate(vec.x, vec.y, vec.z);
    rotation();
    shape(earth);
    popMatrix();
  }
  
  void rotation()
  {
    angle = angle + speed;
  }
}