/** 
 * COMP570 Programming for Creativity 2016 S1
 *
 * Assignment 1 - Start Code
 *
 * This programs draws one black circle on the screen
 * that can be turned white with a mouse click.
 *
 *@author Samuel Hunt, Student ID# INSERT HERE
 * @version 1.8 - 12/03/2016: Created
 */

// Defining the Global Variables
 // NOTE TO SELF: Define the different colours: BG, RED AND WHATEVER for later
//color circleColour = color(0); // Global variable for the circle colour; start "black"
 
 
color topLaunch = color(255, 0, 0);
color bottomLaunch = color(0, 0, 255);
color backgroundLaunch = color(250,238,10);
color strokeLaunch = color(0);


/** 
 * Sets up the program.
 */
 void setup()
 {
   // setup the canvas size
   size(300, 300);
   background(backgroundLaunch); // Setting the background as Yellow
 }
 
 
/** 
 *Draws a single frame.
 */
void draw()
{
  
    background(backgroundLaunch);
  // NOTE TO SELF: CHANGE THE CIRCLE COLOUR TO DIFFERENT ONES
  // Also change the code so that the circles move and start in each corner. 
  
  
  // investigate maps
  ellipseMode(CORNERS);
  
  //draw TopLeft Circle:
  fill(topLaunch);
  stroke(strokeLaunch);
  ellipse(0, 0, mouseX, mouseY);
  
    //draw TopRight Circle:
  fill(topLaunch);
  ellipse(299, 0, mouseX, mouseY);
  
    //draw BottomLeft Circle:
  fill(bottomLaunch);
  ellipse(299, 299, mouseX, mouseY);
  
    //draw BottomRight Circle:
  fill(bottomLaunch);
  ellipse(0, 299, mouseX, mouseY);
}


/**
* Called when the user presses the mouse button.
* This will change the circle colour to white.
*/

void mousePressed()
{
  
  topLaunch = Randomise();
  
 
 // These will randomly generate the colours for the top two ellipses
  float colourRedTop   = random(0, 255); // Possibly change these to a class or something so I write Random or osmething 
  float colourGreenTop = random(0, 255);
  float colourBlueTop  = random(0, 255);
  
  // These will randomly generate the colours for the bottom two ellipses 
  float colourRedBot   = random(0, 255);
  float colourGreenBot = random(0, 255);
  float colourBlueBot  = random(0, 255);
  
  // These will randomly generate the colours for the Background
  float colourRedBG   = random(0, 255);
  float colourGreenBG = random(0, 255);
  float colourBlueBG  = random(0, 255);
  
  float colourStrokeRND = random(0, 255);
  
/** 
 * This area will actaully use the randomly generated numbers from above
 * and apply them to the circles and the background.
 */

  color topCirclesRandom = color(colourRedTop, colourGreenTop, colourBlueTop); 
  color bottomCirclesRandom = color(colourRedBot, colourGreenBot, colourBlueBot); 
  color backgroundRandom = color(colourRedBG, colourGreenBG, colourBlueBG);
  color strokeRandom = color(colourStrokeRND);
  
/** 
 * This area will change the values of the 'launch colours' so that the colours will
 * actually change to the random values.
  */

  topLaunch = topCirclesRandom; // change top circle colour from red to random
  bottomLaunch = bottomCirclesRandom; // change bottom circle colour from blue to random
  backgroundLaunch = backgroundRandom; // change background from yellow to random
  strokeLaunch = strokeRandom; // change the stroke to random greyscale
}

void Randomise() {
  random(0,255);
}
  