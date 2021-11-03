class weapon {
  int sTimer;
  int threshold;
  int bSpeed; //speed of projectile

  weapon() {
    sTimer=0;
    threshold=30;
    bSpeed=5;
  }
  void update() {

    sTimer++;
  }

  void shoot() {
    if (sTimer>= threshold) {
      PVector aimVector = new PVector(mouseX-myHero.loc.x, mouseY-myHero.loc.x);
      aimVector.setMag(bSpeed);
      myObjects.add(new Bullet()); 
      sTimer = 0;
    }
  }
  void act() {
  }
}
