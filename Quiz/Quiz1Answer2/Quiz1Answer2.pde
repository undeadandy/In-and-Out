void setup() {
  size(500, 500);
  background(255);
  noStroke();
}
void draw() {fill(mouseX,0,0);
ellipse(mouseX,mouseY,20,20);
println(mouseX);
}