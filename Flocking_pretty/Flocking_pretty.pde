

Flock flock;
PImage image;
void setup() {
  image = loadImage("cat.jpeg");
  image.resize(450,450);
  size(450, 450);
  background(30);
  flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 400; i++) {
    flock.addBoid(new Boid(random(width), random(height), int(random(255)), int(random(255)), int(random(255))));
  }
}

void draw() {

  fill(0, 3);
  rect(0, 0, width, height);
  flock.colors(image);
  flock.run();
  println(frameCount);
}

// Add a new boid into the System
void mousePressed() {
  flock.addBoid(new Boid(mouseX, mouseY, int(random(255)), int(random(255)), int(random(255))));
}
