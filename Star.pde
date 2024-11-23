public class Star //note that this class does NOT extend Floater
{
  private int X, Y;
  public Star(){
    X = (int)(Math.random()*width);
    Y = (int)(Math.random()*height);
  }
  public void show(){
    fill(255, 255, 255);
    ellipse(X, Y, 3, 3);
  }
}
