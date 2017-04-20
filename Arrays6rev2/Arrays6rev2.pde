Ball[] myBall = new Ball[60];
StickMan[] stick = new StickMan[4];

void setup()
{
  size(400, 400);
  
  for (int index = 0; index < myBall.length; index++)
  {
    myBall[index] = new Ball();
  }
  
  for (int index = 0; index < stick.length; index++)
  {
    stick[index] = new StickMan();
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
  }
  
  for (int index = 0; index < stick.length; index++)
  {
    stick[index].display();
    stick[index].move();
  }
}