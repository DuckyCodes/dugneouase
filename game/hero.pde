class hero extends object {

  float sp;
  int rY, rX ;
  int s;
  int hp;
  int pt;
  boolean protection;
  weapon myWeapon;

  hero() {
    super();
    sp=5;
    hp=5;
    rY= 1;
    rX= 1;
    s = 40;
    pt = 100;
    protection = true;
    myWeapon = new Shotgun();
  }

  void show() {
    pushMatrix();
    stroke(blue);
    ellipse(myHero.loc.x, myHero.loc.y, pt, pt);

    fill(white);
    textAlign(CENTER, CENTER);
    textSize(25);
    text(hp, CENTER, CENTER);


    fill(pink);
    stroke(blue);
    strokeWeight(2);
    ellipse(loc.x, loc.y, s, s);

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
      pt=100;
      pt--;
    }
    if (pt<=0) {
      protection = false;
    }

    int i = 0;
    while (i < myObjects.size()) {
      object obj = myObjects.get(i);
      if (obj instanceof Enemy && roomX == obj.roomX && roomY == obj.roomY) {
        if (dist(myHero.loc.x, myHero.loc.y, obj.loc.x, obj.loc.y) <= s/2 + obj.s/2) {
          if (protection == false) {
            hp--;
            protection = true;
          }
        }
      }
      i++;
    }
    if (myHero.hp == 0) mode = egame;
  }
}
