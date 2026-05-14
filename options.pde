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
  image(soccer,250,300,190,190);
  rect(550, 300, 200, 200);
  image(basketball,550,300,200,200);
  rect(405,525,200,200);
  rect(600, 700, 200, 100);
  fill(0);
  textSize(40);
  text("CONFIRM", 600, 700);
  size=map(sliderY,450,600,50,150);
  stroke(35);
  line(200,450,200,600);
  circle(200,sliderY,size);
}

void optionClicks() {
  if (mouseX>500 && mouseX<700 && mouseY>650 && mouseY<750) {
    mode = INTRO;
    fill(250);
    strokeWeight(5);
    rect(600, 700, 200, 100);
  } else if (mouseX>150 && mouseX<350 && mouseY>200 && mouseY<400) {
    image(soccer,400,520,190,190);
    strokeWeight(5);
    rect(250, 300, 200, 200);
  } else if (mouseX>450 && mouseX<650 && mouseY>200 && mouseY<400) {
    image(basketball,400,520,200,200);
    strokeWeight(5);
    rect(550, 300, 200, 200);
  } else {
    strokeWeight(1);
    fill(255);
  }
}

void slider(){
  if (mouseX>190 && mouseX<210 && mouseY>450 && mouseY<600){
    sliderY=mouseY;
  }
}
  
