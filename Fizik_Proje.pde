ScrollBar powerX;
ScrollBar powerY;
Pointer pointer;
ScrollBar gravity;
Rocket rocket;
Ball ball;
Stats stats;

void setup() {
  size(1400, 800);
  noCursor();
  pointer = new Pointer(mouseX, mouseY, 15, 15, 0);
  powerX = new ScrollBar(0, 530, 50, 50, 10);
  powerY = new ScrollBar(0, 630, 50, 50, 10);
  gravity = new ScrollBar(0, 730, 50, 50, 10);
  rocket = new Rocket(0, 460, 50, 70, 10);
  ball = new Ball(25, 480, 20, 20, 0);
  stats = new Stats(1000, 500, 500, 500, 0);
}

void draw() {
  background(250, 250, 250);

  ball.show();
  ball.move();

  rocket.show();


  arkaplan();

  pointer.show();
  pointer.move();


  powerX.show();
  powerX.scroll();

  powerY.show();
  powerY.scroll();

  gravity.show();
  gravity.scroll();

  stats.stats();
}


/** 
 ScrollBar'ların bulunduğu alan.
 */
void arkaplan() {
  fill(0, 0, 0);
  rect(-1, 500, 1440, 302);
}