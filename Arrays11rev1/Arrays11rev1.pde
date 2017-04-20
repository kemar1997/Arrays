// Your name goes here

// Instantiate an array of 60 ball elements
Ball[] myBall = new Ball[60];

// Set the size of the output window, set drawing mode to smooth
// and instantiate the myBall[] array objects
void setup()
{
  size(500, 425);
  
  for (int index = 0; index < myBall.length; index++)
  {
    myBall[index] = new Ball();
  }
}

// Erase the screen to white and iterate through the methods of the myBall[] 
// array objects using a for-each loop
void draw()
{
  background(255);
  
  for (Ball ball: myBall)
  {
      ball.display();
      ball.moveHorizontal();
      ball.moveVertical();
  }
}