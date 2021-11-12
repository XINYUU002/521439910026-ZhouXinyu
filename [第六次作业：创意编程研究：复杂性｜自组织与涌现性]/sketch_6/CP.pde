class CrazyParticle extends Particle {

  float theta;

  CrazyParticle(PVector l) {

    super(l);

    theta = 0.0;
  }

  
  void update() {
    super.update();

    float theta_vel = (velocity.x * velocity.mag()) / 10.0f;
    theta += theta_vel;
  }

  void display() {

    super.display();

    pushMatrix();
    translate(position.x, position.y);
    rotate(theta);
    stroke(255, lifespan);
  
    popMatrix();
  }
}
