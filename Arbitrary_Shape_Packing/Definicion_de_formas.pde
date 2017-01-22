

PShape createDarthVaderShape() {
  PShape s;
  s= createShape();
  createDarthVaderShape(s);
  return s;
}

void createDarthVaderShape(PShape s) {
  s.beginShape();
  s.vertex(-6.000, -187.000);
  s.vertex(42.000, -186.000);
  s.vertex(62.000, -181.000);
  s.vertex(83.000, -170.000);
  s.vertex(98.000, -160.000);
  s.vertex(114.000, -140.000);
  s.vertex(128.000, -112.000);
  s.vertex(133.000, -88.000);
  s.vertex(132.000, -32.000);
  s.vertex(185.000, 105.000);
  s.vertex(185.000, 112.000);
  s.vertex(178.000, 123.000);
  s.vertex(163.000, 137.000);
  s.vertex(141.000, 151.000);
  s.vertex(120.000, 161.000);
  s.vertex(90.000, 172.000);
  s.vertex(59.000, 180.000);
  s.vertex(27.000, 184.000);
  s.vertex(-11.000, 185.000);
  s.vertex(-50.000, 182.000);
  s.vertex(-78.000, 176.000);
  s.vertex(-119.000, 162.000);
  s.vertex(-148.000, 148.000);
  s.vertex(-169.000, 131.000);
  s.vertex(-182.000, 118.000);
  s.vertex(-186.000, 112.000);
  s.vertex(-186.000, 104.000);
  s.vertex(-135.000, -26.000);
  s.vertex(-134.000, -32.000);
  s.vertex(-134.000, -97.000);
  s.vertex(-129.000, -113.000);
  s.vertex(-113.000, -143.000);
  s.vertex(-99.000, -159.000);
  s.vertex(-84.000, -171.000);
  s.vertex(-70.000, -178.000);
  s.vertex(-59.000, -182.000);
  s.vertex(-45.000, -186.000);
  s.endShape(CLOSE);
}



PShape createStormTrooperShape() {
  PShape s;
  s= createShape();
  createStormTrooperShape(s);
  return s;
}

void createStormTrooperShape(PShape s) {
  s.beginShape();
  s.vertex(-5.000, -190.000);
  s.vertex(83.000, -189.000);
  s.vertex(137.000, -157.000);
  s.vertex(152.000, -91.000);
  s.vertex(194.000, 60.000);
  s.vertex(122.000, 181.000);
  s.vertex(79.000, 190.000);
  s.vertex(-97.000, 189.000);
  s.vertex( -144.000, 160.000);
  s.vertex( -192.000, 48.000);
  s.vertex( -137.000, -157.000);
  s.vertex( -91.000, -189.000);
  s.endShape(CLOSE);
}

PShape createDeathStarShapeEllipse() {
  PShape s;
  s = createShape(ELLIPSE, 0, 0, 378, 378);
  return s;
}


PShape createDeathStarShape() {
  PShape s;
  s= createShape();
  createDeathStarShape(s);
  return s;
}

void createDeathStarShape(PShape s) {
  s.beginShape();
  s.vertex(4.000, -190.000);
  s.vertex(58.000, -181.000);
  s.vertex(99.000, -162.000);
  s.vertex(144.000, -124.000);
  s.vertex(184.000, -50.000);
  s.vertex(189.000, 5.000);
  s.vertex(181.000, 61.000);
  s.vertex(146.000, 124.000);
  s.vertex(69.000, 180.000);
  s.vertex(-19.000, 192.000);
  s.vertex(-91.000, 171.000);
  s.vertex(-163.000, 101.000);
  s.vertex(-191.000, 25.000);
  s.vertex(-187.000, -51.000);
  s.vertex(-134.000, -139.000);
  s.vertex(-66.000, -181.000);

  s.endShape(CLOSE);
}


PShape createBobaFetShape() {
  PShape s;
  s= createShape();
  createDeathStarShape(s);
  return s;
}

void createBobaFetShape(PShape s) {
  s.beginShape();
  s.vertex(-88, -166);
  s.vertex(-11, -193);
  s.vertex(82, -182);
  s.vertex(139, -131);
  s.vertex(160, -73);
  s.vertex(183, 127);
  s.vertex(73, 179);
  s.vertex(-54, 181);
  s.vertex(-166, 128);
  s.vertex(-190, -192);
  s.vertex(-111, -190);
  s.endShape(CLOSE);
}


PShape createC3POShape() {
  PShape s;
  s= createShape();
  createC3POShape(s);
  return s;
}

void createC3POShape(PShape s) {
  s.beginShape();
  s.vertex(-1, -192);
  s.vertex(82, -172);
  s.vertex(162, -94);
  s.vertex(191, -34);
  s.vertex(189, 61);
  s.vertex(163, 163);
  s.vertex(101, 166);
  s.vertex(6, 190);
  s.vertex(-110, 165);
  s.vertex(-162, 164);
  s.vertex(-190, 51);
  s.vertex(-189, -42);
  s.vertex(-102, -165);
  s.endShape(CLOSE);
}

PShape createChuwacaShape() {
  PShape s;
  s= createShape();
  createChuwacaShape(s);
  return s;
}

void createChuwacaShape(PShape s) {
  s.beginShape();
  s.vertex(-1, -189);
  s.vertex(81, -170);
  s.vertex(152, -87);
  s.vertex(187, 71);
  s.vertex(188, 145);
  s.vertex(103, 148);
  s.vertex(66, 177);
  s.vertex(-1, 189);
  s.vertex(-70, 175);
  s.vertex(-100, 149);
  s.vertex(-187, 148);
  s.vertex(-187, 52);
  s.vertex(-151, -94);
  s.vertex(-82, -175);

  s.endShape(CLOSE);
}


PShape createMileniumFalconShape() {
  PShape s;
  s= createShape();
  createMileniumFalconShape(s);
  return s;
}

void createMileniumFalconShape(PShape s) {
  s.beginShape();
  s.vertex(-25, -192);
  s.vertex(68, -140);
  s.vertex(158, -44);
  s.vertex(193, 51);
  s.vertex(167, 134);
  s.vertex(99, 189);
  s.vertex(-10, 187);
  s.vertex(-72, 150);
  s.vertex(-187, -52);
  s.vertex(-137, -128);
  s.vertex(-76, -129);
  s.vertex(-52, -177);
  s.endShape(CLOSE);
}


PShape createPrincesLeiaShape() {
  PShape s;
  s= createShape();
  createPrincesLeiaShape(s);
  return s;
}

void createPrincesLeiaShape(PShape s) {
  s.beginShape();
  s.vertex(-1, -191);
  s.vertex(72, -175);
  s.vertex(125, -124);
  s.vertex(138, -84);
  s.vertex(177, -77);
  s.vertex(189, -40);
  s.vertex(186, 52);
  s.vertex(155, 70);
  s.vertex(135, 73);
  s.vertex(124, 109);
  s.vertex(42, 179);
  s.vertex(2, 190);
  s.vertex(-35, 182);
  s.vertex(-126, 108);
  s.vertex(-137, 70);
  s.vertex(-164, 66);
  s.vertex(-188, 42);
  s.vertex(-187, -63);
  s.vertex(-163, -82);
  s.vertex(-136, -84);
  s.vertex(-119, -130);
  s.vertex(-65, -180);
  s.endShape(CLOSE);
}



PShape createR2D2Shape() {
  PShape s;
  s= createShape();
  createR2D2Shape(s);
  return s;
}

void createR2D2Shape(PShape s) {
  s.beginShape();

  s.vertex(-5, -189);
  s.vertex(39, -181);
  s.vertex(78, -150);
  s.vertex(95, -112);
  s.vertex(96, -71);
  s.vertex(159, -70);
  s.vertex(163, 122);
  s.vertex(187, 183);
  s.vertex(76, 186);
  s.vertex(77, 146);
  s.vertex(-76, 149);
  s.vertex(-81, 186);
  s.vertex(-192, 186);
  s.vertex(-164, 124);
  s.vertex(-163, -69);
  s.vertex(-99, -69);
  s.vertex(-95, -124);
  s.vertex(-69, -163);
  s.vertex(-41, -183);
  s.endShape(CLOSE);
}