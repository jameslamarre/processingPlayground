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
  
 background(230); 
 fill(100, 100, 200);
 
 fill(120, 120, 120, 50);
 ellipse(x, y, width, width);
 
 float angle = atan2(mouseY-y, mouseX-x);
 fill(105, 200, 200, 200);
 
 pushMatrix();
   translate(x, y);
   rotate(angle);
   //ellipse(x/2, y/2, 150, 150);
   ellipse(width/4, width/4, x/4, x/4);
   ellipse(-width/4, -width/4, x/4, x/4);
   //ellipse(width/8, width/8, x/8, x/8);   
   noStroke();
   //rect(x/2, y/2, 100, width);
   rect(0, 0, width, x/16);
 popMatrix();
 

 
}
