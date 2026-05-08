void game () {
  theme.play();
  background(0,255,0);
  fill(255);
  stroke(0);
  circle(100,100,100);
  fill(0);
  text("Score: " + score, width/2,50);
  text("Lives: " + lives, width/2,100);
  fill(255);
  stroke(0);
  strokeWeight(5);
  ellipse(x,y,100,100);
  circle(x,y,d);
  x=x+vx;
  y=y+vy;
  if (x<d/2 || x>width-d/2){
    vx=vx*-1;
  }
  if (y<d/2 || y>height-d/2){
    vy=vy*-1;
  }
}

void gameClicks(){
  if (dist(mouseX,mouseY,x,y)<d/2) {
    score=score+1;
    coin.rewind();
    coin.play();
  } else if(dist(mouseX,mouseY,100,100)<50){
    theme.pause();
    mode = PAUSE;
  } else{
    lives=lives-1;
    if (lives==0) {
      lives=3;
      mode=GAMEOVER;
      gameover.rewind();
      gameover.play();
    }
  }
}
