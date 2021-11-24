class DropItem extends object{
  
  int type;
  color c;
  weapon w;
  
  DropItem(float x, float y, int rx, int ry){
   type = GUN;
   w = new Shotgun();
   loc= new PVector(x,y);
   vel = new PVector(0,0);
   s = 20;
   roomX= rx;
   roomY= ry;
   c = yellow;
    
  }
  
  void show(){
  stroke(black);
    fill(c);
    circle(loc.x, loc.y, s);
  
  }
  void act(){
    
  }
}
