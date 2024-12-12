public class Spaceship extends Floater{
  private int crashes;
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
     crashes = 0;
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
   public int getcrashes(){
    return crashes;
  }
  public void setcrashes(int a){
    crashes = a;
  }
  
  // All my Getters and Setters are in the floater program
  
  
  
  
  
  
}
