class hero extends object {

  float sp;
  int rY, rX ;
  int s;
  weapon myWeapon;

  hero() {
    super();
    sp=5;
    rY= 1;
    rX= 1;
    s = 40;
    myWeapon = new machineGun();
  }

  void show() {
    fill(pink);
    stroke(blue);
    strokeWeight(2);
    ellipse(loc.x, loc.y, s, s);
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
    println(spaceKey);
    if (spaceKey) {
      myWeapon.shoot(); 
      println("pew pew");
    }
  }
}
