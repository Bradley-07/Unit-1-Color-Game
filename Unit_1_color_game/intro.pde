color selectedColor;

color navy = #1b263b;

color red = #c1121f;
color yellow = #ffbe0b;
color blue = #8ecae6;
color green = #386641;
color purple = #5e548e;
color cyan =#bde0fe;
color white = #f5ebe0;

color[] colors = {red, yellow, blue, green, purple, cyan, white};


void intro() {

  background(blue);
  rectButton(300, 350, 200, 100);

  textSize(80);
  textAlign(CENTER, CENTER);
  fill(navy);
  text("Color Matching Game", 400, 200);
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
