World[] Planets = new World[3];
Star[] stars = new Star[500];
World satOne;
World satTwo;
//World satThree;
//World satFour;

PImage EarthTexture;
PImage MoonTexture;
PImage SatTexture;
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
  SatTexture = loadImage("satellite1.jpg");
  
  Planets[0] = new World(200,0);
  Planets[1] = new World(55, 280);
  
  satOne = new World(20, 200);
  satTwo = new World(20, 180);
  //satThree = new World(20, 200);
  //satFour = new World(20, 100);
  
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
      translate(width/2, height/2);
      Planets[0].run();
      Planets[1].moon();  
      satOne.satOne();
      satTwo.satTwo();
      //satThree.satThree();
      //satFour.satFour();
    }
  }
  
}