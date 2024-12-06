//your variable declarations here
Spaceship spaceship = new Spaceship();
Star[] starfield = new Star[200];
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid>();

public void setup(){
  size(500, 500);
  for(int i = 0; i < starfield.length; i++){
    starfield[i] = new Star();
  }
  
  for(int i = 0; i < 20; i++){
    asteroid.add(new Asteroid());
  }
}
public void draw(){
  //your code here
  background(0, 0, 0);
  
  for(int i = 0; i < starfield.length; i++){
    starfield[i].show();
  }
  for(int i = 0; i < asteroid.size(); i++){
    if(dist((float)spaceship.getmyCenterX(), (float)spaceship.getmyCenterY(), (float)asteroid.get(i).getmyCenterX(), (float)asteroid.get(i).getmyCenterY()) < 20){
      asteroid.remove(i);
    }else{
      asteroid.get(i).move();
      asteroid.get(i).show();
    }
  }
  spaceship.move();
  spaceship.show();
}

public void keyPressed(){
  if(key == 'a'){
    spaceship.forward();
  }
  if(key == 'h'){
    spaceship.hyper();
  }
  //move and show always 
  //turn and accelerate soemtiesm
  if(key == 'l'){ 
    spaceship.turn(3);
  }
  if(key == 'r'){
    spaceship.turn(-3);
  }
  if(key == 'd'){
    spaceship.backward();
  }

}
