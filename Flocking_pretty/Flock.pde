// The Flock (a list of Boid objects)

class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids

  Flock() {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
  }

  void run() {
    for (Boid b : boids) {
      b.run(boids);  // Passing the entire list of boids to each boid individually
      //println(b.red,b.green,b.blue);
    }
  }

  void colors(PImage image) {
    for (Boid b:boids){
     float x = b.position.x;
     float y= b.position.y;
     color c = image.get(int(x),int(y));
     //println(x,y,loc,int(red(c)),int(green(c)),int(blue(c)));
     b.set_color(int(red(c)),int(green(c)),int(blue(c)));
    }
  }

  void addBoid(Boid b) {
    boids.add(b);
  }
}
