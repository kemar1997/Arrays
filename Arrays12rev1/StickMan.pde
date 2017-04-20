class StickMan
{
  float x;
  float y;
  
  // RGB colors of the StickMan head
  int r;
  int g;
  int b;
  
  // The StickMan age
  int age;
  
  // Set x- and y-coordinates, the RGB values for the StickMan head
  // and the age of the StickMan object 
  
  StickMan(int newAge)
  {
    x = 0;
    y = height - 150;
    
    r = (int) random(255);
    g = (int) random(255);
    b = (int) random(255);
    
    age = newAge;
  }
  
  // Draw the StickMan object and display his name
  void display(int xLocation)
  {
    // Calculate x-coord from index parameter
    x = xLocation;
    
    // Black for lines, borders and text
    stroke(0);
    
    //Draw the head
    fill(r, g, b);
    ellipse(x, y - 40, 40, 40);
    
    // Draw the body
    line(x, y - 20, x, y + 30);
    
    // Draw the left arm
    line(x, y, x - 25, y + 5);
    line(x - 25, y + 5, x - 40, y + 30);
    
    // Draw the right arm
    line(x, y, x + 18, y + 8);
    line(x + 18, y + 8, x + 42, y - 25);
    
    // Draw the left leg
    line(x, y + 30, x - 5, y + 60);
    line(x - 5, y + 60, x - 35, y + 50);
    
    // Draw the right leg
    line(x, y + 30, x + 35, y + 43);
    line(x + 35, y + 43, x + 15, y + 73);
    
    // Draw the feet
    fill(0);
    rect(x - 42, y + 50, 8, 20);
    rect(x + 15, y + 73, 20, 8);
    
    // Draw the age
    textAlign(CENTER);
    text(age, x, y + 100);
  }
  
}