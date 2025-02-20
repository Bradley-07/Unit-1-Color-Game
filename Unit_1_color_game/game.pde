
boolean match;
int timer; 





void game(){
background(navy);

//color  //red, yellow, green,blue, purple, cyan, white




textSize(150);
textAlign(CENTER,CENTER);

fill(colors[randomColor]);
text(words[randomNum],width/2,200);








//button

rectButton1(0,height/2+50,400,350); //match


rectButton1(width/2,height/2+50,400,350); //dont match


//line
stroke(200);
strokeWeight(4);
line(0,height/2+50,width,height/2+50);
line(width/2,height/2+50,width/2,height);

}


void gameClicks(){
  if(mouseX > 0 && mouseX < 400 && mouseY > width/2+50 && mouseY < width/2 + 400){
    if(randomNum == randomColor){
 match = true; 
 }
 else {
 match = false;
 }
 
 if(!match){
 mode = gameover;
 }
  }
  
  
  if(mouseX > width/2 && mouseX < width/2 + 400 && mouseY < height/2 +50 && mouseY < height/2 + 400){
    if(randomNum == randomColor){
match = false; 
    } else {
  match = true;  
    }
if(!match){
 mode = gameover;
 }
  }
}








void rectButton1(int x, int y, int w, int h){
   tactile1(x,y,w,h);
  fill(selectedColor);
  rect(x,y,w,h);
  textSize(50);
  textAlign(CENTER,CENTER);
  text("MATCH", 200, 500);
}

void tactile1(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+ w && mouseY > y && mouseY < y+h) {
      text("MATCH", 200, 500);
    selectedColor = white;
    stroke(5);
    strokeWeight(4);
  } else {
    text("MATCH", 200, 500);
    strokeWeight(0);
    selectedColor = navy;
    stroke(200);
  }
}
