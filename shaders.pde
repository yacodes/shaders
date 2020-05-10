PShader shader;

void setup() {
  size(8000, 8000, P2D);
  noStroke();

  shader = loadShader("shader.frag");
    shader.set("u_resolution", float(width), float(height));
  shader.set("u_mouse", float(mouseX), float(mouseY));
  shader.set("u_time", millis() / 1000.0);
  shader(shader);
  rect(0,0,width,height);
  
  save("shader.png");
}

void draw() {}
