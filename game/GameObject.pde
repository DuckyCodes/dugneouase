void gameObject() {
  int i = 0;
  for (int i = 0; i < myObject.size(); i++;) {
    gameObject obj= myObject.get(i);
    obj.show();
    obj.act();
    if (obj.hp<=0) {
      myObject.remove(i);
      i--;
    }
  }
}
