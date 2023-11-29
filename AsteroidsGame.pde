Spaceship bob;
Star[] nightSky;
ArrayList<Asteroid> rocks;
boolean wIsPressed, aIsPressed, dIsPressed;
public void setup(){
  size(1000,1000);
  bob = new Spaceship();
  nightSky = new Star[200];
  wIsPressed = aIsPressed = dIsPressed = false;
  for (int i = 0; i < 200; i++)
    nightSky[i] = new Star();
  rocks = new ArrayList<Asteroid>();
  for (int i = 0; i < 6; i++)
    rocks.add(new Asteroid());
}
public void draw(){
  background(0);
  for (int i = 0; i < 200; i++)
    nightSky[i].show();
  for (int i = 0; i < rocks.size(); i++){
    if (dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)rocks.get(i).getCenterX(), (float)rocks.get(i).getCenterY()) <= 30){
      rocks.remove(i);
      i--;
  } else {
      rocks.get(i).show();
      rocks.get(i).move();
    }
  }
  bob.move();
  bob.show();
  if (wIsPressed)
    bob.accelerate(0.2);
  if (aIsPressed)
    bob.turn(-3);
  if (dIsPressed)
    bob.turn(3);
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
  if (key == 'a'){
    aIsPressed = false;
  }
  if (key == 'd'){
    dIsPressed = false;
  }
}
