class World
{
  float radius;
  float distance;
  float angle;
  float satAngle;
  float speed;
  //variables I need for a world
  
  PVector vec;
  PShape earth;
  PShape moon;
  PShape sat1;
  PShape sat2;
  PShape sat3;
  //PShapes used

  World(float rad, float dis)
  {
    radius = rad;
    distance = dis;
    angle = random(TWO_PI);
    satAngle = random(TWO_PI);
    speed = 0.01;
    vec = PVector.random3D();
    //calling PVector to have a random point 
    vec.mult(distance);
    //Instead of vec moving it a distance of 1, I multiply it by distance away from
    //center
    
    //Creating the Shapes used   
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
    
    sat3 = createShape(SPHERE, radius/2);
    sat3.setTexture(SatTexture3);

    
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
  //this is for the earth
  
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
    PVector v3 = new PVector(2, 1, 5);
    PVector perp = vec.cross(v3);
    rotate(angle, perp.x, perp.y, perp.z);
    rotate(satAngle);
    translate(vec.x, vec.y, vec.z);
    rotation();
    shape(sat2);
    popMatrix();
  }
  void satThree()
  {
    pushMatrix();
    PVector v4 = new PVector(1, 2, 1);
    PVector perp = vec.cross(v4);
    rotate(angle, perp.x, perp.y, perp.z);
    rotate(satAngle);
    translate(vec.x, vec.y, vec.z);
    rotation();
    shape(sat3);
    popMatrix();
  } 
  //All sats are identical, with different angles of vector
  
  
  void rotation()
  {
    angle = angle + speed;
  }
}
//makes worlds rotate