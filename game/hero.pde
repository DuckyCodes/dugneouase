class hero extends object {

  float sp;
  int ry, rx;


  hero() {
    super();
    sp=5;
    ry= 1;
    rx=1;
  }

  void show() {
    fill(pink);
    stroke(blue);
    strokeWeight(2);
    circle(loc.x, loc.y, 40);
  }
  void act() {
    super.act();

    if (wKey) vel.y =-sp;
    if (sKey) vel.y=sp;
    if (aKey) vel.y =-sp;
    if (dKey) vel.y=sp;

    if (vel.mag()>5) vel.setMag(sp);
    if (!wKey&&!sKey) vel.y =0;
    if (!aKey&&!dKey) vel.x =0;
  }
}
