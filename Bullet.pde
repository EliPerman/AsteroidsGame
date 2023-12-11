class Bullet extends Floater {
  public Bullet (Spaceship theShip){
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection() + Math.random()*10 - 5;
    accelerate(20);
  }
  public void show(){
     fill(255,255,200);
     pushMatrix();
     translate((float)myCenterX, (float)myCenterY);
     rotate((float)(myPointDirection*PI/180));
     ellipse(0, 0, 15, 3);
     popMatrix();
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  }
  public double getCenterX(){
     return myCenterX;
  }
  public double getCenterY(){
     return myCenterY;
  }
}
