class Calendar {
  PImage  calList, footer, weat;
  Button[] b = new Button[4];
  boolean showWeather = false;

  Calendar() {
    b[0] = new Button(59, 180, 394, 116);
    b[1] = new Button(59, 814, 71, 76, 0);
    b[2] = new Button(214, 815, 72, 71, 2);
    calList = loadImage("calList.png");
    calList.resize(width, 0);
    weat = loadImage("Calendário.png");
    weat.resize(width, 0);
    footer = loadImage("footerCal.png");
    footer.resize(width, 0);
  }

  void desenha() {
    imageMode(CORNER);
    if (!showWeather) {
      image(calList, width/2-calList.width/2, 10);
    } else {
      image(weat, width/2-calList.width/2, 10);
    }
    image(footer, 0, height-footer.height);


    if (mousePressed) {
      if (b[1].redirect() != screen) {
        screen = b[1].leadsTo;
        showWeather = false;
      } else if (b[2].redirect() != screen) {
        screen = b[2].leadsTo;
        showWeather = false;
      }
      if (b[0].isIn()) {
        showWeather = true;
      }
    }
  }
}
