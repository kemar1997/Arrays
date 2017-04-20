class StickMan
{
  float x;
  float y;
  float speed;
  
  StickMan()
  {
    // Set random x- and y-coordinates and random speed for object
    x = random(0, width);
    y = random(50, height - 75);
    speed = random(2, 10);
    smooth();
  }
  
  void display()
  {
    // Head
    fill(255, 204, 151);
    ellipse(x, y - 40, 40, 40);

    // Body
    line(x, y - 20, x, y + 30);

    // Left arm
    line(x, y, x - 25, y + 5);
    line(x - 25, y + 5, x - 40, y + 30);
  
    // Right arm
    line(x, y, x + 18, y + 8);
    line(x + 18, y + 8, x + 42, y - 25);
  
    // Left leg
    line(x, y + 30, x - 5, y + 60);
    line(x - 5, y + 60, x - 35, y + 50);
  
    // Right leg
    line(x, y + 30, x + 35, y + 43);
    line(x + 35, y + 43, x + 15, y + 73);
  
    // Feet
    fill(0);
    rect(x - 42, y + 50, 8, 20);
    rect(x + 15, y + 73, 20, 8);
  }
  
  void move()
  {
    x += speed;  //  Add speed to the x-coordinate
    
    if (x > width)  // If x-coordinate reaches end of screen
    {
      x = 0;
    }
  }
  
}

