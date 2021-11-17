class Follower extends Enemy {

  Follower(int x, int y) {
    super(100, 50, x, y);
  }

  void show() {
    fill(green,255);
    ellipse(loc.x, loc.y, s, s);
    fill(0);
    textSize(20);
    text("fuck", loc.x, loc.y);
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
  }
  void show() {
    fill(green);
    ellipse(loc.x, loc.y, s, s);
    fill(0);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  void act() {
    super.act();

    if ((dist(myHero.loc.x, myHero.loc.y, loc.x, loc.y) <= 100)) {
      vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    }
    vel.setMag(2.5);
  }
}
