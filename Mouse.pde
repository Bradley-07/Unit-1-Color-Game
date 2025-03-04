void mouseReleased() {
  if (mode == intro) {
    introClicks();
  } else if (mode == game) {
    gameClicks(); // add the if unmatch then its gameover
  } else if (mode == gameover) {
    gameoverClicks();
  } 
}
