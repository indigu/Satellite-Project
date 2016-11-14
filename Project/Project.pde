World Earth;
PFont font;
int counter = 0;

void setup()
{
  size(1000, 600);
  background(244);
  noStroke();
  frameRate(60);
  smooth();
  
  font = loadFont("KristenITC-Regular-45.vlw");
  textFont(font);
  
  Earth = new World(100,0);
}

void draw()
{
  if(counter == 0)
  {
    word();
    rectBackground();
  }
  
  if(counter > 0)
  {
    starBackground();
    loop();
    fill(0,100,255);
    Earth.run();
  }
    
  if(mousePressed)
  {
   counter++;
  }
}