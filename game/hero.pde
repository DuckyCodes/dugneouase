class hero extends object {

  float sp;
  int rY, rX ;
  int s;
  int hp;
  int pt;
  AGIF currentAction;
  boolean protection;
  weapon myWeapon;

  hero() {
    super();
    sp=5;
    hpMax=hp=100;
    rY= 1;
    rX= 1;
    s = 40;
    currentAction = manStand;

    pt = 100;
    protection = true;
    myWeapon = new Shotgun();
  }

  void show() {
    pushMatrix();
    stroke(blue);
    ellipse(myHero.loc.x, myHero.loc.y, pt, pt);

    currentAction.show( myHero.loc.x, myHero.loc.y, s, s);

    fill(white);
    textAlign(CENTER, CENTER);
    textSize(25);
    text(hp, CENTER, CENTER);

    popMatrix();
  }
  void act() {
    super.act();

    if (wKey) vel.y =-sp;
    if (sKey) vel.y=sp;
    if (aKey) vel.x=-sp;
    if (dKey) vel.x=sp;

    if (vel.mag()>5) vel.setMag(sp);
    if (!wKey&&!sKey) vel.y =0;
    if (!aKey&&!dKey) vel.x =0;

    if (abs(vel.y)>abs(vel.x)) {
      if (vel.y>=0)currentAction = manUp;
      else currentAction = manDown;
    } else {
      if (vel.x>0)currentAction = manRight;
      else currentAction = manLeft;
    }
  

    if (nR != white && loc.y ==height*0.1&& loc.x >= width/2-50&&loc.x <= width/2+50  ) {
      rY--;
      loc = new PVector(width/2, height*0.9-10);
    } else if (eR != white && loc.x ==width*0.9&& loc.y >= height/2-50&& loc.y <= height/2+50) {
      rX++;
      loc = new PVector(width*0.1+10, height/2 );
    } else if (sR != white && loc.y ==height*0.9&& loc.x >= width/2-50 &&loc.x <= width/2+50) {
      rY++;
      loc = new PVector(width/2, height*0.1+10);
    } else if (wR != white && loc.x ==width*0.1&& loc.y >= height/2-50&& loc.y <= height/2+50) {
      rX--;
      loc = new PVector(width*0.9-10, height/2);
    }
    myWeapon.update();
    //println(spaceKey);
    if (spaceKey) {
      myWeapon.shoot();
    }

    if (protection == true) {
      pt--;
    }
    if (pt<=0) {
      protection = false;
    }

    int i = 0;
    while (i < myObjects.size()) {
      object obj = myObjects.get(i);
      if (obj instanceof Enemy && roomX == obj.roomX && roomY == obj.roomY) {
        if (protection == false) {
          if (dist(myHero.loc.x, myHero.loc.y, obj.loc.x, obj.loc.y) <= s/2 + obj.s/2) {
            hp--;
            protection = true;
            pt = 100;
          }
        }
      }
      if (obj instanceof DropItem && Collidingwith(obj)) {
        DropItem item = (DropItem) obj;
        if (item.type == GUN) {
          myWeapon = item.w;
          item.hp = 0;
        }
        if (item.type == HEALTH) {
          myHero.hp = myHero.hp + 10;
          if (hp>hpMax)hp = hpMax;
          item.hp = 0;
        }
      }

      i++;

      if (myHero.hp == 0) mode = egame;
    }
  }
}
