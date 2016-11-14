World Earth;
PFont font;
int counter = 0;
int timer = 0;
void setup()
{
  size(1000, 600);
  background(244);
  noStroke();
  frameRate(50);
  smooth();
  
  font = loadFont("KristenITC-Regular-45.vlw");
  textFont(font);
  
  Earth = new World(100,0);
}

void draw()
{
  if(counter == 0)
  {
    rectBackground();
    timer++;
    if(timer > 50)
    {
      word();
    }
  }
  else
  {
    starBackground();
    timer++;
    if(timer > 50)
    {
      fill(0, 0, 200);
      Earth.run();
    }
  }
    
  if(mousePressed)
  {
   counter++;
   timer = 0;
  }
}