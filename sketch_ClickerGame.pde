import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int OPTIONS=4;

PImage soccer;
PImage basketball;

float x, y, d;
float vx,vy;
float size;
float sliderY;
int score,lives,highscore;

Minim minim;
AudioPlayer theme, coin, bump, gameover;

void setup() {
  size(800, 800);
  mode=INTRO;
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  x=width/2;
  y=height/2;
  d=100;
  vx=random(-5,5);
  vy=random(-5,5);
  highscore=0;
  score=0;
  lives=3;
  minim=new Minim(this);
  theme= minim.loadFile("MUSIC.mp3");
  gameover= minim.loadFile("FAILURE.wav");
  coin= minim.loadFile("SUCCESS.wav");
  basketball=loadImage("basketball.png");
  soccer=loadImage("soccer.png");
}

void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error:Mode="+ mode);
  }
  
}
