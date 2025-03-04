import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
final int intro = 0;
final int game = 1;
final int gameover =2;
public int randomNum;
public int randomColor;
public String[] words = {"RED", "YELLOW", "BLUE", "GREEN", "PURPLE", "BROWN", "WHITE"};
public boolean match;


//minim
Minim minim;
AudioPlayer song;
AudioPlayer right;
AudioPlayer wrong;
AudioPlayer die;

//gif
PImage[] gif;
public int gifsFrames;

public int point;
public int highscore;
public int totalFrames;  // Total frames for the countdown
public int frame;

//backgroundf
PImage background;


void setup () {
 
  size(800, 800,P2D);
  smooth();

  mode = intro;
  
  
  //highscore
  highscore = 0;

//gif
gifsFrames = 91;
gif = new PImage[gifsFrames];


int i =0;
while(i < gifsFrames){
gif[i] = loadImage("frame_"+i+"_delay-0.03s.gif");
i++;
//background
background = loadImage("background.jpg");


  //song
  minim = new Minim(this);
song = minim.loadFile("song.mp3");
right = minim.loadFile("right.mp3");
wrong = minim.loadFile("wrong2.mp3");
die = minim.loadFile("gameover.mp3");
}




  randomNum = (int) random(0, 6);
  randomColor = (int) random(0, 6);


  //time
  int totalTime = 20;  // Countdown in seconds
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
