color selectedColor;

color navy = #1b263b;
color black = #000000;
color red = #c1121f;
color yellow = #ffbe0b;
color blue = #8ecae6;
color green = #386641;
color purple = #7209b7;
color brown =#583101;
color white = #f5ebe0;

color[] colors = {red, yellow, blue, green, purple, brown, white};


int f = 0;

void intro() {
  
    //gif
  
 image(gif[f],0,0,width,height);
 if (frameCount %1 ==0) f= f+1;
 if(f == gifsFrames) f= 0 ;

  rectButton(300, 350, 200, 100);

  textSize(100);
  textAlign(CENTER, CENTER);
  fill(white);
  text("Color Theory", 400, 200);
  
song.play();

}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450) {
    mode = game;
  }
}



void rectButton(int x, int y, int w, int h) {
  tactile(x, y, w, h);
  fill(selectedColor);
  rect(x, y, w, h);
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+ w && mouseY > y && mouseY < y+h) {
    selectedColor = navy;
    stroke(255);
    strokeWeight(4);
  } else {
    strokeWeight(4);
    selectedColor = white;
    stroke(0);
  }
}
