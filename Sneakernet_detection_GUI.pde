// constant drawn image. Cant be changed.
// drawn at the very start
void setup()
{
  // size(width, height) -> sets the drawing canzas
  size(800,1000);
  // Sets the background color of the canvas
  background(165);
  // arc(a,b,c,d,start,stop);
  // a: x-coordinate of arc's ellipse
  // b: y-coordinate of arc's ellipse
  // c: width of the arc's ellipse
  // d: height of the arc's ellipse
  // start: start of the arc specified in radians
  // stop: end of the arc specified in radians
  
  arc(400,500,50,50,0,TWO_PI);
}

// constantly draws whats inside the function
// into the canvas
void draw()
{
  
}
