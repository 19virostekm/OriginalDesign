int backgroundColorR = (int) (Math.random()*101);
int backgroundColorG = (int) (Math.random()*101);
int backgroundColorB = (int) (Math.random()*101);
int x = 0;

void setup()
{
  size(500,500);
}
void draw()
{
  background();
  fill(0,0,0);
  noStroke();
  ellipse(250,250,300,250);
  triangle(150,80,110,210,320,320);
  triangle(340,80,250,210,385,200);
  ellipse(110,250,120,140);
  ellipse(385,250,120,140);
  arc();
  mouthShape();
  teeth();
  fill(x);
  rect(25,25,50,50);
  rect(425,425,50,50);
  rect(25,425,50,50);
  rect(425,25,50,50);
}
void background()
{
  backgroundColorR = backgroundColorR + 1;
  backgroundColorG = backgroundColorG + 1;
  backgroundColorB = backgroundColorB + 1;
  background(backgroundColorR, backgroundColorG, backgroundColorB);
}
void arc()
{
  noFill();
  stroke(8);
  strokeWeight(15);
  arc(246,250,330,330, PI, 2*PI);
}
void mouthShape()
{
  fill(255,255,255);
  beginShape();
  vertex(115,250);
  vertex(200,240);
  vertex(300,240);
  vertex(375,250);
  vertex(325,317);
  vertex(285,320);
  vertex(205,320);
  vertex(165,317);
  endShape(CLOSE);
}
void teeth()
{
  fill(0,0,0);
  triangle(185,240,205,240,195,260);
  triangle(285,240,305,240,295,260);
  triangle(200,330,220,330,210,305);
  triangle(265,330,285,330,275,305);
}
void mouseMoved()
{
x = x + 5;
if (x > 255) {
  x = 0;
}
}

