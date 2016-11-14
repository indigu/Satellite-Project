World Earth;

void setup()
{
  size(1000, 600);
  background(244);
  noStroke();
  frameRate(60);
  smooth();
  
  Earth = new World(100,0);
}

void draw()
{
  if (mousePressed)
  { 
    starBackground();
    loop();
    fill(0,100,255);
    Earth.run();
  }
}