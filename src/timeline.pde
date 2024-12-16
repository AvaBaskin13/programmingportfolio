//Ava Baskin | Computer timeline | August 28, 2024

void setup() {
  size(900, 400);
  background(100);
}
void draw() {
  background(100);
  drawRef();
  histEvent(150, 200, "Z2 - 1940", "Germany: one of the earliest examples of an electric operated digital computer built with electromechanical relays ",true);
  histEvent(300, 200, "The Manchester Baby - 1948", "England: the world's first electronic stored-program computer.",true);
  histEvent(515, 300, "Apollo guidance computer - 1966", "US: firt silicon IC computer. It was much smaller and denser than perious computers",false);
  histEvent(600, 200, "P6060 - 1975", "Italy:the world's first complete, pre-assembled personal computer system",true);
  histEvent(215, 300, "Collossus - 1943", "England: the world's first electronic digital programmable computer",false);
  histEvent(365, 300, "Whirlwind computer - 1953", "US: first computer to use magnetic-core memory",false);
  histEvent(450, 200, "B5000 - 1961", "U.S:It was a stack  machine which allowed for simler programming",true);
  histEvent(665, 300, "First quantu computer - 1998", "U.S:First quantum computer",false);
}
void drawRef() {
  fill(0);
  // creates main line
  stroke(50);
  strokeWeight(5);
  line(100, 250, 800, 250);
  //adds title
  textAlign(CENTER);
  fill(255);
  textSize(30);
  text("Historic Computer Systems", width/2, 60);
  textSize(22);
  text("By Ava Baskin", width/2, 85);
  //start date
  textSize(18);
  text("1940", 80, 270);
  text("2000", 820, 270);
}
void histEvent(int x, int y, String val, String detail, boolean top) {
  if(top) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  line(x, y, x+20, 250);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  fill(200);
  rect(x, y, 110, 20);
  fill(0);
  textSize(8);
  text(val, x, y);
  if (mouseX>x-55 && mouseX<x+55 && mouseY>y-10 && mouseY<y+10) {
    text(detail, width/2, 350);
  }
}
