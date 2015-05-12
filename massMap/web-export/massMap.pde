int x, y;

void setup() {
  
 size(750,750);
 x = width/2;
 y = width/2;
 ellipseMode(CENTER);
 rectMode(CENTER);
 smooth(); 
  
}

void draw() {
  
 background(255); 
 fill(100, 100, 200);
 
 float angle = atan2(mouseY-y, mouseX-x);
 fill(105, 200, 200, 100);
 
 pushMatrix();
   translate(x, y);
   rotate(angle);
   //ellipse(x/2, y/2, 150, 150);
   ellipse(0, 0, 150, 150);
   noStroke();
   //rect(x/2, y/2, 100, width);
   rect(0, 0, 100, width);
 popMatrix();
 
 fill(100, 150, 150);
 ellipse(x, y, 20, 20);
 
}

