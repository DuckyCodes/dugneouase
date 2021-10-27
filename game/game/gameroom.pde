
void gameRoom(){
  //room
  background(brown);
  stroke(black);
  strokeWeight(4);
  line( 0,0,width, height);
  line( width, 0,0,height);
  
  rectMode(CENTER);
  stroke(black);
  fill(brown);
  rect(width/2,height/2,width*0.8,height*0.8);
 
  //exit
  nR = map.get(myHero.rX, myHero.rY-1);
  sR = map.get(myHero.rX, myHero.rY+1);
  wR = map.get(myHero.rX-1, myHero.rY);
  eR = map.get(myHero.rX+1, myHero.rY);
  
  //doors
  noStroke();
  fill(black);
  if(nR != black){
    ellipse(width/2, height*0.1,100, 100);
  }
  if(eR != black){
    ellipse(width*0.9, height/2,100, 100);
  }
  if(sR != black){
    ellipse(width/2, height*0.9,100, 100);
  }
  if(wR != black){
    ellipse(width*0.1, height/2,100, 100);
  }
  //draw floor
  rectMode(CENTER);
  stroke(black);
  fill(brown);
  rect(width/2,height/2, width*0.8, height*0.8);
}
