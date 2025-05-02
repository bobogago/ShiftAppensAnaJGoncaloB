class Button {
  int x, y, l, a;
  int leadsTo;
  Button(int x, int y, int l, int a) {
    this.x = x;
    this.y = y;
    this.l = l;
    this.a = a;
  }
  Button(int x, int y, int l, int a, int leadsTo) {
    this.x = x;
    this.y = y;
    this.l = l;
    this.a = a;
    this.leadsTo = leadsTo;
  }
  boolean isIn() {
    if (mouseX > x && mouseX < x+l && mouseY > y && mouseY < y+a) {
      return true;
    }
    return false;
  }

  int redirect() {
    if (isIn()) {
      return leadsTo;
    }
    return screen;
  }
  
}
