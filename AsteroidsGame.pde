Spaceship bob;
Star[] nightSky;
ArrayList<Asteroid> rocks;
ArrayList<Bullet> bullets;
boolean wIsPressed, aIsPressed, dIsPressed, gIsPressed;
int t = 0;
public void setup() {
  size(1000, 1000);
  bob = new Spaceship();
  nightSky = new Star[200];
  wIsPressed = aIsPressed = dIsPressed = false;
  for (int i = 0; i < 200; i++)
    nightSky[i] = new Star();
  rocks = new ArrayList<Asteroid>();
  for (int i = 0; i < 10; i++)
    rocks.add(new Asteroid());
  bullets = new ArrayList<Bullet>();
}
public void draw() {
  background(0);
  for (int i = 0; i < 200; i++)
    nightSky[i].show();
  for (int i = 0; i < bullets.size(); ) {
    if (bullets.get(i).getCenterX() > width || bullets.get(i).getCenterX() < 0 || bullets.get(i).getCenterY() > height || bullets.get(i).getCenterY() < 0) {
      bullets.remove(i);
    } else {
      bullets.get(i).show();
      bullets.get(i).move();
      i++;
    }
  }
  for (int i = 0; i < rocks.size(); i++) {
    if (dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)rocks.get(i).getCenterX(), (float)rocks.get(i).getCenterY()) <= 30) {
      rocks.remove(i);
      i--;
    } else {
      for (int j = 0; j < bullets.size(); j++) {
        if (dist((float)bullets.get(j).getCenterX(), (float)bullets.get(j).getCenterY(), (float)rocks.get(i).getCenterX(), (float)rocks.get(i).getCenterY()) <= 30) {
          rocks.remove(i);
          bullets.remove(j);
          i--;
          break;
        }
      }
    }
  }
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
  }
  bob.move();
  bob.show();
  if (wIsPressed)
    bob.accelerate(0.2);
  if (aIsPressed)
    bob.turn(-3);
  if (dIsPressed)
    bob.turn(3);
  if (gIsPressed) {
    if (t % 10 == 0) {
      bullets.add(new Bullet(bob));
      bob.accelerate(-0.2);
    }
    t++;
  }
}
public void keyPressed() {
  if (key == 'w') {
    wIsPressed = true;
  }
  if (key == 'a') {
    aIsPressed = true;
  }
  if (key == 'd') {
    dIsPressed = true;
  }
  if (key == 'g') {
    gIsPressed = true;
  }
  if (key == 'h') {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX(Math.random()*1000);
    bob.setCenterY(Math.random()*1000);
    bob.setPointDirection(Math.random()*360);
  }
}
public void keyReleased() {
  if (key == 'w') {
    wIsPressed = false;
  }
  if (key == 'a') {
    aIsPressed = false;
  }
  if (key == 'd') {
    dIsPressed = false;
  }
  if (key == 'g') {
    gIsPressed = false;
    t = 0;
  }
}
