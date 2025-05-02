class MapScreen {
  PImage map, header, footer;
  Button[] b = new Button[7];

  MapScreen() {
    map = loadImage("mapa.png");
    header = loadImage("header.png");
    footer = loadImage("footer.png");
    map.resize(width, 0);
    header.resize(width, 0);
    footer.resize(width, 0);
    b[0] = new Button(324, 42, 143, 40);
    b[1] = new Button(50, 790, 80, 80);
    b[2] = new Button(223, 821, 63, 62,2);
    b[3] = new Button(392, 820, 60, 67,6);
    b[4] = new Button(450, 357, 53, 87,5);
    b[5] = new Button(302, 413, 54, 84,4);
    b[6] = new Button(-5, 557, 40, 83);
  }

  void desenha() {
    imageMode(CENTER);
    image(map, width/2, height/2-75);
    image(header, header.width/2, header.height/2);
    image(footer, footer.width/2, height-footer.height/2);
    rectMode(CORNER);
    if (mousePressed) {
      for (int i = 0; i < b.length; i++) {
        if(b[i].redirect() != screen){
          screen = b[i].leadsTo;
        }
      }
    }
  }
}
