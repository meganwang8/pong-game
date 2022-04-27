void pause(){
  fill(orange);
  textSize(90);
  textAlign(CENTER);
  text("PAUSED",400,315);
  //play button
  fill(cream);
  tactile(50,50,70);
  circle(50,50,70);
  fill(brown);
  textSize(20);
  text("PLAY",50,55);
}

void pauseClicks(){
  if(dist(50,50,mouseX,mouseY)<70){ 
    click.rewind();
    click.play();
    mode=GAME;
  }
}
