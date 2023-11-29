class Spaceship extends Floater{   
    public Spaceship(){
      corners = 6;
      xCorners = new int[]{-15,0,10,0,-15,-10};
      yCorners = new int[]{10,10,0,-10,-10,0};
      myColor = color(255);
      myCenterX = myCenterY = 500;
      myXspeed = myYspeed = 0;
      myPointDirection = 0;
    }
    public void setXspeed(double x){
       myXspeed = x;
    }
    public void setYspeed(double y){
      myYspeed = y;
    }
    public void setPointDirection(double theta){
      myPointDirection = theta;
    }
    public void setCenterX(double x){
      myCenterX = x;
    }
    public void setCenterY(double y){
      myCenterY = y;
    }
    public double getCenterX(){
      return myCenterX;
    }
    public double getCenterY(){
      return myCenterY;
    }
    public double getXspeed(){
      return myXspeed;
    }
    public double getYspeed(){
      return myYspeed;
    }
    public void show ()  
    {         
      translate((float)myCenterX, (float)myCenterY);
      float dRadians = (float)(myPointDirection*(Math.PI/180));
      rotate(dRadians);
      if (wIsPressed == true){
        float f = (float)(0.8 + Math.random()*0.4);
        fill(255, 165, 0);
        stroke(255, 255, 0);
        triangle(0, 10, 0, -10, -25*f, 0);
        fill(255, 0, 255);
        stroke(255, 0, 0);
        triangle(0, 10, 0, -10, -20*f, 0);
      }
      fill(myColor);   
      stroke(myColor); 
      beginShape();
      for (int nI = 0; nI < corners; nI++)
      {
        vertex(xCorners[nI], yCorners[nI]);
      }
      endShape(CLOSE);
      rotate(-1*dRadians);
      translate(-1*(float)myCenterX, -1*(float)myCenterY);
    }
}
