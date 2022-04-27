import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Megan Wang
//2-4
//April 11, 2022


//modes
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//game variables
float leftx,lefty,leftd,leftr;
float rightx,righty,rightd,rightr;
float ballx,bally,balld,ballr;
float ball2x,ball2y,ball2d;

//keyboard variables
boolean wkey,skey,upkey,downkey;

//player mode switch
boolean AI;

//collision variables
float vx,vy,v2x;
float random;

//scoring
int leftscore,rightscore,timer;

//colour pallette
color lightgreen = #e9edc9;
color cream = #fefae0;
color red = #fec5bb;
color darkred = #e5989b;
color blue = #90e0ef;
color darkblue = #0096c7;
color yellow = #fdffb6;
color darkyellow = #ffd166;
color brown = #ddbea9;
color orange = #ff9f1c;
color green = #52b788;
color darkgreen = #2d6a4f;

//sound
Minim minim;
AudioPlayer theme,click,bump,score,win;

void setup(){
  size(800,600);
  mode = INTRO;
  
  //left paddle
  leftx=0;
  lefty=height/2;
  leftd=200;
  leftr=leftd/2;
  
  //right paddle
  rightx=width;
  righty=height/2;
  rightd=200;
  rightr=rightd/2;
  
  //ball
  ballx=width/2;
  bally=height/2;
  balld=100;
  ball2x=width/2;
  ball2y=height/2;
  ball2d=100;
  vy=random(-5,-3);
  vy=random(3,5);
  vx=random(-5,-3);
  vx=random(3,5);
  v2x=7;
  
  ballr=balld/2;
  
  //initialize keyboard
  wkey=skey=upkey=downkey=false;
  
  //initialize score
  rightscore=leftscore=0;
  timer=100;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("runamok.mp3");
  score = minim.loadFile("sparkle.wav");
  bump = minim.loadFile("pop.mp3");
  win = minim.loadFile("win.wav");
  click = minim.loadFile("click.mov");
}

void draw(){
  if(mode==INTRO){
    intro();
  } else if (mode==GAME){
    game();
  } else if (mode==PAUSE){
    pause();
  } else if (mode==GAMEOVER){
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}
