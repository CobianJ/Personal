public class Scenes implements Comparable {
  PImage img;
  int x;
  int y;
  public Scenes() {
        x = width/4;
        y = 45;
  }

  void scene0() {
    img = loadImage("data/Car-dealership.jpg");
    image(img, x, y, 400, 200);
    text("Press the UP key at any time to start over", 0, 25);

  }

  void scene1() {
    img = loadImage("data/txel.png");
    image(img, x, y, 400, 200);
  }
  void scene2() {
    img = loadImage("data/augs.jpg");
    image(img, x, y, 400, 200);
  }
  void chevy() {
    img = loadImage("data/chevy.png");
    image(img, x, y, 400, 200);
  }
  void cullinan() {
    img = loadImage("data/Cullinan.png");
    image(img, x, y, 400, 200);
  }
  void fit() {
    img = loadImage("data/fit.png");
    image(img, x, y, 400, 200);
  }
  void FordEscape() {
    img = loadImage("data/FordEscape.png");
    image(img, x, y, 400, 200);
  }
  void frontier() {
    img = loadImage("data/Frontier.png");
    image(img, x, y, 400, 200);
  }
  void prius() {
    img = loadImage("data/prius.png");
    image(img, x, y, 400, 200);
  }
  void rav4() {
    img = loadImage("data/Rav4.png");
    image(img, x, y, 400, 200);
  }
  void soul() {
    img = loadImage("data/soul.png");
    image(img, x, y, 400, 200);
  }
  
  
  
  int compareTo(Object o) {
    return -1;
  }
}
