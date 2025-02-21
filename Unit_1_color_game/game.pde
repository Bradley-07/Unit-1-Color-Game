
boolean match;
int timer; 





void game(){
background(navy);

 println(randomNum);
 println(randomColor);
 println(point);
//color  //red, yellow, green,blue, purple, cyan, white




textSize(150);
textAlign(CENTER,CENTER);

fill(colors[randomColor]);
text(words[randomNum],width/2,200);







//button

rectButton1(0,height/2+50,400,350); //match


rectButton2(width/2,height/2+50,400,350); //dont match


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
point++;
randomText();
    } else {
  match = false;  
  mode = gameover;
    }
  }
  
  
  if(mouseX > width/2 && mouseX < width/2 + 400 && mouseY > height/2 +50 && mouseY < height/2 + 400){
    if(randomNum == randomColor){
match = false; 
mode = gameover;
    } else {
  match = true;  
  point++;
  randomText();
    }

 
}
}










void rectButton1(int x, int y, int w, int h){
   tactile1(x,y,w,h);
  fill(white);
  rect(x,y,w,h);
  textSize(50);
  textAlign(CENTER, CENTER);
    fill(selectedColor); 
    text("MATCH", x + w / 2, y + h / 2); 
}

void tactile1(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+ w && mouseY > y && mouseY < y+h) {
      
    selectedColor = red;
    stroke(5);
    strokeWeight(4);
  } else {

    strokeWeight(0);
    selectedColor = black;
    stroke(200);
   
  }
}

void rectButton2(int x, int y, int w, int h){
   tactile2(x,y,w,h);
  fill(black);
  rect(x,y,w,h);
textSize(50);
    textAlign(CENTER, CENTER);
    fill(selectedColor); 
    text("UNMATCH", x + w / 2, y + h / 2); 
}

void tactile2(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+ w && mouseY > y && mouseY < y+h) {
      
    selectedColor = red;
    stroke(5);
    strokeWeight(4);
  } else {

    strokeWeight(0);
    selectedColor = white;
    stroke(200);
   
  }
}



void randomText(){
  randomNum = (int) random(0, 6);
  randomColor = (int) random(0, 6);
}
