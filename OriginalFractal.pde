boolean colorChange = false;
int colorR = 250;
int colorG = 170;
int colorB = 180;
int baseLen = 0;
public void setup(){
  size (800,800);
  rectMode(CENTER);
}

public void draw(){
  background(255);
 if (colorChange == true){
   fill(255);
   rect(0,0,1600,1600);
   myFractal(400,400,650, colorR, colorG, colorB);
 }
 else
  fill(250,182,216);
  myFractal(400,400,650, colorR, colorG, colorB);
}
public void mousePressed()//optional
{
  colorChange = true;
  
 
  if (Math.random() > .7){
  colorG = (int)(Math.random()*150) + 50;
  }
  else if (Math.random() > .4)
  {
  colorB = (int)(Math.random()*150) + 50;
  }
  else
  colorR = (int)(Math.random()*150) + 50;
 
  System.out.println("pressed");
}


public void myFractal (int x, int y, float siz, int r, int g, int b){
  
  if (siz < 25)
  {
  ellipse(x, y, siz/2, siz);
  ellipse(x, y, siz, siz/2);
    //myFractal(x+siz/2, y, siz/2);
  }
  else{
  fill( r, g, b, 100);
  stroke(100, 120, 250);
  ellipse(x, y, siz/2, siz);
  ellipse(x, y, siz, siz/2);
  translate(x, y);
  rotate(radians(45));
  ellipse (0, 0, siz/2, siz);
  rotate (radians(90));
  ellipse (0, 0, siz/2, siz);
  resetMatrix();
  myFractal(x, y, siz/1.5, r, g, b);
  }
}

  
  
  
