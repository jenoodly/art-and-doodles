import processing.sound.*;

SoundFile cNote;
int Cx = 10;
int Cy = 60;
int Cw = 30;
int Ch = 80;

SoundFile dNote;
int Dx = 33;
int Dy = 60;
int Dw = 30;
int Dh = 80;

SoundFile eNote;
int Ex = 60;
int Ey = 60;
int Ew = 30;
int Eh = 80;
/*
SoundFile fNote;
SoundFile gNote;
SoundFile aNote;
SoundFile bNote;
*/
void setup(){
size(235,200);

cNote = new SoundFile(this,"68441__pinkyfinger__piano-c.wav");
dNote = new SoundFile(this,"68442__pinkyfinger__piano-d.wav");
eNote = new SoundFile(this,"68443__pinkyfinger__piano-e.wav");
/*
fNote = new SoundFile(this,"f note.m4a");
gNote = new SoundFile(this,"g note.m4a");
aNote = new SoundFile(this,"a note.m4a");
bNote = new SoundFile(this,"b note.m4a");
*/
}

void draw(){
  int xWhite = 10;
  for(int i = 1; i <= 7; i++){
    fill(255,255,255);
    rect(xWhite,60,30,80);
    xWhite += 30;
  }

  int xBlack = 30;
  for(int j = 1; j <= 5; j++){
    if(j <= 2){
      fill(0);
      rect(xBlack,60,15,48);
      xBlack += 30;
    }
    else{
      xBlack += 30;
      fill(0);
      rect(xBlack,60,15,48);
    }
  }

  //click c note
  if(mousePressed){
    if(mouseX>Cx && mouseX <Cx+Cw && mouseY>Cy && mouseY < Cy+Ch){
     cNote.play();
    }
  }

  //click d note
  if(mousePressed){
    if(mouseX>Dx && mouseX <Dx+Dw && mouseY>Dy && mouseY < Dy+Dh){
     dNote.play();
    }
  }

  //click e note
  if(mousePressed){
    if(mouseX>Ex && mouseX <Ex+Ew && mouseY>Ey && mouseY < Ey+Eh){
     eNote.play();
    }
  }

  if((keyPressed == true) && (key == 'c')){
    cNote.play();
  }

   if((keyPressed == true) && (key == 'd')){
    dNote.play();
  }

   if((keyPressed == true) && (key == 'e')){
    eNote.play();
  }

}
