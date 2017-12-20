color R = color(255, 0, 0);
color G = color(0, 255, 0);
color B = color(0, 0, 255);
color S = color(0, 0, 0);
int drawMode = 1;
int value = 0;
float brushSize = 10;
void setup() {
  size(500, 500);
  smooth();
  background(255);
  noStroke();
}
void draw() {
  fill(R);
  rect(0, 0, 50, 50);
  fill(G);
  rect(0, 50, 50, 50); 
  fill(B);
  rect(0, 100, 50, 50);
  if (mousePressed) {
    if (mouseX> 0&& mouseX<50)
      if (mouseY>0 &&mouseY< 50) {
        S = R;
      } else if (mouseY>50 && mouseY <100) {
        S = G;
      } else if (mouseY>100 && mouseY <150) {
        S = B;
      }
  }
}
void mouseDragged() {
  fill(S);
  if (drawMode == 1) {
    ellipse(mouseX, mouseY, brushSize, brushSize);
  }
  if (drawMode == 2) {
    rect(mouseX, mouseY, brushSize, brushSize);
  }
}
void keyPressed() {
  println(key);

  if (key == '1') {
    drawMode = 1;
  }
  if (key == '2') {
    drawMode = 2;
  }
  if (key == 'z') {
    brushSize = 10;
  }
  if (key == 'x') {
    brushSize = 30;
  }
}