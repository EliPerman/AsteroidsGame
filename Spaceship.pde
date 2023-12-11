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
    public double getPointDirection(){
      return myPointDirection;
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
        fill(255, 0, 100);
        stroke(255, 0, 0);
        triangle(0, 10, 0, -10, -15*f, 0);
      }
      if (gIsPressed == true && t % 5 == 0){
        int n = (int)(Math.random()*2)*2+5;
        fill(255, 255, 100);
        stroke(255, 255, 100);
        beginShape();
        vertex(0, 0);
        for (int i = 0; i < n; i++){
          if (i % 2 == 0)
            vertex((float)(15*Math.cos(-PI/12+PI*i/(6*(n-1)))*(1 + 0.3*Math.random())), (float)(15*Math.sin(-PI/12+PI*i/(6*(n-1)))*(1 + 0.3*Math.random())));
          else
            vertex((float)(15*Math.cos(-PI/12+PI*i/(6*(n-1)))*(0.7 + 0.3*Math.random())), (float)(15*Math.sin(-PI/12+PI*i/(6*(n-1)))*(0.7 + 0.3*Math.random())));
        }
        endShape(CLOSE);
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
