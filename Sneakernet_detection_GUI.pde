import processing.serial.*;
import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioInput input;

PImage bg;

Serial myPort;
PFont f;
int val = 0;
boolean intruder = true;

void setup()
{
  frameRate(30);
  bg = loadImage("test_bg.png");
  
  // size of the canvas
  size(500, 500); 
  myPort = new Serial(this, "COM4", 9600);
  background(155);
  
  minim = new Minim(this);
  player = minim.loadFile("alarm.wav");
  input = minim.getLineIn();
}

void draw()
{
  background(bg);
  
  myPort.write('1');
  f = createFont("monospace", 20, true);
  fill(255);
  textFont(f,20);
  text("Skynet Infiltration Detect-inator", 90, 45);
  
  // rect(x-axis, y, w, h)
  textFont(f,20);
  
  // quadrant 4
  arc(250,230,300,300, 0, HALF_PI);
  
  // quadrant 3
  arc(250,230,300,300, HALF_PI, PI);
  
  // quadrant 2
  arc(250,230,300,300, PI, TWO_PI-PI/2);

  //quadrant 1
  arc(250,230,300,300, TWO_PI-PI/2, TWO_PI);

  // Vertical line
  line(250, 80, 250, 380); 
  // Horizontal line
  line(100, 230, 400, 230);
  
  if(myPort.available() > 0)
  {
    val = myPort.read();
    if(val == 53)
    {
      intruder = true;
    }
  }
  
  if(intruder == true)
  {
    // Button 1
    fill(200);
    rect(50, 425, 125, 40, 7);
    fill(0);
    text("Deathworm", 56, 452);
    
    // Button 2
    fill(200);
    rect(190, 425, 125, 40, 7);
    fill(0);
    text("Fireboard", 207, 452);
    
    // Button 3
    fill(200);
    rect(330, 425, 125, 40, 7);
    fill(0);
    text("Cthulhu", 357, 452);
    
    val = myPort.read();
    if(val == 49)
    {
      //quadrant 1
      fill(204, 102, 0);
      arc(250,230,300,300, TWO_PI-PI/2, TWO_PI);
    }
    else if(val == 50)
    {
      // quadrant 2
      fill(204, 102, 0);
      arc(250,230,300,300, PI, TWO_PI-PI/2);
    }
    else if(val == 51)
    {
      // quadrant 3
      fill(204, 102, 0);
      arc(250,230,300,300, HALF_PI, PI);
    }
    else if(val == 52)
    {
      // quadrant 4
      fill(204, 102, 0);
      arc(250,230,300,300, 0, HALF_PI);
    }
    else
    {
      
    }
  }
}

void mousePressed()
{
  player.play();
  delay(2600);
}

void mouseReleased()
{
  player.close();

  //since close closes the file, we'll load it again
  player = minim.loadFile("alarm.wav");
}
