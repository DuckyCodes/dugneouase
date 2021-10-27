class hero extends object {

  float sp;
  int rY, rX ;
  int s;


  hero() {
    super();
    sp=5;
    rY= 1;
    rX=1;
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

    if (nR != black && loc.y ==height*0.1&& loc.x <= width/2+50) {
      rY--;
      loc = new PVector(width/2, height*0.9-10);
    } else if (eR != black && loc.y ==height*0.9&& loc.x <= width/2-50) {
      rX++;
      loc = new PVector(width/2, height*0.1-10);
    } else if (sR != black && loc.y ==height*0.1&& loc.x <= width/2+50) {
      rY++;
      loc = new PVector(width/2, height*0.9-10);
    } else if (wR != black && loc.y ==height*0.1&& loc.x <= width/2+50) {
      rX--;
      loc = new PVector(width/2, height*0.9-10);
    }
  }
}
