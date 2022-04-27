void keyPressed(){
  if(key=='w'||key=='W') wkey=true;
  if(lefty<100) wkey=false;
  if(key=='s'||key=='S') skey=true;
  if(lefty>500) skey=false;
  if(keyCode==UP) upkey=true;
  if(righty<100) upkey=false;
  if(keyCode==DOWN) downkey=true;
  if(righty>500) downkey=false;
}

void keyReleased(){
  if(key=='w'||key=='W') wkey=false;
  if(key=='s'||key=='S') skey=false;
  if(keyCode==UP) upkey=false;
  if(keyCode==DOWN) downkey=false;
}
