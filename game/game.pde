

//GIF
AGIF introGIF;

//button
Button introButton;




//mouseFuntions
boolean mReleased, mPressed, clicked;


//colours
color green = #4BFF05;
color blue = #059DFF;
color yellow = #F6FF0D;
color white = #F9FCF7;
color black = #080101;
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



void setup() {
  //setup
  fullScreen(FX2D);
  mode = intro;
  font = createFont("Bahisy.ttf", 200);
  textFont(font);

  //GIF
  introGIF = new AGIF(35, "frame_", "_delay-0.03s.gif",  );

  //buttons
  introButton = new Button("GREEN", 400, 400, 200, 150, green, yellow);
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
