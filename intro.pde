void intro() {
  theme.play();
  background(255);
  
  strokeWeight(1);
  fill(0);
  textSize(72);
  text("CLICKER GAME",400,400);
  stroke(0);
  fill(255);
  rect(400,550,200,100);
  fill(0);
  textSize(40);
  text("START",400,550);
  println(mouseX, mouseY);
}

void introClicks(){
  if (mouseX>300 && mouseX<500 && mouseY>500 && mouseY<650) {
    mode = GAME;
    fill(250);
  } else {
    strokeWeight(1);
    fill(255);
  }
  
  strokeWeight(5);
  rect(400,550,200,100);
}


  
