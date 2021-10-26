class hero extends object {
 
  float sp;
  int ry, rx ;
  int s;


  hero() {
    super();
    sp=5;
    ry= 1;
    rx=1;
    s = 40;
  }

  void show() {
    println("asdf");
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
  }
}
