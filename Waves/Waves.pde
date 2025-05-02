int w = 500;
int h = 900;
int screen = 0;
LogoScreen start;
MapScreen map;
ProfileScreen perfil;
Praia2Screen p2;
Praia3Screen p3;
Calendar cal;
//0 = StartScreen, 1 = mapa, 2 = perfil, 3 = praia1, 4 = praia2, 5 = praia3

void setup() {
  size(100, 100);
  windowResize(w, h);
  start = new LogoScreen();
  map = new MapScreen();
  perfil = new ProfileScreen();
  p2 = new Praia2Screen();
  p3 = new Praia3Screen();
  cal = new Calendar();
}

void draw() {
  background(#FFCB77);
  switch(screen) {
  case 0:
    start.desenha();
    break;
  case 1:
    map.desenha();
    break;
  case 2:
    perfil.desenha();
    break;
  case 4:
    p2.desenha();
    break;
  case 5:
    p3.desenha();
    break;
    case 6:
  cal.desenha();
    break;
  default:
    start.desenha();
  }
}
