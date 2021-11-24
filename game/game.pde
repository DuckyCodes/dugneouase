/*1. Make a new project 
 2. Add the mode framework ^
 3. Add gif and Button classes ^ 
 4. Create a intro with gif and the button ^
 5. do color schemes but idgaf ab that^
 6. Draw "the room" but just walls and floor for now^
 7. Create a GameObject class ^
 8. Create a Hero class that extends GameObject  - moves with keyboard ^
 - runs into walls^
 */
ArrayList<object> myObjects;
ArrayList<darkM> dark;

//GIF
AGIF introGIF;

//button
Button introButton;
//hero

hero myHero;

//enemy
Follower myFollower;

//mouseFuntions
boolean mReleased, mPressed, clicked;
//keyboardFuntions
boolean wKey, aKey, sKey, dKey, spaceKey;

//


//colours
color green = #4BFF05;
color blue = #059DFF;
color yellow = #F6FF0D;
color white = #FFFFFF;
color black = #000000;
color red = #FF190D;
color orange = #FF920D;
color pink = #F7C2D6;
color brown = #602B2B;
//setup gamescreens
int mode = 0;
final int intro = 1;
final int gmode = 2;
final int pause = 3;
final int egame = 4;

//everything
PFont font;

int s= 100;
int mapx, mapy;
//map
PImage map;
color nR, sR, eR, wR;

final int AMMO = 1;
final int GUN = 2;
final int  HEALTH = 3;

final int ShotgunBS = 90;
final int ShotgunThres= 5;


void setup() {
  //setup
  fullScreen();
  mode = intro;
  font = createFont("Bahisy.ttf", 200);
  textFont(font);
  map = loadImage("map.png");


  //objects
  imageMode(CENTER);

  myObjects = new ArrayList<object>(1000);

  //darkness
  dark = new ArrayList<darkM>(1000);
  float s = 50;
  int x = 0, y = 0;



  while ( y< height+s) { 
    dark.add(new darkM(x, y, s));
    x += s;
    if (x >= width) {
      //println("a");
      x = 0;
      y += s;
    }
  }


  //GIF
  introGIF = new AGIF(35, "frame_", "_delay-0.03s.gif", 0, 0 );

  //buttons
  introButton = new Button("START", 400, 400, 200, 150, green, yellow);
  //hero

  myHero = new hero();
  myObjects.add(myHero);
  myObjects.add(new Enemy());
  myObjects.add(new Follower(0,0));
  myObjects.add(new Lurker(0,0));
}


void draw () {

  clicked();

  if (mode == intro) {
    intro();
  } else if ( mode == gmode ) {
    gmode();
  } else if ( mode == pause ) {
    pause();
  } else if ( mode == egame) {
    egame();
  } else {
    println("Error: Mode = " + mode);
  }
}

void clicked() {
  mReleased = false;
  if (mousePressed) mPressed = true;
  if (mPressed && !mousePressed) {
    mReleased = true;
    mPressed = false;
  }
}

void keyPressed () {

  if (keyCode =='w'||keyCode=='W') {
    wKey=true;
  }
  if (keyCode =='a'||keyCode=='A') {
    aKey=true;
  }
  if (keyCode =='s'||keyCode=='S') {
    sKey=true;
  }
  if (keyCode =='d'||keyCode=='D') {
    dKey=true;
  }
  if (key ==' ') {
    spaceKey = true;
  }


  if (mode==gmode) {
    if (keyCode =='p'||keyCode=='P') {
      mode=pause;
    }
  } else if (mode==pause) {
    if (key=='p'||key=='P') {
      mode=gmode;
    }
  }
}
void keyReleased() {
  if (keyCode =='w'||keyCode=='W') {
    wKey=false;
  }
  if (keyCode =='a'||keyCode=='A') {
    aKey=false;
  }
  if (keyCode =='s'||keyCode=='S') {
    sKey=false;
  }
  if (keyCode =='d'||keyCode=='D') {
    dKey=false;
  }
  if (key ==' ') {
    spaceKey = false;
  }
}
