class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    position = l.copy();
    lifespan = 255.0;
  }

  void run() {
    update();
    display();
  }

 
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 2.0;
  }

 
  void display() {
    noStroke();
    fill(random(0,255),random(0,255),random(0,255),lifespan*random(1,30));
    ellipse(position.x, position.y, random(10,30),random(10,30));
    
  }

  
  boolean isDead() {
    return (lifespan < 0.0);
  }
}
