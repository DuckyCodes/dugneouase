class BulletTurret extends object{
  int timer;
  boolean enemyBullet;

  //constructor(s)
  BulletTurret() {
    timer = 25;
    loc = new PVector(loc.x, loc.y);
    vel = new PVector(10,10);
    vel.setMag(10);
    s = 10;
    enemyBullet = true;
  }
  
      
  BulletTurret(PVector mouseaim,float locx, float locy, float velx, float vely) {
      timer = 60;
      hp = 1;
      loc = new PVector(locx,locy);
      vel = new PVector(myHero.loc.x, myHero.loc.y);
      vel.setMag(7);
      s = 10;
      enemyBullet = true;
  }
   BulletTurret(float locx, float locy, float velx, float vely) {
      timer = 60;
      hp = 1;
      loc = new PVector(locx, locy);
      vel = new PVector(velx, vely);
      vel.setMag(7);
      s = 10;
      enemyBullet = true;
  }
 

  void show() {
      stroke(0);
      fill(0);
      ellipse(loc.x, loc.y, s, s);
  }

  void act() {
    loc.add(vel);
    timer--;
    if (timer == 0) {
      hp = 0;
    }
  }
 
}
