// for loop

//global intergers
int width = 640;
int height = 640;
int x = width / 8;
int y = height / 8;
float pSize = x / 1.75;
int px = width / 8;
int py = height / 8;
int curve = 10;
 
 
//for drag
boolean overPawn = false;
boolean locked = false;
int xOffset = 0; 
int yOffset = 0; 
//

void setup() {

  size(width, height);
  noStroke();

}

void draw() {
  
  // Test if the cursor is over the box 
  if (mouseX > px-width && mouseX < px+width && 
      mouseY > py-height && mouseY < py+height) {
    overPawn = true;  
    if(!locked) { 
      stroke(255); 
      fill(153);
    } 
  } else {
    stroke(153);
    fill(153);
    overPawn = false;
  }
  
  
  // begin for loops to set up variables i and j
  for (int i = 0; i < 8; i++) {

    //nest a for loop for j to alternate with i
    for (int j = 0; j < 8; j++) {
      //alternate colors with if statement
      if ((i + j + 1) % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      // draw rectangles using variables set up above
      rect(i * x, j * y, (i + 1) * x, (j + 1) * y);
    }

    println(i);
  } 

  //begin for loop to set up pawns
  println("done");
  pawns(px, py, width, height);
  pieces(x, y, width, height, curve);
  
}

void mousePressed() {
  if(overPawn) { 
    locked = true; 
    fill(255, 255, 255);
  } else {
    locked = false;
  }
  xOffset = mouseX-px; 
  yOffset = mouseY-py; 

}

void mouseDragged() {
  if(locked) {
    px = mouseX-xOffset; 
    py = mouseY-yOffset; 
  }
}

void mouseReleased() {
  locked = false;
}

/*
set up pawns to be a repeated ellipse starting at postion x, y 
 and repeating along the x axis at x + width / 8 
 */
void pawns(int x, int y, int w, int h) {


  //for this number "q" at a certain place, we want an ellipse and for that
  // ellipse to repeat itself eight times and move on the x axis at a certain
  //interval
  for (int q = 0; q < 8; q++) {
    for (int p = 0; p < 8; p++) {

      fill(0, 255, 100);
      ellipse(q * x + x / 2, y / 2 + height / 8, pSize, pSize);
    }
  }

  //second row of ellipses
  for (int q = 0; q < 8; q++) {
    for (int p = 0; p < 8; p++) {

      noFill();
      stroke(0, 255, 200); 
      ellipse(q * x + x / 2, height / 1.23, pSize, pSize);
    }
  }
}



void pieces(int x, int y, int w, int h, int curve) {
  // set up pieces on top of board
  fill(0, 255, 100);
  noStroke();
  rect(20, 20, width / 16, height / 16, -10);
  triangle(89, 17, 119, 68, 150, 17);
  triangle(169, 68, 199, 17, 230, 68);

  arc(280, 30, 50, 50, 0, PI, CHORD);
  arc(360, 40, 50, 50, 1/PI, 18/PI);

  triangle(409, 68, 439, 17, 470, 68);
  triangle(489, 17, 519, 68, 550, 17);
  rect(580, 20, width / 16, height / 16, -10);  
  // set up pieces on bottom of board
  noFill();
  stroke(0, 255, 200); 
  rect(20, 580, width / 16, height / 16, -10);
  triangle(89, 570, 119, 625, 152, 570);
  triangle(169, 625, 199, 570, 232, 625);

  arc(280, 600, 50, 50, 1/PI, 18/PI);
  arc(360, 590, 50, 50, 0, PI, CHORD);

  triangle(409, 625, 439, 570, 472, 625);
  triangle(489, 570, 519, 625, 552, 570);
  rect(580, 580, width / 16, height / 16, -10);
}
