class Button {
  // Member Variables
  float w, h, x, y;
  color c1, c2, cA, cB, cC;
  String val;
  boolean on, isNum;

  // Constructor
  Button(float x, float y, float w, float h, String val, color c1, boolean isNum) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    this.c1 = c1;
    c2 = color(c1, 99);
    on=false;
    this.isNum = isNum;
  }
  // Member methods
  void display() {
    if (on == true) {
      fill(c2);
    } else {
      fill(c1);
    }
    rectMode(CENTER);
    rect(x, y, w, h);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(30);
    text(val, x, y);
    
  }

  boolean hover(int mx, int my) {
    if (mx>x-w/2 && mx<x+w/2 && my>y-h/2 && my<y+h/2) {
      on = true;
      return on;
    } else {
      on = false;
      return on;
    }
  }
}
