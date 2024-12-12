class Bullet extends Floater{
  public Bullet(Spaceship ship){
    
    myCenterX = ship.getmyCenterX();
    myCenterY = ship.getmyCenterY();
    myXspeed = ship.getmyXspeed();
    myYspeed = ship.getmyYspeed();
    myColor = color(255, 0, 0);
    myPointDirection = ship.getmyPointDirection();

  }
  public void forward(){
    accelerate(6);
  }
  
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
 
}
