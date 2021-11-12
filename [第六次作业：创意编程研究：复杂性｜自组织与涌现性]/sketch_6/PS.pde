class ParticleSystem {

  ArrayList<Particle> particles;    
  PVector origin;                   

  ParticleSystem(int num, PVector v) {
    particles = new ArrayList<Particle>();   
    origin = v.copy();                       
    for (int i = 0; i < num; i++) {
      particles.add(new Particle(origin));    
    }
  }


  void run() {

    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }

  void addParticle() {
    Particle p;

    if (int(random(0, 2)) == 0) {
      p = new Particle(origin);
    } 
    else {
      p = new CrazyParticle(origin);
    }
    particles.add(p);
  }

  void addParticle(Particle p) {
    particles.add(p);
  }


  boolean dead() {
    return particles.isEmpty();
  }
}
