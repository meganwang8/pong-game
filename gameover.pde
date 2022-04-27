void gameover(){
  if(leftscore>rightscore){
    if(AI==true){
      fill(orange);
      text("YOU WIN",400,300);
    } else if(AI==false){
      fill(darkred);
      textSize(90);
      textAlign(CENTER);
      text("LEFT WINS",400,300);
    }
  }
  if(rightscore>leftscore){
    fill(darkblue);
    textSize(90);
    textAlign(CENTER);
    if(AI==true){
      fill(orange);
      text("GAME OVER",400,300);
    } else if(AI==false){
      fill(darkblue);
      text("RIGHT WINS",400,300);
    }
  }
  
  //retry buttons
  //1 Player
  fill(red);
  strokeWeight(5);
  tactile2(300,350,200,80);
  rect(300,350,200,80,20);
  fill(0);
  textSize(40);
  textAlign(CENTER);
  text("1 Player",400,400);
  //2 Players
  fill(blue);
  tactile3(300,450,200,80);
  rect(300,450,200,80,20);
  fill(0);
  textSize(40);
  text("2 Players",400,500);
  
  //quit button
  fill(green);
  strokeWeight(5);
  tactile4(620,500,160,80);
  rect(620,500,160,80,20);
  fill(255);
  text("QUIT",700,550);
  
} 

void gameoverClicks(){
  //1 player
  if(mouseX>300 && mouseX<500 && mouseY>350 && mouseY<430){
    click.rewind();
    click.play();
    mode=GAME;
    rightscore=leftscore=0;
    timer=100;
    AI=true;
  }
  //2 player
  if(mouseX>300 && mouseX<500 && mouseY>450 && mouseY<530){
    click.rewind();
    click.play();
    mode=GAME;
    rightscore=leftscore=0;
    timer=100;
    AI=false;
  }
  //quit
  if(mouseX>620 && mouseX<780 && mouseY>500 && mouseY<580){
    click.rewind();
    click.play();
    exit();
  }
}

void tactile4(int x,int y,int w,int h){
  if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
    stroke(darkgreen);
  } else {
    stroke(green);
  }
}
