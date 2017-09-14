float r;
float g;
float b;

void setup() {
  size(500, 500);
  background(255);
 
}
void draw() {
  float r=random(255);
  float g=random(255);
  float b=random(255);
  strokeWeight(4);
  stroke(r,g,b);
  line(0, 0, mouseX, mouseY);
}