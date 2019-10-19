void setup() {
  size(400, 400, P3D);
}

void draw() {
  background(255);
  translate(-20,50);

  leftHair();
  face();
  straight();
  //halfie();
  body();
}

void body(){
 // bezier();
}

void straight() {
  pushMatrix();
  translate(273, 0);

  float t = frameCount*0.02;
  float r1 = noise(1, 3, t)*30;

  float x1 = 75;
  float y1 = 20;

  float x2 = r1;
  float y2 = r1;

  float x3 = 90;
  float y3 = 90;

  float x4 = 25;
  float y4 = 80;

  noFill();
  stroke(0);

  bezier(x1, y1,
  x2, y2,
  x3, y3,
  x4, y4);

  int num = 30;
  translate(-161, 60);
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < num; j++) {
      noFill();
      stroke(0);

      bezier(x1, y1,
      x2, y2,
      x3, y3,
      x4, y4);

      translate(5, 0); //space between each inv. curve
    }
    translate(-155, 60); //places in straight line each row has 6 col
  }
  popMatrix();
}

void leftHair() {
  pushMatrix();
  float t = frameCount*0.02;
  float r1 = noise(1, 3, t)*30;

  float x1 = 75;
  float y1 = 20;

  float x2 = r1;
  float y2 = r1;

  float x3 = 90;
  float y3 = 90;

  float x4 = 25;
  float y4 = 80;

  int high = 20;
  int low = 80;
  translate(162, 0);
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 22; j++) {
      noFill();
      stroke(0);

      bezier(x1, y1,
      x2, y2,
      x3, y3,
      x4, y4);
      translate(5, 0);
    }
    translate(-145, low-high);
  }
  popMatrix();
}

void rightHair() {
  pushMatrix();
  float t = frameCount*0.02;
  float r1 = noise(1, 3, t)*-29;

  float x1 = 75;
  float y1 = 22;

  float x2 = 140; //140
  float y2 = 20; //20

    float x3 = r1; //50
  float y3 = 80; //80

    float x4 = 120; //120
  float y4 = 80;


  int high = 20;
  int low = 80;

  translate(380, 0);
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 20; j++) {

      if (i == 0 && j < 8) {
        stroke(255, 255, 255);
      } else {
        stroke(0, 0, 0, 100);
      }
      //fill(255);
      bezier(x1, y1,
      x2, y2,
      x3, y3,
      x4, y4);

      translate(-5, 0);
    }
    translate(130, low-high);
  }
  popMatrix();
}

void face() {
  pushMatrix();

  //eyes
   fill(0);
   bezier(350, 80, 354, 70, 355, 71, 365, 71);
   bezier(315,74,325,74,326,72,330,81);

   //glasses
   noFill();
   ellipse(360,70,25,30);
   ellipse(325,70,30,30);
   line(340,73,350,73);

   //nose
   bezier(350,88,349,91,345,91,345,93);

  //mouth
  fill(255,0,0);
  noStroke();
  arc(338, 100, 20, 10, PI, TWO_PI, PIE);

  // face shape
  noFill();
  stroke(0);
  bezier(330, 20,
  380, 25,
  360, 150,
  315, 98);
  popMatrix();
}

void halfie() {
  pushMatrix();
  translate(width/2,height/2+60);
  //strokeWeight(5);
  arc(0, 0, 600, 600, PI, TWO_PI);

  //arc(40, 60, 100, 90, PI, 0, OPEN);
  popMatrix();
}
