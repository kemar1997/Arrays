// Displays a ball that is shrinking and eventually disappears

class Ball
{
  // The size and location of the ball
  float diameter;
  float x;
  float y;
  
  // The RGB colors of the ball
  int r;
  int g;
  int b;
  
  // Initialize randomly the ball's size, location and color
  Ball()
  {
    diameter = random(25, 100);
    
    x = random(width);
    y = random(height);
    
    r = (int) random(255);
    g = (int) random(255);
    b = (int) random(255);
  }
  
  // Display the ball
  // If the size of the ball is zero(0) less, stop displaying it
  void display()
  {
    if (diameter > 0)
    {
      noStroke();
      ellipseMode(CENTER);
      fill(r, g, b, 127);
      ellipse(x, y, diameter, diameter);
    }
  }
  
  // Shrink the size (diameter) of the ball
  void shrink()
  {
    diameter--;
  }
  
}