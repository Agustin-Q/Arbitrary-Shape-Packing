// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/QHEQuoIKgNE

ArrayList<Circle> circles;
ArrayList<PImage> iconos;
ArrayList<PShape> formas;
PImage maskImg;
ArrayList<PVector> seedPoints;
boolean finished = false;

void setup() {
  size(400, 345, P2D);
  circles = new ArrayList<Circle>();
  iconos = new ArrayList<PImage>();
  formas = new ArrayList<PShape>();
  iconos.add(loadImage("Darth Vader.png"));
  iconos.add(loadImage("Storm Trooper.png"));
  iconos.add(loadImage("Death Star.png"));
  iconos.add(loadImage("C3PO.png"));
  iconos.add(loadImage("Chuwaca.png"));
  iconos.add(loadImage("Milenium Falcon.png"));
  iconos.add(loadImage("Princes Leia.png"));
  iconos.add(loadImage("R2D2.png"));
  formas.add(createDarthVaderShape());
  formas.add(createStormTrooperShape());
  formas.add(createDeathStarShape());
  formas.add(createC3POShape());
  formas.add(createChuwacaShape());
  formas.add(createMileniumFalconShape());
  formas.add(createPrincesLeiaShape());
  formas.add(createR2D2Shape());


  seedPoints = new ArrayList<PVector>();
  maskImg = loadImage("maskImage400x345.png");  
  maskImg.loadPixels();  
  for (int x = 0; x < maskImg.width; x++) {
    for (int y = 0; y < maskImg.height; y++) {
      color pix = maskImg.pixels[x + y * maskImg.width];
      if (brightness(pix)<50) {        
        seedPoints.add(new PVector(x, y));
      }
    }
  }
}

void draw() {
  background(255);


  int max = 30000;
  int total = 20;
  int count = 0;
  int attempts = 0;


  if (circles.size() <max) {
    while (count <  total) {
      Circle newC = newCircle();
      if (newC != null) {
        circles.add(newC);
        count++;
      }
      attempts++;
      if (attempts > 1000) {
        finished = true;
        break;
      }
    }
  }


  for (int i = 0; i < circles.size(); i++) {
    if (circles.get(i).growing) {
      if (circles.get(i).edges()) {
        circles.get(i).growing = false;
      } else {
        for (int j = 0; j < circles.size(); j++) {
          if (circles.get(i) != circles.get(j)) {

            if (circles.get(i).isIntersectingWith(circles.get(j))) {
              circles.get(i).growing = false;
              break;
            }
          }
        }
      }
    }
    circles.get(i).show();
    circles.get(i).grow();
  }
  println(circles.size());
  println(frameRate);

if(mousePressed){
  save("output");
}

  if (finished) {
    save("finishedOutput");
    noLoop();
    println(millis());
    println("FINISHED");
  }
}

Circle newCircle() {

  PVector seed = seedPoints.get(int(random(0, seedPoints.size())));
  float x = seed.x;
  float y = seed.y;
  int index = int(random(formas.size()));

  boolean valid = true;
  for (Circle c : circles) {

    if (c.containsPoint(x, y)) {
      valid = false;
    }
  }

  if (valid) {
    return new Circle(x, y, iconos.get(index), formas.get(index));
  } else {
    return null;
  }
}

/*
void mousePressed() {
  for (Circle c : circles) {
    c.noDisplay();
  }
}

void keyPressed() {
  for (Circle c : circles) {
    c.display();
  }
}
*/