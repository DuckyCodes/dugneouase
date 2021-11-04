void gmode() {

  
  image(map, 100, 100);
  gameRoom();
  GameObjects();
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

  int i = 0;
  int mapx = 0;
  int mapy = 0;
  while (i <169) {

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
    rect(mapx*12+50, mapy*12+50, 12, 12 );
    mapx++;
    i++;

    if (mapx >= 13) {
      mapx = 0;
      mapy++;
    }
  }
}