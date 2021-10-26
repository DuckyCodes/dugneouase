void gmode() {
 
  //GameObjects();
  gameRoom();
  myHero.show();
  myHero.act();
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
