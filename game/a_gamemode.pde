void gmode() {

  //GameObjects();
  image(map, 100, 100);
  gameRoom();
  myHero.show();
  myHero.act();
  darkness();
  map();
}

void GameObjects() {
  int i = 0;
  while ( i < myObjects.size()) {
    object myObj = myObjects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.hp == 0) {
      myObjects.remove(i);
    } else {
      i++;
    }
  }
}

void darkness() {
  int i = 0;
  while ( i < dark.size()) {
    darkM myDark = dark.get(i);
    myDark.show();
    myDark.act();


    i++;
  }
}

void map() {

  //float s = 100;
  //int x = 0, y = 0;
  //while (y<map.height) {
  //   color c = map.get(x, y);
  //   fill (c);
  //   square(x, y, s);
  //   y = y +1;
  //x = x+1;
  //   if (x>=map.width) {
  //     x=0;
  //     y = y +1;
  //   }
  int i = 0;
  int mapx = 0;
  int mapy = 0;
  while (i <100) {

    if (map.get(mapx, mapy)== #FFFFFF) {
      stroke(black);
      fill(white);
    }
    if (map.get(mapx, mapy) == #000000) {
      stroke(white);
      fill(black);
    }
    if (myHero.rX == mapx && myHero.rY == mapy) {
      fill(orange);
    }
    rect(mapx*20+10, mapy*20+10, 30, 30 );
    mapx++;
    i++;

    if (mapx >= 10) {
      mapx = 0;
      mapy++;
    }
  }
}
