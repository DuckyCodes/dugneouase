class Bullet extends object {

  float speed;
  int s;
  color colour;
  Bullet() {
    loc = new PVector(myHero.loc.x, myHero.loc.y);
    vel = new PVector(0, 0);
    speed = 10;
    vel.setMag(speed);
    hp = 1;
    s = 5;
    colour = pink;
  }

  Bullet(PVector mouseaim, color ncolor, int nsize, float nspeed) {
    loc = new PVector(myHero.loc.x, myHero.loc.y);
    vel = mouseaim;
    speed = nspeed;
    vel.setMag(speed);
    hp = 1;
    s = nsize;
    colour = ncolor;
  }

  void show() {
    stroke(colour);
    fill(colour);
    ellipse(loc.x, loc.y, s, s);
  }
  
  void act() { 
    loc.add(vel);
    if (loc.x < width*0.1 || loc.x > width*0.9 || loc.y < height*0.1 || loc.y > height*0.9) {
      hp = 0;
      int num = 50;
      int n = 0;
      while (n < num) {
        myObjects.add(new Particles(int(random(0, 10)), loc.x, loc.y, colour));
        n++;
      }
    }
  }
}
