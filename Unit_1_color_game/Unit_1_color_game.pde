int mode;
final int intro = 0;
final int game = 1;
final int gameover =2;
public int randomNum;
public int randomColor;
public String[] words = {"RED", "YELLOW", "BLUE", "GREEN", "PURPLE", "BROWN", "WHITE"};
public boolean match;

//gif
PImage[] gif;
public int gifsFrames;

public int point;
public int totalFrames;  // Total frames for the countdown
public int frame;


void setup () {
  size(800, 800);
  mode = intro;

//gif
gifsFrames = 15;
gif = new PImage[gifsFrames];


int i =0;
while(i < gifsFrames){
gif[i] = loadImage("frame_"+i+"_delay-0.1s.gif");
i++;
}




  randomNum = (int) random(0, 6);
  randomColor = (int) random(0, 6);


  //time
  int totalTime = 10;  // Countdown in seconds
  totalFrames = totalTime * 20;
  frame = 0;
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
