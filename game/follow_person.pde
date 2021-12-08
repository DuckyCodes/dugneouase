class Follower extends Enemy {

  Follower(int x, int y) {
    super(Follower_HP, FollowerS, x, y);
    s =50;
    xp = 1;
  }

  void show() {
    fill(orange);
    ellipse(loc.x, loc.y, s, s);
    fill(0);
    textSize(20);
    text(hp, loc.x, loc.y);
    println(roomX, roomY);
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
    currentAction = lurkerDown;
  }
  void show() {
    fill(blue);

    currentAction.show( loc.x, loc.y, s, s);

    fill(0);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  void act() {
    super.act();

    if (abs(vel.y)>abs(vel.x)) {
      if (vel.y>=0)currentAction = lurkerUp;
      else currentAction = lurkerDown;
    } else {
      if (vel.x>0)currentAction = lurkerRight;
      else currentAction = lurkerLeft;
    }

    if ((dist(myHero.loc.x, myHero.loc.y, loc.x, loc.y) <= 150)) {
      vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    }
    vel.setMag(2.5);
  }
}


class Turret extends Enemy {

  int shotTimer, threshold;
  float x;

  Turret(int x, int y) {
    super(400, 25, x, y);
  }

  void show() {
    fill(red);
    circle(loc.x, loc.y, 100);
    fill(0);
    textSize(20);
    text(hp, loc.x, loc.y);
  }

  void act() {
    super.act();
    shotTimer++;
    if (shotTimer >= threshold) {
      PVector aimVector = new PVector (myHero.loc.x - loc.x, myHero.loc.y - loc.y);
      aimVector.setMag(1);
      myObjects.add(new BulletTurret(aimVector, 10, 20, loc.x, loc.y));
      shotTimer = 0;
    }
  }
}
