// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/QHEQuoIKgNE

class Circle {
  float x;
  float y;
  float r;
  float shapeScale;
  PImage img;
  PShape shp;
  boolean display = true;

  boolean growing = true;

  Circle(float x_, float y_, PImage img_, PShape shp_) {
    x = x_;
    y = y_;
    r = 3;
    shapeScale = r/200;
    img = img_;
    shp = shp_;
    shp.setFill(false);
    shp.setStroke(color(255, 0, 0));
    shp.scale(2*shapeScale);
  }

  void grow() {
    if (growing) {
      r = r + 1;
      shapeScale = r/200;
      shp.scale(2*shapeScale);
    }
  }

  boolean edges() {
    return (x + r > width || x -  r < 0 || y + r > height || y -r < 0);
  }

  void show() {
    //stroke(255);
    //strokeWeight(2);
    //noFill();
    //ellipse(x, y, r*2, r*2);
    if (display) {
      imageMode(CENTER);
      image(img, x, y, int((r*1.9)), int((r*1.9)));
      shape(shp, x, y);
    }
  }

  void setShape(PShape s) {
    shp = s;
  }

  boolean isIntersectingWith(Circle other) {
    int thisVertexCount =shp.getVertexCount();
    int otherVertexCount = other.shp.getVertexCount();
    
    float distanceBetweenObjets = dist(x,y, other.x,other.y);
    if(distanceBetweenObjets < r + other.r){  //if the distance between centers is large dont check segment by segment collision
    for (int i = 0; i < thisVertexCount; i++) {
      int iPlusOne = i+1;
      if (iPlusOne>= thisVertexCount) { //wrapps arrownd to make the segment of the last element and the first.
        iPlusOne -=thisVertexCount;
      }
      for (int j = 0; j < otherVertexCount; j++) {
        int jPlusOne = j+1;
        if (jPlusOne>= otherVertexCount) {
          jPlusOne -=otherVertexCount;
        }

        PVector thisP1, thisP2, otherP1, otherP2;
        thisP1 = new PVector(x, y);
        thisP1.add(shp.getVertex(i).mult(shapeScale));

        thisP2 = new PVector(x, y);
        thisP2.add(shp.getVertex(iPlusOne).mult(shapeScale));

        otherP1 = new PVector(other.x, other.y);
        otherP1.add(other.shp.getVertex(j).mult(other.shapeScale));

        otherP2 = new PVector(other.x, other.y);
        otherP2.add(other.shp.getVertex(jPlusOne).mult(other.shapeScale));


        if (lineIntersect(thisP1, thisP2, otherP1, otherP2) != null) {
          return true;
        }
      }
    }
    }
    return false;
  }

  PVector lineIntersect(float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4) {
    double denom = (y4 - y3) * (x2 - x1) - (x4 - x3) * (y2 - y1);
    if (denom == 0.0) { // Lines are parallel.
      return null;
    }
    double ua = ((x4 - x3) * (y1 - y3) - (y4 - y3) * (x1 - x3))/denom;
    double ub = ((x2 - x1) * (y1 - y3) - (y2 - y1) * (x1 - x3))/denom;
    if (ua >= 0.0f && ua <= 1.0f && ub >= 0.0f && ub <= 1.0f) {
      // Get the intersection point.
      return new PVector((int) (x1 + ua*(x2 - x1)), (int) (y1 + ua*(y2 - y1)));
    }

    return null;
  }
  PVector lineIntersect(PVector p1, PVector p2, PVector p3, PVector p4) {
    return lineIntersect(p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, p4.x, p4.y );
  }


  boolean containsPoint(float a, float b) {
    if(dist(a,b,x,y)< 1.5*r){
    int intercections = 0;
    PVector p0, p1;
    p0 = new PVector(a, b);
    p1 = new PVector(a, b+4000);

    for (int i = 0; i < shp.getVertexCount(); i++) {
      int iPlusOne = i+1;
      if (iPlusOne>= shp.getVertexCount()) {
        iPlusOne -=shp.getVertexCount();
      }
      PVector esteP1, esteP2;
      esteP1 = new PVector(x, y);
      esteP1.add(shp.getVertex(i).mult(shapeScale));
      esteP2 = new PVector(x, y);
      esteP2.add(shp.getVertex(iPlusOne).mult(shapeScale));

      if (lineIntersect(esteP1, esteP2, p0, p1) != null) {
        intercections++;
      }
    }
    if (intercections%2 == 1) {
      return true;
    } else {
      return false;
    }}
    return false;
  }






  void noDisplay() {
    display = false;
  }
  void display() {
    display = true;
  }
}