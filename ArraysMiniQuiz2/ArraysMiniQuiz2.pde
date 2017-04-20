// Initially declare just one ball
Ball[] myBall = new Ball[1];

// Instantiate the first Ball objects

void setup()
{
  size(400, 325);
  smooth();
  
  myBall[0] = new Ball();
}

// Iterate through the methods that display and shrink ball objects
// Append and instantiate a new ball object

void draw()
{
  background(255);  // Erase the screen to white
  
  for (int index = 0; index < myBall.length; index++)
  {
    myBall[index].display();
    myBall[index].shrink();
  }
  
  Ball ball = new Ball();
  myBall = ( Ball[] ) append(myBall, ball);
}