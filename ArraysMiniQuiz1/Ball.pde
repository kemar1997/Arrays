// Your name goes here

// Draws and moves ball objects of random fill color
class Ball
{
  // The instance variables
  
  // The x- and y-coordinates
  float x;
  float y;

  // The horizontal and vertical direction
  float speedX;
  float speedY;

  // The random RGB fill color variables
  float r;
  float g;
  float b;

  // The constructor initializes the coordinates, speed and fill colors
  Ball()
  {
    x = random(width);
    y = random(height);

    speedX = random(-10, 10);
    speedY = random(-10, 10);

    r = random(255);
    g = random(255);
    b = random(255);
  }

  // Display the ball
  void display()
  {
    fill(r, g, b);
    ellipseMode(CENTER);
    ellipse(x, y, 50, 50);
  }

  // Move the ball left and right
  // If at up and down edge of output window change directions
  void moveHorizontal()
  {
    x = x + speedX;
      
    if (x < 1 || x > width)
    {
      speedX = -speedX;
    }
  }
    
  // Move the ball up and down
  // If at top or bottom edge of output window change directions
  void moveVertical()
  {
    y = y + speedY;
      
    if (y < 1 || y > height)
    {
      speedY = -speedY;
    }
  }
  
  // If the distance between the center of the ball and the mouse is less than 25
  // randomly change the color of the ball
  void newColor()
  {
    if (dist(x, y, mouseX, mouseY) < 25)
    {
      r = random(255);
      g = random(255);
      b = random(255);
    }
  }
}