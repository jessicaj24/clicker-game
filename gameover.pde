void gameover() {
  background(255,0,0);
  theme.pause();
  gameover.play();
  text("GAME OVER", 400, 400);
  if (score>highscore) {
    highscore=score;
  }
  text("High Score:" + highscore,400,500,80);
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
  score=0;
}
