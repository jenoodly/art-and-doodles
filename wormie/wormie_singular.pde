void setup() {
  size(850, 850, P3D);
  //frameRate(500);
}

void draw() {
  background(255);

  int numOfSqGrid = 6;
  int spaceBtwnWorms = 150;
  for (int row = 0; row < numOfSqGrid; row++) {
    for (int col = 0; col < numOfSqGrid; col++) {
      myCircle();
      translate(spaceBtwnWorms, 0);
    }
    translate(-(spaceBtwnWorms*numOfSqGrid), spaceBtwnWorms);
  }
}

void myCircle() {
  int sphereSize = 40;
  int spaceBtwnBalls = 2;
  int numOfBalls = 10;
  pushMatrix();

  translate(sphereSize, sphereSize);
  rotateY(frameCount * 0.01);
  //translate(50, 0);

  for (int i = 0; i < numOfBalls; i++) {
    noStroke();

    switch (i) {
    case 0:
      fill(255, 0, 0);
      break;
    case 1:
      fill(255, 0, 0);
      break;
    case 2:
      fill(0, 0, 255);
      break;
    case 3:
      fill(255, 0, 0);
      break;
    case 4:
      fill(255, 255, 0);
      break;
    case 5:
      fill(0, 0, 255);
      break;
    case 6:
      fill(255, 0, 0);
      break;
    case 7:
      fill(255, 255, 0);
      break;
    case 8:
      fill(0, 0, 255);
      break;
    case 9:
      fill(255, 0, 0);
      break;
    case 10:
      fill(255, 255, 0);
      break;
    case 11:
      fill(0, 0, 255);
      break;
    }

    sphere(sphereSize);
    rotateZ(frameCount * 0.02);
    translate(spaceBtwnBalls*i, 0);
  }

  popMatrix();
}
