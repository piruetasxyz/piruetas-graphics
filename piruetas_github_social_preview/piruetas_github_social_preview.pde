// piruetas_github_social_preview

PFont font;

String piruetas = "piruetas";

void setup() {
  // rectangle canvas
  size(1280, 640);

  // white background
  background(255);
  
  font = loadFont("PublicSans-Regular-48.vlw");

  textFont(font);

  textSize(72);

  textAlign(CENTER, CENTER);

  fill(0);

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
