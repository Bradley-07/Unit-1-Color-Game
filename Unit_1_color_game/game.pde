

void game() {
  background(navy);

  println(randomNum);
  println(randomColor);
  println(point);
  //color  //red, yellow, green,blue, purple, cyan, white




  textSize(150);
  textAlign(CENTER, CENTER);

  fill(colors[randomColor]);
  text(words[randomNum], width/2, 200);

 // Increase frame counter
  frame++;
 
 // 
    if (match) {
    frame = 0; // Reset timer
    match = false; // Reset match flag
  }


  // Check if time has run out
  if (frame >= totalFrames) {
    mode = gameover;
  }


 
      float barWidth = map(frame, 0, totalFrames, width - 40, 0); // Shrinks over time
      stroke(red);
      strokeWeight(1);
  fill(red);  // Green for remaining time
  rect(20, 5, barWidth, 5);

    
  //button

  rectButton1(0, height/2+50, 400, 350); //match


  rectButton2(width/2, height/2+50, 400, 350); //dont match


  //line
  stroke(200);
  strokeWeight(4);
  line(0, height/2+50, width, height/2+50);
  line(width/2, height/2+50, width/2, height);
  
  
  //Score
  textAlign(CENTER,CENTER);
  
  
  
  
}


void gameClicks() {
  if (mouseX > 0 && mouseX < 400 && mouseY > width/2+50 && mouseY < width/2 + 400) {
    if (randomNum == randomColor) {
      match = true;
      point++;

      randomText();
      
    } else {
      match = false;
      mode = gameover;
    }
  }


  if (mouseX > width/2 && mouseX < width/2 + 400 && mouseY > height/2 +50 && mouseY < height/2 + 400) {
    if (randomNum == randomColor) {
      match = false;
      mode = gameover;
    } else {
      match = true;
      point++;
      randomText();
     
    }
  }
}










void rectButton1(int x, int y, int w, int h) {
  tactile1(x, y, w, h);
  fill(white);
  rect(x, y, w, h);
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

void rectButton2(int x, int y, int w, int h) {
  tactile2(x, y, w, h);
  fill(black);
  rect(x, y, w, h);
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



void randomText() { // 50/50 split
  if (random(1) <0.5){
  randomNum = (int) random(0, 6);
  randomColor = randomNum;
  } else{
 randomNum= (int) random(0, 6);
  randomColor = (randomNum + (int) random(1, 6)) % 6; 
}
} 
