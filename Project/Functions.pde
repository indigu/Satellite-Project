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
  float rectSize = random(1,11);
  fill(0,10);
  rect(0, 0, width, height);
  
  fill(random(0,255), random(0,255), random(0,255));
  rect(random(width), random(height), rectSize, rectSize);
}
//Fancy background for the intro

void word()
{
    fill(255, 255, 0);
     
    text("Satellites Information Center", width/6 + 10, height/6);
    text("Press spacebar to begin", width/4.5, height/1.1);
    smooth();
}
//Intro words

void keyPressed()
{
  if( key == ' ' && counter == false)
  {
    counter = true;
    timer = 0;
  }
}
//Allows the program to progress

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
//Function that shows objects at different times due to timer variable
     
void mouseClicked()
{
  if(lock == true)
  {
    loop();
  }
}
//resumes animation

void satInfoBackground()
{
  stroke(0, 255, 100);
  strokeWeight(6);
  fill(0);
  rect(20, 20, width - 40, height - 40, 20);
  stroke(0, 250, 150);
  strokeWeight(2);
  fill(0);
  rect(30, 30, width - 60, height - 60, 20);
}

void Sat1Display()
{
  pushMatrix();
  translate(width/4, height/2);
  lights();
  noFill();
  noStroke();
  shape(Sat1);
  popMatrix();
}