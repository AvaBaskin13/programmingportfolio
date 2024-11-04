//Ava Baskin | Calculator App | 30 Sept 24
String dVal = "0";
color cA, cB, cC;
String op;
float l, r, result;
boolean left;

Button[] buttons = new Button[22];
void setup() {
  cA = color(200, 250, 200);
  cB = color(200, 200, 250);
  cC = color(250, 200, 250);
  op = " ";
  l = 0;
  r = 0;
  result = 0;
  left = true;
  size(241, 333);
  background(150);
  textSize(30);
  buttons[0] = new Button(30, 265, 60, 45, "0", cA, true);
  buttons[1] = new Button(30, 220, 60, 45, "1", cA, true);
  buttons[2] = new Button(90, 220, 60, 45, "2", cA, true);
  buttons[3] = new Button(150, 220, 60, 45, "3", cA, true);
  buttons[4] = new Button(30, 175, 60, 45, "4", cA, true);
  buttons[5] = new Button(90, 175, 60, 45, "5", cA, true);
  buttons[6] = new Button(150, 175, 60, 45, "6", cA, true);
  buttons[7] = new Button(30, 130, 60, 45, "7", cA, true);
  buttons[8] = new Button(90, 130, 60, 45, "8", cA, true);
  buttons[9] = new Button(150, 130, 60, 45, "9", cA, true);
  buttons[10] = new Button(150, 265, 60, 45, "±", cA, false);
  buttons[11] = new Button(210, 265, 60, 45, "+", cB, false);
  buttons[12] = new Button(60, 85, 120, 45, "C", cC, false);
  buttons[13] = new Button(180, 85, 120, 45, "=", cC, false);
  buttons[14] = new Button(210, 130, 60, 45, "÷", cB, false);
  buttons[15] = new Button(210, 175, 60, 45, "x", cB, false);
  buttons[16] = new Button(210, 220, 60, 45, "-", cB, false);
  buttons[17] = new Button(90, 265, 60, 45, ".", cA, false);
  buttons[18] = new Button(30, 310, 60, 45, "π", cB, false);
  buttons[19]= new Button(90, 310, 60, 45, "sin", cB, false);
  buttons[20] = new Button(150, 310, 60, 45, "cos", cB, false);
  buttons[21]= new Button(210, 310, 60, 45, "tan", cB, false);
}

void draw() {
  background(150);
  //println("left:" + l + " operation:" + op + " right:" + r + " result:" + result);
  for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }

  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<buttons.length; i++) {
    if (buttons[i].on && buttons[i].isNum && left && dVal.length() < 19) {
      if (dVal == "0") {
        dVal = buttons[i].val;
      } else {
        dVal += buttons[i].val;
      }
      l = float(dVal);
    } else if (buttons[i].on && buttons[i].isNum && !left && dVal.length() <19) {
      if (dVal == "0") {
        dVal = buttons[i].val;
      } else {
        dVal += buttons[i].val;
      }
      r = float(dVal);
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val.equals("+")) {
      op = "+";
      dVal= "0";
      left = false;
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val.equals("-")) {
      op = "-";
      dVal= "0";
      left = false;
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val.equals("x")) {
      op = "*";
      dVal= "0";
      left = false;
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val.equals("÷")) {
      op = "/";
      dVal= "0";
      left = false;
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val.equals("sin")) {
      op = "sin";
      dVal= "0";
      left = false;
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val.equals("cos")) {
      op = "cos";
      dVal= "0";
      left = false;
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val.equals("π")) {
      if (left) {
        dVal = str(PI);
        l = PI;
      } else {
        dVal = str(PI);
        r = PI;
      }
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val.equals("tan")) {
      op = "tan";
      dVal= "0";
      left = false;
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val.equals(".")) {
      if (!dVal.contains(".")) {
        dVal += buttons[i].val;
      }
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val.equals("±")) {
      if (left) {
        l = l * -1;
        if ((int)l == l) {
          dVal = str(int(l));
        } else {
          dVal = str(l);
        }
      } else {
        l = l * -1;
        if ((int)l == l) {
          dVal = str(int(l));
        } else {
          dVal = str(l);
        }
      }
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val.equals("C")) {
      left = true;
      op = " ";
      l = 0;
      r = 0;
      result = 0;
      dVal = "0";
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val.equals("=")) {
      performCalc();
    }
  }
}


void updateDisplay() {
  rectMode(CENTER);
  fill(200);
  strokeWeight(0);
  rect(width/2, 25, 240, 75);
  fill(0);
  textAlign(RIGHT);
  if (dVal.length()<12) {
    textSize(45);
  } else if (dVal.length() <15) {
    textSize(35);
  } else if (dVal.length() <20) {
    textSize(25);
  }
  text(dVal, width, 40);
}


void performCalc() {
  if (op == "+") {
    result = l+r;
  } else if (op == "-") {
    result = l-r;
  } else if (op =="/") {
    result = l/r;
  } else if (op == "*") {
    result = l*r;
  } else if (op == "sin") {
    result = sin(r);
  } else if (op == "cos") {
    result = cos(r);
  } else if (op == "tan") {
    result = tan(r);
  }
  dVal = str(result);
  l = float(dVal);
  left = true;
}


void handleEvent(String keyVal, boolean isNum) {
  //handle numbers left of operator
  if (left && dVal.length() <19 && isNum) {
    if (dVal == "0") {
      dVal = keyVal;
    } else {
      dVal += keyVal;
    }
    l = float(dVal);
  }
  //numbers right of operator
  else if (isNum && !left && dVal.length() <19) {
    if (dVal == "0") {
      dVal = keyVal;
    } else {
      dVal += keyVal;
    }
    r = float(dVal);
  }
  //operators
  else if ( !isNum && keyVal.equals("+")) {
    op = "+";
    dVal= "0";
    left = false;
  } else if ( !isNum && keyVal.equals("-")) {
    op = "-";
    dVal= "0";
    left = false;
  } else if ( !isNum && keyVal.equals("*")) {
    op = "*";
    dVal= "0";
    left = false;
  } else if (!isNum && keyVal.equals("/")) {
    op = "/";
    dVal= "0";
    left = false;
  } else if (!isNum && keyVal.equals("sin")) {
    op = "sin";
    dVal= "0";
    left = false;
  } else if (!isNum && keyVal.equals("cos")) {
    op = "cos";
    dVal= "0";
    left = false;
  } else if (!isNum && keyVal.equals("π")) {
    if (left) {
      dVal = str(PI);
      l = PI;
    } else {
      dVal = str(PI);
      r = PI;
    }
  } else if (!isNum && keyVal.equals("tan")) {
    op = "tan";
    dVal= "0";
    left = false;
  } else if (!isNum && keyVal.equals(".")) {
    if (!dVal.contains(".")) {
      dVal += keyVal;
    }
  } else if (!isNum && keyVal.equals("±")) {
    if (left) {
      l = l * -1;
      if ((int)l == l) {
        dVal = str(int(l));
      } else {
        dVal = str(l);
      }
    } else  {
      l = l * -1;
      if ((int)l == l) {
        dVal = str(int(l));
      } else {
        dVal = str(l);
      }}
    } else if (!isNum && keyVal.equals("")) {
      left = true;
      op = " ";
      l = 0;
      r = 0;
      result = 0;
      dVal = "0";
    } else if (!isNum && keyVal.equals("=")) {
      performCalc();
    }
  }
  void keyPressed() {
    println("key: " + key);
    println("keycode: " +keyCode);
    if (key == 0 || keyCode == 96 || keyCode ==48) {
      handleEvent("0", true);
    } else if (key == 1 || keyCode == 97 ||keyCode ==49) {
      handleEvent("1", true);
    } else if (key == 2 || keyCode == 98 ||keyCode ==50) {
      handleEvent("2", true);
    } else if (key == 3 || keyCode == 99 ||keyCode ==51) {
      handleEvent("3", true);
    } else if (key == 4 || keyCode == 100 ||keyCode ==52) {
      handleEvent("4", true);
    } else if (key == 5 || keyCode == 101 ||keyCode ==53) {
      handleEvent("5", true);
    } else if (key == 6 || keyCode == 102 ||keyCode ==54) {
      handleEvent("6", true);
    } else if (key == 7 || keyCode == 103 ||keyCode ==55) {
      handleEvent("7", true);
    } else if (key == 8 || keyCode == 104 ||keyCode ==56) {
      handleEvent("8", true);
    } else if (key == 9 || keyCode == 105 ||keyCode ==57) {
      handleEvent("9", true);
    } else if (key == '+' && (keyCode == 61 ||keyCode ==107)) {
      handleEvent("+", false);
    } else if (key == '-' || keyCode == 45 ||keyCode ==109) {
      handleEvent("-", false);
    } else if (key == '*' || keyCode == 56 ||keyCode ==106) {
      handleEvent("*", false);
    } else if (key == '/' || keyCode == 47 ||keyCode ==111) {
      handleEvent("/", false);
    } else if (key == '.' || keyCode == 46 ||keyCode ==110) {
      handleEvent(".", false);
    } else if (key == '=' || keyCode == 61 ) {
      handleEvent("=", false);
    } else if (key == '' || keyCode == 8 ) {
      handleEvent("", false);
    }
    //printvals();
    
  }
