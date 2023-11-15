class Star
{
  private int myX, myY, myColor;
  public Star(){
     myX = (int)(Math.random()*1000);
     myY = (int)(Math.random()*1000);
     myColor = color((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
  }
  public void show(){
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 5, 5);
  }
}
