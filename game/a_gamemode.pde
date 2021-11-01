void gmode() {

  //GameObjects();
  image(map, 100, 100);
  gameRoom();
  myHero.show();
  myHero.act();
  darkness();
  dark.get(0).show();
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
    println("asdf");

    i++;
  }
}
