class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = (int)(Math.random()*6 + 5);
    xCorners = new int[corners];
    yCorners = new int[corners];
    for (int i = 0; i < corners; i++){
      int r = (int)(Math.random()*10 + 15);
      xCorners[i] = (int)(r * Math.cos(2*PI*i/corners));
      yCorners[i] = (int)(r * Math.sin(2*PI*i/corners));
    }
    myColor = color(65 + (int)(Math.random()*125));
    myCenterX = Math.random()*1000;
    myCenterY = Math.random()*1000;
    double a = Math.random();
    double b = Math.random()*2*PI;
    myXspeed = a*Math.cos(b);
    myYspeed = b*Math.sin(b);
    myPointDirection = Math.random()*360;
    rotSpeed = Math.random()*11 - 5;
  }
  public void move(){
    super.move();
    turn(rotSpeed);
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
