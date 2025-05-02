class LogoScreen {

  float y;
  float ySpeed = 1;
  boolean up = true, trans = false;
  PImage mask, text;
  int a = 255;

  LogoScreen() {
    y = height/2;
    mask = createImage(width, height, ARGB);
    text = loadImage("logoText.png");

    text.resize(width-width/4, 0);
    text.loadPixels();

    for (int x = 0; x < mask.width; x++) {
      for (int y = 0; y < mask.height; y++) {
        mask.pixels[y*mask.width+x] = color(#0072CE);
      }
    }

    for (int x = 0; x < text.width; x++) {
      for (int y = 0; y < text.height; y++) {
        if (alpha(text.pixels[y*text.width+x]) != 0) {
          mask.pixels[(mask.height/2+y-text.height/2)*mask.width+(mask.width/2+x-text.width/2)] = color(0, 0);
        }
      }
    }
  }

  void desenha() {
    imageMode(CORNER);
    background(#0072CE);
    PImage wave = loadImage("wave.png");
    wave.resize(0, text.height);

    float downLim = height/2+text.height/2-10;
    float upLim = height/2-wave.height/2;

    ySpeed = map(dist(width/2, y, width/2, downLim), 0, downLim-upLim-5, 4, 0.5);

    if (y >= downLim || y <= upLim) {
      up = !up;
    }

    if (up) {
      y -= ySpeed;
    } else {
      y += ySpeed;
    }

    y = constrain(y, upLim, downLim);

    println(y);
    println(ySpeed);
    println(up);
    
    tint(255,a);
    image(text, width/2-text.width/2, height/2-text.height/2);
    image(wave, width/2+text.width/2 - wave.width+3, y);
    tint(255,255);
    image(mask, 0, 0);
    
    if(mousePressed){
      trans = true;
    }
    
    if(trans){
      transition();
    }    
  }
  
  void transition(){
    if(a-5 > -100){
      a -= 5;
    } else{
      a = 255;
      
      trans = false;
      screen = 1;
    }
  }
}
