class Follower extends Enemy {

  Follower(int x, int y) {
    super(100, 50, x, y);
    s =50;
  }

  void show() {
    fill(orange);
    ellipse(loc.x, loc.y, s, s);
    fill(0);
    textSize(20);
    text(hp, loc.x, loc.y);
  }

  void act() {
    super.act(); 

    vel = new PVector (myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(2.5);
  }
}


class Lurker extends Enemy {
  Lurker(int x, int y) {
    super(100, 50, x, y);
        s =50;
  }
  void show() {
    fill(blue);
    ellipse(loc.x, loc.y, s, s);
    fill(0);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  void act() {
    super.act();

    if ((dist(myHero.loc.x, myHero.loc.y, loc.x, loc.y) <= 150)) {
      vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    }
    vel.setMag(2.5);
  }
}

//class Turret extends Enemy{
  
//  int shotTimer, threshold;
//  float x;
  
//  Turret(int x, int y){
//    super(250,200,x,y);  
//    hp = 100;
//  }
  
//  void show(){
//    fill(255);
//    ellipse(loc.x,loc.y,5,5);
//    fill(0);
//    textSize(20);
//    text(hp,loc.x,loc.y);
//  }
  
//  void act(){
//     super.act(); 
     
//     shotTimer++;
//     if (shotTimer>threshold) {
//      shotTimer = 0;
//      PVector aim = new PVector();
//      aim.setMag(10);
//      myObjects.add(new BulletTurret(loc.x, loc.y, myHero.loc.x-loc.x, myHero.loc.y-loc.y));
//    }
  
//  }
//}
