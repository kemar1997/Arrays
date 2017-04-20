Ball[] myBall = new Ball[6];

void setup()
{
  size(400, 325);
  smooth();
  
  for (int index = 0; index < myBall.length; index++)
  {
    myBall[index] = new Ball();
  }
}

void draw()
{
  background(255);
  
  for (int index = 0; index < myBall.length; index++)
  {
      myBall[index].display();
      myBall[index].moveHorizontal();
      myBall[index].moveVertical();
      myBall[index].newColor();
  }
}