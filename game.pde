void game(){
  theme.play();
  background(lightgreen);
  //centre line
  strokeWeight(5);
  stroke(cream);
  line(width/2,0,width/2,height);
  //left paddle
  fill(red);
  stroke(darkred);
  circle(leftx,lefty,leftd);
  //right paddle
  fill(blue);
  stroke(darkblue);
  circle(rightx,righty,rightd);
  //ball
  fill(yellow);
  stroke(darkyellow);
  circle(ballx,bally,balld);
  
  //scoreboard
  textSize(50);
  fill(darkred);
  text(leftscore,width/4,100);
  fill(darkblue);
  text(rightscore,3*width/4,100);
  if(rightscore==3||leftscore==3){
    mode=GAMEOVER;
  }
  
  //timer 
  fill(lightgreen);
  textAlign(CENTER);
  text(timer,width/2,650);
  timer=timer-1;
  
  //pause button
  fill(cream);
  tactile(50,50,70);
  circle(50,50,70);
  fill(brown);
  textSize(20);
  text("PAUSE",50,55);
  
  //move paddles
  if(wkey==true) lefty=lefty-5;
  if(lefty<100) wkey=false;
  if(skey==true) lefty=lefty+5;
  if(lefty>500) skey=false;
  if(righty<100) upkey=false;
  if(righty>500) downkey=false;
  if(AI==true){
    if(bally>righty){
      righty=righty+3;
   } else if(bally<righty){
      righty=righty-3;
   }
  } 
    
  if(AI==false){
     if(upkey==true) righty=righty-5;
     if(downkey==true) righty=righty+5;
  }   
  
  //moving ball
  if(timer<0){
    bally=bally+vy; //vertical movement
    ballx=ballx+vx; //horizontal movement
  }
  
  //collision
  if(dist(leftx,lefty,ballx,bally)<=ballr+leftr){
    bump.rewind();
    bump.play();
    vx=(ballx-leftx)/15;
    vy=(bally-lefty)/15;
  }
  if(dist(rightx,righty,ballx,bally)<=ballr+rightr){
    bump.rewind();
    bump.play();
    vx=(ballx-rightx)/15;
    vy=(bally-righty)/15;
  }
  //bouncing
  if(bally<=ballr || bally>=height-ballr){
    bump.rewind();
    bump.play();
    vy=vy*-1;
  }
  
  //scoring
  if(ballx<-100){
    score.rewind();
    score.play();
    rightscore=rightscore+1;
    ballx=width/2;
    bally=height/2;
    timer=100;
    leftx=0;
    lefty=height/2;
    rightx=width;
    righty=height/2;
    vx=random(-5,5);
    vy=random(-5,5);
  } else if (ballx>900){
    score.rewind();
    score.play();
    leftscore=leftscore+1;
    ballx=width/2;
    bally=height/2;
    timer=100;
    leftx=0;
    lefty=height/2;
    rightx=width;
    righty=height/2;
    vx=random(-5,5);
    vy=random(-5,5);
  }
}

void gameClicks(){
  if(dist(50,50,mouseX,mouseY)<70){ 
    click.rewind();
    click.play();
    mode=PAUSE;
  }
}

void tactile(int x,int y,int r){
  if(dist(x,y,mouseX,mouseY)<r){
    stroke(brown);
  } else {
    stroke(cream);
  }
}
