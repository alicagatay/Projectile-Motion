class Ball extends Object {
  Ball(float x, float y, float w, float h, float r) {
    super(x, y, w, h, r);
  }
  float speedY;
  float speedX;
  float g;


  void speedX() {
    if (powerX.x > 0 && powerX.x < 100) {
      speedX = 1;
    } else if (powerX.x > 100 && powerX.x < 200) {
      speedX = 2;
    } else if (powerX.x > 200 && powerX.x < 300) {
      speedX = 3;
    } else if (powerX.x > 300 && powerX.x < 400) {
      speedX = 4;
    } else if (powerX.x > 400 && powerX.x < 500) {
      speedX = 5;
    } else if (powerX.x > 500 && powerX.x < 600) {
      speedX = 6;
    } else if (powerX.x > 600 && powerX.x < 700) {
      speedX = 7;
    } else if (powerX.x > 700 && powerX.x < 800) {
      speedX = 8;
    } else if (powerX.x > 800 && powerX.x < 900) {
      speedX = 9;
    } else if (powerX.x > 900 && powerX.x < 1000) {
      speedX = 10;
    }
  }

  void speedY() {
    if (powerY.x > 0 && powerY.x < 100) {
      speedY = 1;
    } else if (powerY.x > 100 && powerY.x < 200) {
      speedY = 2;
    } else if (powerY.x > 200 && powerY.x < 300) {
      speedY = 3;
    } else if (powerY.x > 300 && powerY.x < 400) {
      speedY = 4;
    } else if (powerY.x > 400 && powerY.x < 500) {
      speedY = 5;
    } else if (powerY.x > 500 && powerY.x < 600) {
      speedY = 6;
    } else if (powerY.x > 600 && powerY.x < 700) {
      speedY = 7;
    } else if (powerY.x > 700 && powerY.x < 800) {
      speedY = 8;
    } else if (powerY.x > 800 && powerY.x < 900) {
      speedY = 9;
    } else if (powerY.x > 900 && powerY.x < 1000) {
      speedY = 10;
    }
  }



  void gravity() {
    if (gravity.x > 0 && gravity.x < 100) {
      g = 0.1;
    } else if (gravity.x > 100 && gravity.x < 200) {
      g = 0.2;
    } else if (gravity.x > 200 && gravity.x < 300) {
      g = 0.3;
    } else if (gravity.x > 300 && gravity.x < 400) {
      g = 0.4;
    } else if (gravity.x > 400 && gravity.x < 500) {
      g = 0.5;
    } else if (gravity.x > 500 && gravity.x < 600) {
      g = 0.6;
    } else if (gravity.x > 600 && gravity.x < 700) {
      g = 0.7;
    } else if (gravity.x > 700 && gravity.x < 800) {
      g = 0.8;
    } else if (gravity.x > 800 && gravity.x < 900) {
      g = 0.9;
    } else if (gravity.x > 900 && gravity.x < 1000) {
      g = 1;
    }
  }




  void show() {
    noStroke();
    fill(0, 0, 0);
    ellipse(x, y, w, h);
  }

  void move() {
    if (keyPressed && keyCode == SHIFT) {
      speedX();
      speedY();
      gravity();
    }
    x += speedX;
    y -= speedY;
    speedY -= g;
  }
}