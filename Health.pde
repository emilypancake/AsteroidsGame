class Health{
  private int hp;
  Health(){
    hp = 10;
  }
  void show(){
    fill(color(255, 0, 0));
    rect(0, 0, width, 10);
    fill(color(0, 255, 0));
    rect(0, 0, width * hp/10, 10);
  }
  
  public int gethp(){
    return hp;
  }
  public void downhp(){
    hp--;
  }
}
