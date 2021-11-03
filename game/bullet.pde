class Bullet extends object {
int timer = 0;

  Bullet() {
    timer = 60;
    hp = 12;
    s=10;
    loc=myHero.loc.copy();
   
    vel.setMag(10);
  
  }

  void show() {
    stroke(pink);
    noFill();
    ellipse(loc.x, loc.y, s, s);
  }
  void act() {
    super.act();
    timer--;

    if (timer<=0) {
      hp =0;
    }
  }
}
