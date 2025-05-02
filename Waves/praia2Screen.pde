class Praia2Screen {
  PImage  praia,praiav2;
  Button[] b = new Button[2];
  boolean showComments = false;

  Praia2Screen() {
    praia = loadImage("Praia2.png");
    praiav2 = loadImage("Praia2V2.png");
    praia.resize(width, 0);
    praiav2.resize(width,0);
    b[0] = new Button(34, 41, 115, 85, 1);
    b[1] = new Button(34, 448, 267, 234);
  }

  void desenha() {
    imageMode(CORNER);
    if (showComments) {
      image(praiav2, width/2-praiav2.width/2, 0);
    } else {
      image(praia, width/2-praia.width/2, 0);
    }
    //image(praia, width/2-praia.width/2, 0);
    if (mousePressed) {
      if (b[1].isIn()) {
        showComments = true;
      } else if (b[0].redirect() != screen) {
        showComments = false;
        screen = b[0].leadsTo;
      }
    }
  }
}
