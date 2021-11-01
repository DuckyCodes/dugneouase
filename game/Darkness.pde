class darkM {
  float t;
  float x, y, s;
  float d;

  darkM(float _x, float _y, float _s) {
    s = _s;
    x = _x;
    y = _y;
    t= 0;
  }
  void show() {
     d = dist(x, y, x, y );
    t= map (d, 0, 100, 0, 255);
    fill(black);
    
    square(x, y, s);
   
    
  }
  void act(){
    
  }
}
