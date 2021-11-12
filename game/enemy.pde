class Enemy extends object {
  // float sp;
  //int rY, rX ;
  //int s;
  //in
  Enemy() {
   
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    hp = 100;
    roomX = 1;
    roomY= 1;
  }
    Enemy(int x, int y) {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    hp = 100;
    roomX = 1;
    roomY= 1;
  }
  void show() {
    println("asfd");
    if (roomX==myHero.loc.x && roomY==myHero.loc.y ) {
      stroke(black);
      fill(green);
      circle(loc.x, loc.y, 50);
      //fill(black);
      //textSize(20);
      //text(hp, loc.x, loc.y);
    
    }
  }
  void act() {
    
    super.act();
    int i = 0 ;
    while (i<myObjects.size()) {
      object obj = myObjects.get(i);
      if (obj instanceof Bullet) {
        float d = dist(obj.loc.x, obj.loc.y, loc.x, loc.y);
        if (d<=s/2 + obj.s/2) {
          hp= hp-int(obj.vel.mag());
          obj.hp = 0;
        }
        i++;
      }
    }
  }
}
