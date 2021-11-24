class object {
  int roomX, roomY;
  PVector loc;
  PVector vel;
  int hp;
  float sd;
  int s;
  

  object() {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    hp = 1;
  }
  void show() {
  }
  void act() {

    loc.add(vel);

    if (loc.x<width*0.1) loc.x=width*0.1;
    if (loc.y<height*0.1) loc.y=height*0.1;

    if (loc.x>width*0.9) loc.x=width*0.9;
    if (loc.y>height*0.9) loc.y=height*0.9;
  }
  
   boolean Collidingwith(object myObj) {
    float d = dist(myObj.loc.x, myObj.loc.y, loc.x, loc.y);
    if (roomwith(myObj)&& d< s/2 + myObj.s/2)
      return true;
    else
      return false;
  }
  boolean roomwith(object myObj){
   if(roomX == myObj.roomX && roomY== myObj.roomY)
   return true;
   else
   return false;
  }
}
