void options() {
  theme.play();
  background(255);
  println(mouseX,mouseY);

  strokeWeight(1);
  fill(0);
  textSize(72);
  text("OPTIONS", 400, 100);
  stroke(0);
  fill(255);
  rect(250, 300, 200, 200);
  image(soccer,150,200,190,190);
  rect(550, 300, 200, 200);
  image(basketball,450,200,200,200);
  rect(405,525,200,200);
  rect(600, 700, 200, 100);
  fill(0);
  textSize(40);
  text("CONFIRM", 600, 700);
}

void optionClicks() {
  if (mouseX>500 && mouseX<700 && mouseY>650 && mouseY<750) {
    mode = INTRO;
    fill(250);
    strokeWeight(5);
    rect(600, 700, 200, 100);
  } else if (mouseX>150 && mouseX<350 && mouseY>200 && mouseY<400) {
    image(soccer,305,425,190,190);
    strokeWeight(5);
    rect(250, 300, 200, 200);
  } else if (mouseX>450 && mouseX<650 && mouseY>200 && mouseY<400) {
    image(basketball,305,425,200,200);
    strokeWeight(5);
    rect(550, 300, 200, 200);
  } else {
    strokeWeight(1);
    fill(255);
  }
}
