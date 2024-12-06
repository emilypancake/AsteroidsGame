class Asteroid extends Floater{
  private double rotationSpeed;
  
  public Asteroid(){
     corners = 8;
     //xCorners = new int[] {-10, 0, 10};
     xCorners = new int[] {10, 20, 20, 10, -10, -20, 20, 10};
     yCorners = new int[] {20, 10, -10, -20, 20, -10, 10, 20}; 
     //yCorners = new int[] {-10, 10, -10}; 
     myColor = color(255, 255, 255);
     myCenterX = (int)(Math.random()*width);
     myCenterY = (int)(Math.random()*height);
     myXspeed = Math.random();
     myYspeed = Math.random();
     myPointDirection = Math.random()*360;
     rotationSpeed = Math.random();
  }
  public void move(double rotationalSpeed){
    turn(rotationalSpeed);
  }
  public double getmyCenterX(){
    return myCenterX;
  }
  public double getmyCenterY(){
    return myCenterY;
  }
  public void setrotationSpeed(double a){
    rotationSpeed = a;
  }
  
  
}
