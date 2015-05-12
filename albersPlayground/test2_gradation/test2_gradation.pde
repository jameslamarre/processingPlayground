// map a gradation study with six vertically long rectangles overlaying on top of 
// one another, some slightly askew 

int x, y;
float angle;

void setup() {

  size(500, 600);
  background(255, 255, 255);
  noStroke();
  fill(240, 0, 80);
  float x;
  float y;
  x = width/8;
  y = height/0.6; 

  // shapesssss

  rectMode(CENTER);
  fill(240, 0, 80, 150);  
  rect(width/8, height/2, x/0.8, y/3);

  fill(240, 0, 80, 200); 
  float c = cos(angle);
  translate(width/3, 0); 
  rotate(c);
  rect(width/2, height/4, x/0.8, y/3);

  fill(240, 0, 80, 255);  
  translate(width, 0);
  rotate(c);
  rect(width/4, height/4, x/0.8, y/3);
}

