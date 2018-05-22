class Stats extends Object {
  Stats(float x, float y, float w, float h, float r) {
    super(x, y, w, h, r);
  }

  
  void stats(){
    fill(250, 250, 250);
    textSize(20);
    text("X Position: " + ball.x, 1006, 520);
    text("Y Position: " + ball.y, 1006, 591);
    text("Velocity Of X Component: " + ball.speedX*10, 1002, 666);
    text("Velocity Of Y Component: " + ball.speedY*10, 1002, 741);
    text("Gravity: " + ball.g*100, 1006, 792);
  }  
}