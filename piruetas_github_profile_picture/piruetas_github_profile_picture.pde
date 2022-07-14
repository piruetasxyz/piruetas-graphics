// piruetas_github_profile_picture

PFont font;

String piruetas = "piruetas";

void setup() {
  // square canvas
  size(500, 500);

  // white background
  background(255);

  // load font
  font = loadFont("PublicSans-Regular-48.vlw");

  // set font
  textFont(font);

  textSize(72);

  textAlign(CENTER, CENTER);

  fill(0);

  //rectMode(CENTER);

  for (int i = 0; i < piruetas.length(); i++) {
    text(piruetas.charAt(i), (float(i+1)/(piruetas.length() + 1)) * width, random(height/3) + height/3);
  }
}

void draw() {
}



void keyPressed() {

  if (key == ESC) {
    save("piruetas.jpg");
  } else {
    background(255);
    for (int i = 0; i < piruetas.length(); i++) {
      text(piruetas.charAt(i), (float(i+1)/(piruetas.length() + 1)) * width, random(height/3) + height/2);
    }
  }
}
