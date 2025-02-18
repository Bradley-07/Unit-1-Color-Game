int mode;
final int intro = 0;
final int game = 1;
final int gameover =2;
public static String randomWord;
public static int randomNum;

void setup (){
size(800,800);
mode = game;




String[] colours = {"RED", "YELLOW", "BLUE", "GREEN", "PURPLE", "CYAN", "WHITE"};
int randomNum = (int) random(0,6);
String randomWord = colours [randomNum];


}


void draw(){
if (mode == intro){
intro();
} else if(mode == game){
game();      
} else if(mode == gameover){
gameover();
} else {
  println("Error: Mode = " + mode);
} 

}
