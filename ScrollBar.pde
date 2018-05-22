class ScrollBar extends Object {


  ScrollBar(float x, float y, float w, float h, float r) {
    super(x, y, w, h, r);
  }

  void show() {
    noStroke();
    fill(255, 255, 255);
    rect(x, y, w, h, r);
  }

  void move() {
    x = mouseX-12.5;
  }


  void scroll() {
    if (mousePressed && powerX.intersects(pointer)) {
      powerX.move();
    } else if (mousePressed && powerY.intersects(pointer)) {
      powerY.move();
    } else if (mousePressed && gravity.intersects(pointer)) {
      gravity.move();
    }

    if (x < 0) {
      x = 0;
    } else if (x > 950) {
      x = 950;
    }
  }
}