
void gameRoom(){
  //room
   background(brown);
  stroke(black);
  strokeWeight(4);
  line( 0,0,width, height);
  line( width, 0,0,height);
 
 
  //exit
  nR = map.get(myHero.rX, myHero.rY-1);
  sR = map.get(myHero.rX, myHero.rY+1);
  wR = map.get(myHero.rX-1, myHero.rY);
  eR = map.get(myHero.rX+1, myHero.rY);
  
  //doorsa
  noStroke();
  fill(black);
  if(nR != white){
    ellipse(width/2, height*0.1,100, 100);
  }
  if(eR !=  white){
    ellipse(width*0.9, height/2,100, 100);
  }
  if(sR !=  white){
    ellipse(width/2, height*0.9,100, 100);
  }
  if(wR !=  white){
    ellipse(width*0.1, height/2,100, 100);
  }
 
  
  
 //floor\

 rectMode(CENTER);
  fill(brown);
  stroke(black);
  rect(width/2,height/2,width*0.8,height*0.8);
}
