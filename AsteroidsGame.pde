//your variable declarations here
Spaceship spaceship = new Spaceship();
Star[] starfield = new Star[200];
public void setup(){
  size(500, 500);
  for(int i = 0; i < starfield.length; i++){
    starfield[i] = new Star();
  }
  
}
public void draw(){
  //your code here
  background(0, 0, 0);
  
  for(int i = 0; i < starfield.length; i++){
    starfield[i].show();
  }
  spaceship.move();
  spaceship.show();
}

public void keyPressed(){
  if(key == 'a'){
    spaceship.faster();
    spaceship.zoomzoom();
  }
  if(key == 'h'){
    spaceship.hyper();

  }
  //move and show always 
  //turn and accelerate soemtiesm
  if(key == 'l'){ 
    spaceship.turn(1);
  }
  if(key == 'r'){
    spaceship.turn(-1);
  }
  if(key == 'd'){
    System.out.println(spaceship.getmyPointDirection());
  }
  //left right accerlate 
}
