World[] Planets = new World[2];
Star[] stars = new Star[300];
PFont font;
int counter = 0;
int timer = 0;
void setup()
{
  size(1000,600);
  background(244);
  noStroke();
  frameRate(50);
  smooth();
  
  font = loadFont("KristenITC-Regular-45.vlw");
  textFont(font);
  
  Planets[0] = new World(150,0);
  Planets[1] = new World(60, 160);
  
  for(int i = 0; i < 300; i++)
  {
    stars[i] = new Star();
  }
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
    background(0);
    for(int i = 0; i < 300; i++)
    {
      stars[i].StarRun();
    }
    timer++;
    if(timer > 50)
    {
      fill(0, 0, 200);
      Planets[0].run();
      fill(155);
      Planets[1].display();   
      
    }
  }
  
  if(mousePressed)
  {
   counter++;
   timer = 0;
  }
}