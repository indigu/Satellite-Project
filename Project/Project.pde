World[] Planets = new World[3];
Star[] stars = new Star[500];
World satOne;
World satTwo;
World satThree;

PImage EarthTexture;
PImage MoonTexture;
PImage SatTexture1, SatTexture3;
PImage SatTexture2;
PFont font;

int lock = 1;
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
  
  EarthTexture = requestImage("earth.jpg");
  MoonTexture = requestImage("moon.jpg");
  SatTexture1 = requestImage("satellite1.jpg");
  SatTexture2 = requestImage("satellite2.jpg");
  SatTexture3 = requestImage("satellite3.jpg");
  
  Planets[0] = new World(210,0);
  Planets[1] = new World(60, 280);
  
  satOne = new World(15, 220);
  satTwo = new World(15, 160);
  satThree = new World(15, 180);
  //satFour = new World(20, 100);
  
  for(int i = 0; i < 500; i++)
  {
    stars[i] = new Star();
  }
}

void draw()
{
  loop();
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
    
    translate(width/2, height/2);
    runWorlds();
    timer++;
   
    if((keyPressed == true) && (timer > 300))
    {
      lock++;
    }
    if(lock == 2)
    {
      noLoop();
    }
  }
}
  