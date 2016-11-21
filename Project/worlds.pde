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
  PShape sat1;
  PShape sat2;

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
    
    sat1 = createShape(SPHERE, radius/2);
    sat1.setTexture(SatTexture1);
    
    sat2 = createShape(SPHERE, radius/2);
    sat2.setTexture(SatTexture2);
    

    
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
    PVector v2 = new PVector(1, 0, 1);
    PVector perp = vec.cross(v2);
    rotate(angle, perp.x, perp.y, perp.z);
    translate(vec.x, vec.y, vec.z);
    rotation();
    shape(moon);
    popMatrix();
  }
  
  void satOne()
  {
    pushMatrix();
    PVector v2 = new PVector(1, 0, 1);
    PVector perp = vec.cross(v2);
    rotate(angle, perp.x, perp.y, perp.z);
    rotate(angle);
    rotate(satAngle);
    translate(vec.x, vec.y, vec.z);
    rotation();
    shape(sat1);
    popMatrix();
  }
  void satTwo()
  {
    pushMatrix();
    PVector v3 = new PVector(2, 1, 6);
    PVector perp = vec.cross(v3);
    rotate(angle, perp.x, perp.y, perp.z);
    rotate(satAngle);
    translate(vec.x, vec.y, vec.z);
    rotation();
    shape(sat2);
    popMatrix();
  }
  
  void rotation()
  {
    angle = angle + speed;
  }
}