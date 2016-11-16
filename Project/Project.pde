World[] Planets = new World[4];
Star[] stars = new Star[500];

PImage EarthTexture;
PImage MoonTexture;
PFont font;

int counter = 0;
int timer = 0;

void setup()
{
  size(1000,600, P3D);
  background(244);
  noStroke();
  frameRate(60);
  smooth();
  
  font = loadFont("KristenITC-Regular-45.vlw");
  textFont(font);
  
  EarthTexture = loadImage("earth.jpg");
  MoonTexture = loadImage("moon.jpg");
  
  Planets[0] = new World(180,0);
  Planets[1] = new World(40, 200);
  
  for(int i = 0; i < 500; i++)
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
    int i;
    background(0);
    if((timer % 2) == 0)
    {
      for(i = 0; i < 100; i++)
      {
        fill(255,0,255);
        stars[i].StarYellowRun();
      }
    }
    for(i = 100; i < 500; i++)
    {
      stars[i].StarRun();
    }

    timer++;
    if(timer > 50)
    {
      fill(0, 0, 200);
      Planets[0].run();
      fill(155);
      Planets[1].moon();   
    }
  }
  
}