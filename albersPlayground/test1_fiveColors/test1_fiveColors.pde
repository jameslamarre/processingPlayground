//create a color test involving five strips of paper, two large pieces on the bottom 
// and two 1/4 the size of the other on top and in the center
// between the two, place a strip of colored paper peering out underneath the top
// papers, smaller than the rest and vertically places to intersect the rest of the papers 

int x, y;

void setup() {

  size(400,600);
  x = width;
  y = height;
  noStroke();
  
  // background
  
  // paper 1 
  fill(250,140,80);
  rect(0,0,x,y/2);
  // paper 2 
  fill(50,150,200);
  rect(0,y/2,x,y/2);
  
  // paper insert
  
  fill(220,255,0);
  rectMode(CENTER);
  rect(x/2,y/2,x/3,y/1.75);
  rectMode(CORNER);
  
  // foreground
  
  // paper 3
  fill(250,250,250);
  rect(0,y/2.6,x,y/8);
  // paper 4
  fill(240,120,200);
  rect(0,y/2,x,y/9);

}
