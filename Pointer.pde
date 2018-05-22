class Pointer extends Object {
  Pointer(float x, float y, float w, float h, float r) {
    super(x, y, w, h, r);
  }

  void show() {
    if (pointer.y > 500) {
      fill(250, 250, 250);
    } else {
      fill(0, 0, 0);
    }
    ellipse(x, y, w, h);
  }
  void move() {
    x = mouseX;
    y = mouseY;
  }
}