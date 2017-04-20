// Your name goes here
// Display stickmen objects and place them in order by age using a selection sort

// The StickMan array initialized to zero (0) elements
StickMan[] stick = new StickMan[0];

// An array of ages to which the stick objects are initialized when instantiated
int[] ages = 
{
  23, 19, 24, 33, 17, 26
};

// Set size of outputwindow and drawing mode to smooth
// Iterate through and instantiate stick[] array objects with age attribute values
void setup()
{
  size(600, 300);
  smooth();

  for (int index = 0; index < ages.length; index++)
  {
    StickMan newStick = new StickMan( ages[index] );
    stick = ( StickMan[] ) append(stick, newStick);
  }
}

// Erase screen to white
// Iterate through and display the stick[] array objects
void draw()
{
  background(255);

  for (int index = 0; index < stick.length; index++)
  {
    stick[index].display(75 + index * 90);
  }
}

// Sort the stick array by the age using a selection sort
void mousePressed()
{
  int smallest;

  for (int index = 0; index < (stick.length - 1); index++)
  {
    smallest = index;

    for (int index2 = (index + 1); index2 < stick.length; index2++)
    { 
      if ( stick[index2].age < stick[smallest].age )
      {
        smallest = index2;
      }
    }

    swap(index, smallest);
  }
}

// Helper method to swap the two stick object elements
void swap(int firstIndex, int secondIndex)
{
  StickMan temporary = stick[firstIndex];
  stick[firstIndex] = stick[secondIndex];
  stick[secondIndex] = temporary;
}