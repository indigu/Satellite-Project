
void starBackground()
{
  float ellipseSize = random(0,10);
  fill(0,10);
  rect(0, 0, width, height);
  
  fill(200, 90);
  ellipse(random(width), random(height), ellipseSize, ellipseSize);
  
  pushMatrix();
  translate(width/4 + 90, height/3);
  rotate(displayAngle);
  displayRotation();
  lights();
  noFill();
  noStroke();
  shape(Sat1);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height - height/3 + 80);
  rotate(displayAngle);
  displayRotation();
  lights();
  noFill();
  noStroke();
  shape(Sat2);
  popMatrix();
  
  pushMatrix();
  translate(width - width/4 - 90, height/3);
  rotate(displayAngle);
  displayRotation();
  lights();
  noFill();
  noStroke();
  shape(Sat3);
  popMatrix();
}


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
    if(timer > 250)
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
  
  if((Sat1Press == true) && (Sat2Press == false) && (Sat3Press == false))
  {
    if(dist(mouseX, mouseY, width/4, height/2) < 80)
    {
      Sat1Lock = false;
    }
  }
  if(menuToggle == true)
  {
    if(dist(mouseX, mouseY, width/4 + 90, height/3) < 80)
    {
      Sat1Toggle = true;
    }
  }
  
  
  if((Sat1Press == false) && (Sat2Press == true) && (Sat3Press == false))
  {
    if(dist(mouseX, mouseY, width/4, height/2) < 80)
    {
      Sat2Lock = false;
    }
  }
  if(menuToggle == true)
  {
    if(dist(mouseX, mouseY, width/2, height - height/3 + 80) < 80)
    {
      Sat2Toggle = true;
    }
  }
  
  
  if((Sat1Press == false) && (Sat2Press == false) && (Sat3Press == true))
  {
    if(dist(mouseX, mouseY, width/4, height/2) < 80)
    {
      Sat3Lock = false;
    }
  }
  if(menuToggle == true)
  {
    if(dist(mouseX, mouseY, width - width/4 - 90, height/3) < 80)
    {
      Sat3Toggle = true;
    }
  }
}
//resumes animation

void sat1InfoBackground()
{
  stroke(255, 99, 71);
  strokeWeight(6);
  fill(0);
  rect(20, 20, width - 40, height - 40, 20);
  stroke(200, 120, 100);
  strokeWeight(2);
  fill(0);
  rect(30, 30, width - 60, height - 60, 20);
}
void sat2InfoBackground()
{
  stroke(#2000B4);
  strokeWeight(6);
  fill(0);
  rect(20, 20, width - 40, height - 40, 20);
  stroke(#4A30BF);
  strokeWeight(2);
  fill(0);
  rect(30, 30, width - 60, height - 60, 20);
}
void sat3InfoBackground()
{
  stroke(#108301);
  strokeWeight(6);
  fill(0);
  rect(20, 20, width - 40, height - 40, 20);
  stroke(#14AF00);
  strokeWeight(2);
  fill(0);
  rect(30, 30, width - 60, height - 60, 20);
}


void Sat1Display()
{
  pushMatrix();
  translate(width/4, height/2);
  rotate(displayAngle);
  displayRotation();
  lights();
  noFill();
  noStroke();
  shape(Sat1);
  popMatrix();
  
  Sat1Press = true;
  Sat2Press = false;
  Sat3Press = false;
  
  fill(255, 200, 50);
  textSize(48);
  text(" Sun-Synchronous orbits ", width/4, height/6);
  if(dist(mouseX, mouseY, width/4, height/2) < 80)
  {
    fill(255, 200, 100);
    textSize(20);
    text("Example: NOAA-14 (NOAA)", mouseX , mouseY - 35);
  }
  if(Sat1Lock == false)
  {
    float xpos = width/2 - 40;
    float ypos = height/2.5;
    fill(255, 200, 80);
    textSize(16);
    text("Meteorological satellites are often placed in a", xpos, ypos);
    text("sun-synchronous or heliosynchronous orbit.", xpos, ypos + 25);
    text("The orbits are designed so that the satellite's orientation", xpos, ypos + 50);
    text("is fixed relative to the Sun throughout the year,", xpos, ypos + 75);
    text("allowing very accurate weather predictions to be made.", xpos, ypos + 100);
    text("Most meteorological satellites orbit ", xpos, ypos + 125);
    text("the Earth 15 to 16 times per day.", xpos, ypos + 150);
  }
}

void Sat2Display()
{
  pushMatrix();
  translate(width/4, height/2);
  rotate(displayAngle);
  displayRotation();
  lights();
  noFill();
  noStroke();
  shape(Sat2);
  popMatrix();
  
  Sat1Press = false;
  Sat2Press = true;
  Sat3Press = false;
  
  fill(#5834FF);
  textSize(48);
  text(" Geosynchronous satellites ", width/4 - 30, height/6);
  if(dist(mouseX, mouseY, width/4, height/2) < 80)
  {
    fill(#5834FF);
    textSize(20);
    text("Example: ECHOSTAR", mouseX , mouseY - 35);
  }
  float xpos = width/2 - 40;
    float ypos = height/2.5;
    fill(#5834FF);
    textSize(16);
    text("Earth-synchronous or geosynchronous satellites, ", xpos, ypos);
    text("are placed into orbit so that their period of rotation.", xpos, ypos + 25);
    text("exactly matches the Earth's rotation.", xpos, ypos + 50);
    text("They take 24 hours to make one rotation.,", xpos, ypos + 75);
    text("However, the plane of orbit for these satellites", xpos, ypos + 100);
    text("is generally not the equatorial plane.", xpos, ypos + 125);
    text("The concept was first proposed by Herman Potočnik in 1928.", xpos, ypos + 150);
}
 
void displayRotation()
{
  displayAngle = displayAngle + displaySpeed;
}