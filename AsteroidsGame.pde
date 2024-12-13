//your variable declarations here
Spaceship spaceship = new Spaceship();
Star[] starfield = new Star[200];
ArrayList <Bullet> bullet = new ArrayList <Bullet>();
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid>();
Health hp = new Health();

public void setup(){
  size(500, 500);
  for(int i = 0; i < starfield.length; i++){
    starfield[i] = new Star();
  }
  
  for(int i = 0; i < 15; i++){
    asteroid.add(new Asteroid());
  }
  
}
public void draw(){
  background(0, 0, 0);
  hp.show();
  if(spaceship.getcrashes() > 9){
    noLoop();
  }
  hp.show();
  
  for(int i = 0; i < starfield.length; i++){
    starfield[i].show();
  }
  for(int i = 0; i < asteroid.size(); i++){
    if(dist((float)spaceship.getmyCenterX(), (float)spaceship.getmyCenterY(), (float)asteroid.get(i).getmyCenterX(), (float)asteroid.get(i).getmyCenterY()) < 30){
      spaceship.setcrashes(spaceship.getcrashes()+1);
      hp.downhp();
      asteroid.remove(i);
      i--;
    }else{
      asteroid.get(i).move();
      asteroid.get(i).show();
    }
  }
  
  
  for(int i = 0; i < bullet.size(); i++){
    for(int k = 0; k < asteroid.size(); k++){
      if(dist((float)asteroid.get(k).getmyCenterX(), (float)asteroid.get(k).getmyCenterY(), (float)bullet.get(i).getmyCenterX(), (float)bullet.get(i).getmyCenterY()) < 37f){
         bullet.remove(i);
         asteroid.remove(k);
         i--;
         k--;
         break;
      }else if(bullet.get(i).getmyCenterX() == width || bullet.get(i).getmyCenterX() == 0 || bullet.get(i).getmyCenterY() == 0 || bullet.get(i).getmyCenterY() == height){
        bullet.remove(i);
        i--;
        break;
      }else{
        bullet.get(i).move();
        bullet.get(i).show();
      }
    }
   
  }
  // version 2 end
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
    spaceship.turn(5);
  }
  if(key == 'r'){
    spaceship.turn(-5);
  }
  if(key == ' '){
    bullet.add(new Bullet(spaceship));
    bullet.get(bullet.size()-1).forward();
    
  }
  if(key == 'd'){
    spaceship.backward();
  }

}
