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


World(color c, float tRad, float tSize)
{
  colour = c;
  oRad = tRad;
  oSize = tSize;
}



}

void background()
{
  float ellipseSize = random(20);
  fill(0,10);
  rect(0, 0, width, height);
  
  fill(200, 200, 200);
  ellipse(random(width), random(height), ellipseSize, ellipseSize);
}