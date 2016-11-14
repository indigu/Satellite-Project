World Earth;

void setup()
{
  size(1000, 600);
  background(0);
  noStroke();
  frameRate(60);
  smooth();
  
  Earth = new World(width/2,height/2);
}

void draw()
{
  starBackground();
  Earth.run();
}