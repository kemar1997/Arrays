// Your name goes here

// Set the size of the output window and turn draw() loop off
void setup()
{
  size(400, 400);
  noLoop();
}

void draw()
{
  // Initialize the centers[] array and counter to calculate x-coordinate 
  // for the text() function call
  int[] centers = {21, 293, 45, 165, 79, 128, 316, 226, 387, 66};
  int ctr = 0;
  
  // Iterate through the centers[] array using a for-each loop and draw the circles
  for (int c : centers)
  {
    ellipse(c, c, 50, 50);
    text(c, ctr * 30, height);
    ctr++;
  }
}