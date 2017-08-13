PImage catPic;
int x=243;
int y=427;
int acceleration = 5;
void setup(){
  size(750,900);
  catPic = loadImage("cat.jpg");
    catPic.resize(750, 900);  // to match your size
background(catPic);
}void draw(){
  if(x>width){
    background(catPic);
    x=243;
    y=427;
  }
  if(mousePressed){
println("Mouse’s x-position: " + mouseX + "\n" + "Mouse’s y-position: " + mouseY + "\n");
  }
  fill(255,0,0);
  noStroke();
  ellipse(x,y,50,50);
  ellipse(x+170, y, 50, 50);
}
void keyPressed(){
x+=2*acceleration;
y+=2*acceleration;
}
