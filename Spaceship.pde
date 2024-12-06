public class Spaceship extends Floater{
  
  public Spaceship(){
     corners = 12;
     xCorners = new int[]{20, 16, 10, 4, -14, -14, -20, -14, -14, 4, 10, 16};
     yCorners = new int[]{0, 8, 10, 10, 24, 8, 0, -8, -24, -10, -10, -8};
     myColor = color(255, 255, 255);
     myCenterX = 250;
     myCenterY = 250;
     myPointDirection = 0;
     myXspeed = 0;
     myYspeed = 0;
  }
  
  public void hyper(){
    resetloc();
    myXspeed = 0;
    myYspeed = 0;
    turn(Math.random()*360);
  }
  
  public void forward(){
    accelerate(1);
  }
  public void backward(){
    accelerate(-1);
  }
  
  public void resetloc(){
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
    
  }
  
  public int getCorners(){
    return corners;
  }
  public int[] getxCorners(){
    return xCorners;
  }
  public int[] getyCorners(){
    return yCorners;
  }
  public int getmyColor(){
    return myColor;
  }
  public double getmyCenterX(){
    return myCenterX;
  }
  public double getmyCenterY(){
    return myCenterY;
  }
  public double getmyXspeed(){
    return myXspeed;
  }
  public double getmyYspeed(){
    return myYspeed;
  }
  public double getmyPointDirection(){
    return myPointDirection;
  }
  
  public void setCorners(int a){
    corners = a;
  }
  public void setxCorners(int[] a){
    xCorners = a;
  }
  public void setyCorners(int[] a){
    yCorners = a;
  }
  public void setmyColor(int a){
    myColor = a;
  }
  public void setmyXspeed(int a){
    myXspeed = a;
  }
  public void setmyYspeed(int a){
    myYspeed = a;
  }
  public void setMyPointDirection(int a){
    myPointDirection = a;
  }
  
  
  
  
  
  
}
