PImage img;

void intro(){
  theme.play();
  background(lightgreen);
  //centre line
  strokeWeight(5);
  stroke(cream);
  line(width/2,0,width/2,height);
  //ball
  fill(yellow);
  stroke(darkyellow);
  circle(ball2x,ball2y,ball2d);
  ball2x=ball2x+v2x;
  if(ball2x<-50||ball2x>750){
    v2x=v2x*-1;
  }
  img=loadImage("pong.png");
  image(img,0,0);
  textSize(150);
  fill(orange);
  textAlign(CENTER);
  text("PONG",400,200);
  
  //one person mode
  fill(red);
  strokeWeight(5);
  tactile2(170,400,200,80);
  rect(170,400,200,80,20);
  fill(0);
  textSize(40);
  text("1 Player",270,450);
  
  //two person mode
  fill(blue);
  tactile3(430,400,200,80);
  rect(430,400,200,80,20);
  fill(0);
  textSize(40);
  text("2 Players",535,450);
}

void introClicks(){
  //1 player
  if(mouseX>170 && mouseX<370 && mouseY>400 && mouseY<480){
    click.rewind();
    click.play();
    mode=GAME;
    AI=true;
  }
  //2 player
  if(mouseX>430 && mouseX<530 && mouseY>400 && mouseY<480){
    click.rewind();
    click.play();
    mode=GAME;
    AI=false;
  }
}

void tactile2(int x,int y,int w,int h){
  if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
    stroke(darkred);
  } else {
    stroke(red);
  }
}
  
void tactile3(int x,int y,int w,int h){
  if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
    stroke(darkblue);
  } else {
    stroke(blue);
  }
}
      

  
