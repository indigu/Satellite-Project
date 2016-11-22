/* Much less fancy way of drawing the background
void starBackground()
{
  float ellipseSize = random(0,10);
  fill(0,10);
  rect(0, 0, width, height);
  
  fill(200, 90);
  ellipse(random(width), random(height), ellipseSize, ellipseSize);
}
*/

void rectBackground()
{
  float rectSize = random(0,10);
  fill(0,10);
  rect(0, 0, width, height);
  
  fill(random(0,255), random(0,255), random(0,255));
  rect(random(width), random(height), rectSize, rectSize);
}

void word()
{
    fill(255, 255, 0);
     
    text("Satellites Information Center", width/6 + 10, height/6);
    text("Press anything to continue", width/4.5, height/1.1);
    smooth();
}

void keyPressed()
{
  if( counter == 0)
  {
    counter++;
    timer = 0;
  }
}

void runWorlds()
{
  if(timer > 50)
    {
      Planets[0].run();
      Planets[1].moon();
    }
    if(timer > 160)
    {
      satOne.satOne();
    }
    if(timer > 190)
    {
      satTwo.satTwo();
    }
    if(timer > 250);
    {
      satThree.satThree();
    }  
}
      
void mousePressed()
{
  redraw();
}