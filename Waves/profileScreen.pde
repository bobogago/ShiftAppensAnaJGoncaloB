class ProfileScreen {
  PImage  perf, headNor, headNad;
  boolean nadSalv = false;
  Button[] b = new Button[2];

  ProfileScreen() {
    b[0] = new Button(54, 390, 96, 69, 1);
    b[1] = new Button(118, 763, 265, 49);
    perf = loadImage("perfil.png");
    headNor = loadImage("perfilheadernormal.png");
    headNad = loadImage("perfilheaderNADSALV.png");
    perf.resize(0, height-50);
    headNor.resize(width, 0);
    headNad.resize(width, 0);
  }

  void desenha() {
    imageMode(CORNER);
    image(perf, width/2-perf.width/2, 0);
    if (nadSalv) {
      image(headNad, width/2-headNad.width/2, -23);
    } else {
      image(headNor, width/2-headNor.width/2, -30);
    }

    if (mousePressed) {
      if (b[1].isIn()) {
        nadSalv = true;
      } else if (b[0].redirect() != screen) {
        screen = b[0].leadsTo;
      }
    }
  }
}
