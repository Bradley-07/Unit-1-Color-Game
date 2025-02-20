int mode;
final int intro = 0;
final int game = 1;
final int gameover =2;
public int randomNum;
public int randomColor;
public String[] words = {"RED", "YELLOW", "BLUE", "GREEN", "PURPLE", "CYAN", "WHITE"};


void setup () {
  size(800, 800);
  mode = game;



  randomNum = (int) random(0, 6);
  randomColor = (int) random(0, 6);

}


void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
