class Shotgun extends weapon {
  Shotgun(){
    super(90,5);
  }
   void shoot(){
    if (sTimer >= threshold){
      for (int i = 0; i < 30; i++){
        PVector aimVector = new PVector(mouseX-myHero.loc.x, mouseY-myHero.loc.y);
        aimVector.rotate(random(0.35));
        aimVector.setMag(bSpeed);
        myObjects.add(new Bullet(aimVector, pink, 10,10));
        sTimer = 0;
        }
    }
  }
}
class railGun extends weapon {
  railGun() {
    super(1, 1);
  }
}
