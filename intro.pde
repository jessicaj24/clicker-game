void intro() {
  theme.play();
  background(255);

  strokeWeight(1);
  fill(0);
  textSize(72);
  text("CLICKER GAME", 400, 400);
  stroke(0);
  fill(255);
  rect(250, 550, 200, 100);
  rect(550, 550, 200, 100);
  fill(0);
  textSize(40);
  text("START", 250, 550);
  text("OPTIONS", 550, 550);
}

void introClicks() {
  if (mouseX>150 && mouseX<350 && mouseY>500 && mouseY<600) {
    mode = GAME;
    fill(250);
    strokeWeight(5);
    rect(250, 550, 200, 100);
  } else if (mouseX>450 && mouseX<650 && mouseY>500 && mouseY<600) {
    mode = OPTIONS;
    strokeWeight(5);
    rect(550,500,200,100);
  } else {
    strokeWeight(1);
    fill(255);
  }
}
