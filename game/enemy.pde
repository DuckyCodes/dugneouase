class Enemy extends object {
  float sp;
  int rY, rX ;
  int s;

  Enemy() {
    s = 50;
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    hp = 100;
    roomX = 0;
    roomY= 0;
  }
  Enemy(int _hp, int s, int x, int y){
    loc = new PVector(width/2,height/2);
    vel = new PVector(0,0);
    hp = _hp;
    s = 50;
    roomX = x;
    roomY = y; 
  }
  void show() {
    stroke(black);
    fill(green);
    circle(loc.x, loc.y, s);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  void act() {

    super.act();

    int i = 0 ;
    while (i<myObjects.size()) {
      object obj = myObjects.get(i);
      if (obj instanceof Bullet) {
        float d = dist(obj.loc.x, obj.loc.y, loc.x, loc.y);
        if (d <= s/2 + obj.s/2) {
          hp = hp - int(obj.vel.mag());
          obj.hp = 0;
        }
      }
      i++;
    }
  }
}
