Spaceship bob;
Star[] nightSky;
boolean wIsPressed, sIsPressed, aIsPressed, dIsPressed;
public void setup(){
  size(1000,1000);
  bob = new Spaceship();
  nightSky = new Star[200];
  wIsPressed = sIsPressed = aIsPressed = dIsPressed = false;
  for (int i = 0; i < 200; i++)
    nightSky[i] = new Star();
}
public void draw(){
  background(0);
  bob.move();
  bob.show();
  for (int i = 0; i < 200; i++)
    nightSky[i].show();
  if (wIsPressed)
    bob.accelerate(1);
  if (sIsPressed)
    bob.accelerate(-1);
  if (aIsPressed)
    bob.turn(-5);
  if (dIsPressed)
    bob.turn(5);
}
public void keyPressed(){
  if (key == 'h'){
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX(Math.random()*1000);
    bob.setCenterY(Math.random()*1000);
    bob.setPointDirection(Math.random()*360);
  }
  if (key == 'w'){
    wIsPressed = true;
  }
  if (key == 's'){
    sIsPressed = true;
  }
  if (key == 'a'){
    aIsPressed = true;
  }
  if (key == 'd'){
    dIsPressed = true;
  }
}
public void keyReleased(){
  if (key == 'w'){
    wIsPressed = false;
  }
  if (key == 's'){
    sIsPressed = false;
  }
  if (key == 'a'){
    aIsPressed = false;
  }
  if (key == 'd'){
    dIsPressed = false;
  }
}
