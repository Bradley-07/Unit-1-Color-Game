void gameover(){

background(red);
song.pause();
right.pause();


die.play();
//gameover
 textSize(100);
  textAlign(CENTER, CENTER);
  fill(white);
  text("GAMEOVER", 400, 300);
  
  
  //score
    textAlign(CENTER, CENTER);
  if(point > highscore){
  highscore = point;
  }
  textSize( 50);
text("Score: " + point, 300, 450);

  
  //highscore
    textAlign(CENTER, CENTER);
text("Highscore: " + highscore, 300, 550);






//restart everything

if(dist(720,720,mouseX,mouseY) < 50){
fill(navy);

} else{
fill(white);
}
strokeWeight(5);
stroke(0);
circle(720,720,100);

//text restart

fill(black);
textSize(20);
textAlign(CENTER,CENTER);
text("Restart", 720,720);


}






void gameoverClicks(){
if(dist(720,720,mouseX,mouseY) < 50){
mode = intro;
song.rewind();
point = 0;
//time
frame = 0 ;
}
  
  
  
  
  
}
