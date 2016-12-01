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
  //myPort = new Serial(this, "COM4", 9600);
  background(155);
  
  minim = new Minim(this);
  player = minim.loadFile("alarm.wav");
  input = minim.getLineIn();
}

void draw()
{
  background(bg);
  
  //myPort.write('1');
  f = createFont("monospace", 20, true);
  fill(255);
  textFont(f,30);
  text("Skynet Infiltration Detect-inator", 45, 45);
  
  //if(myPort.available() > 0)
  //{
  //  val = myPort.read();
  //  println(val);
  //}
  // rect(x-axis, y, w, h)
  textFont(f,20);
  
  if(intruder == true)
  {
    // Button 1
    fill(200);
    rect(50, 425, 125, 40, 7);
    fill(0);
    text("Deathworm", 62, 452);
    
    // Button 2
    fill(200);
    rect(190, 425, 125, 40, 7);
    fill(0);
    text("Fireboard", 212, 452);
    
    // Button 3
    fill(200);
    rect(330, 425, 125, 40, 7);
    fill(0);
    text("Cthulhu", 357, 452);
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
