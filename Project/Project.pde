World[] Planets = new World[3];
//This class array is for Earth and Moon
Star[] stars = new Star[500];
//This is for the flashing stars background

World satOne;
World satTwo;
World satThree;
//This is for the satellites, I only decided to make three as my laptop
//couldn't really handle more


PImage EarthTexture;
PImage MoonTexture;
PImage SatTexture1;
PImage SatTexture2;
PImage SatTexture3;
PFont font;
//Just loading Images and font that can be found within my program

int lock = 1;
int counter = 0;
int timer = 0;
int i;
//global variables

void setup()
{
  size(1000,600, P3D);
  //P3D allows processing to initialise 3D variables, in my case; Sphere
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
  //With higher end devices, this program can load much smoother
  //I'm forced to user requestImage rather than loadImage
  //If you want a smoother experience, please change it to loadImage
    
  Planets[0] = new World(210,0);
  Planets[1] = new World(60, 280);
  //Initialising planet array to the class world
  
  satOne = new World(15, 220);
  satTwo = new World(15, 160);
  satThree = new World(15, 180);
  //Initialising sats variables to the class world
  
  for(i = 0; i < 500; i++)
  {
    stars[i] = new Star();
  }
  //Initialising star array to the class Stars
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
  //This is the start of the program, introduction screen
  else
  {
    background(0);
    //Resets the background
    if((timer % 2) == 0)
    {
      for(i = 0; i < 100; i++)
      {
        fill(255,0,255);
        stars[i].StarYellowRun();
      }
    }
    //This makes the first one hundred stars to be yellow
    for(i = 100; i < 500; i++)
    {
      stars[i].StarRun();
    }
    //This makes the rest four hundred stars
    
    translate(width/2, height/2);
    //This moves the origin to the centre
    runWorlds();
    //I call the runWorlds function which spawns all my worlds and satellites
    timer++;
    //The timer is for certain things to happen as the timer ticks,
    //For example satellites spawn at a different time and is dictated by
    //This timer
   
    if((keyPressed == true) && (timer > 300))
    {
      lock++;
    }
    if(lock == 2)
    {
      noLoop();
    }
    //If user enters another key, the program will lock, and it will be
    //at a stand still
  }
}
  