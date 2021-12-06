void gmode() {


  image(map, 100, 100);
  gameRoom();
  GameObjects();
  
  darkness();
  map();

}

void GameObjects() {

  for ( int i =0;  i < myObjects.size(); i++) {
    object myObj = myObjects.get(i);
    if (myObj.roomX == myHero.roomX && myObj.roomY == myHero.roomY) {
      
      myObj.show();
      myObj.act();

      if (myObj.hp <= 0) {
        myObjects.remove(i);
        i--;
      }
      
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

    if (map.get(mapx, mapy)== white) {
      
      fill(white);
    }
    if (map.get(mapx, mapy) == black) {
      stroke(white);
      fill(black);
    }
    if (map.get(mapx, mapy)== yellow) {
      
      fill(yellow);
    }
    if (map.get(mapx, mapy) == green) {
      stroke(white);
      fill(green);
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
