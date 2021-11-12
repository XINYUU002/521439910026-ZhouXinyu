ArrayList<ParticleSystem> systems;

void setup() {
  size(1000,1000);
  systems = new ArrayList<ParticleSystem>();
}

void draw() {
  background(0);
  for (ParticleSystem ps : systems) {
    ps.run();
    ps.addParticle();
  }
  if (systems.isEmpty()) {
    fill(random(0,255),random(0,255),random(0,255));
    textAlign(CENTER);
    text("click mouse to add particle systems", width/2, height*1/4);
    text("drag mouse to add particle systems", width/2, height*3/4);
  }
}

void mousePressed() {
  systems.add(new ParticleSystem(1, new PVector(mouseX, mouseY)));

}

void mouseDragged() {
  systems.add(new ParticleSystem(1, new PVector(mouseX, mouseY)));
}
