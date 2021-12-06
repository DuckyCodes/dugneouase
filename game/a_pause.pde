void pause() {

  //upgrades text
  fill(black);
  textSize(100);
  text("upgrades", width/2, height/6);

  textSize(60);
  //textMode(CENTER/2);

  //hp text
  click();
  textSize(60);
  fill(black);
  text("max hp: "+myHero.hpMAX, width/2.5, height/3);

   hpButton = new Button("+", 400, 400, 200, 150, green, yellow);
  hpbutton.show();
  if (myHero.xp >= 1) {
    if (hpbutton.clicked) {
      myHero.hp++;
      myHero.hpMAX = myHero.hpMAX + 1;
      myHero.xp = myHero.xp - 1;
    } else myHero.hpMAX = myHero.hpMAX;
  }

  //back
  backbutton = new Button("back", width-100, height-50, 100, 50, dirt, unity);
  backbutton.show();
  if (backbutton.clicked) {
    mode = game;
  }


  //speed text
  textSize(60);
  fill(black);
  text("speed: "+myHero.speed, width/2.5, height/2);

  speedbutton = new Button("Speed+", 100, 300, 50, 50, shadow, unity);
  speedbutton.show();
  if (myHero.xp >= 1) {
    if (speedbutton.clicked) {
      myHero.sd = myHero.sd + 0.25;
      myHero.xp = myHero.xp - 1;
    }
  }
}
