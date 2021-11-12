class machineGun extends weapon {

  machineGun() {
    super(10, 100);
  }
}
class railGun extends weapon {
  railGun() {
    super(1, 1);
  }
}
class shotGun extends weapon {
  shotGun() {
    super(100, 1);
  }
  void shoot() {
    if (sTimer >= threshold) {
      for (int i = 0; i < 20; i++) {
        PVector aimVector = new PVector(mouseX-myHero.loc.x, mouseY-myHero.loc.y);
        aimVector.rotate(random(-PI, PI));
        aimVector.setMag(bSpeed);
        myObjects.add(new Bullet(aimVector, pink, 10,10));
      }
      sTimer=0;
    }
  }
}
