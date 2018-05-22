class Rocket extends Object {
  Rocket(float x, float y, float w, float h, float r) {
    super(x, y, w, h, r);
  }

  void show() {
    noStroke();
    fill(255, 0, 0);
    rect(x, y, w, h, r);
  }
}