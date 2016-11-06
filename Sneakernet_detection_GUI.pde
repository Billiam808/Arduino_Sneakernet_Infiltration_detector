// constant drawn image. Cant be changed.
// drawn at the very start
void setup()
{
  // size(width, height) -> sets the drawing canzas
  size(800,1000);
  drawRadar();
}

// constantly draws whats inside the function
// into the canvas
void draw()
{

}

void drawRadar()
{  
  // Sets the background color of the canvas
  background(155);
  // sets the thickness of the lines
  // the argument is the number of pixels used
  stroke(RGB, 185);
  strokeWeight(5);
    
  // arc(a,b,c,d,start,stop);
  // a: x-coordinate of arc's ellipse
  // b: y-coordinate of arc's ellipse
  // c: width of the arc's ellipse
  // d: height of the arc's ellipse
  // start: start of the arc specified in radians
  // stop: end of the arc specified in radians
  // origin: (400,600)
  // Radius: 350
  // Diameter: 700
  arc(400,600,700,700,0,TWO_PI);
  
  
}

void drawLines()
{
 translate(400, 600); 
 
}
