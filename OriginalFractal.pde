int guy;
public void setup()
{
	draw();
	size(900,900);
}
public void draw()
{
  background(0);
	fractal(0,0, guy);
  fractal2(900,900, guy);
  fractal3(900,0, guy);
   fractal4(0,900, guy);


}
public void mouseDragged()//optional
{
  if (mouseX >450){
    guy += 30;
  }
    if (mouseX <450){
    guy -= 30;
  }
}

public void fractal(int x, int y, int len) 
{
 if (len<=20)
 	ellipse(x+len/2, y, len, len);

 else{
 
 	fractal(x,y, len/2);
   fill(0,300,0);
  fractal(x +len/2,y, len/4);
  fill(300,0,0);
  fractal(x+len/4,y+len/2, len/8);
   fill(0,0,300);
   fractal(x+len/4,y+len/2, len/16);
    fill(300,300,300);
 }
}
 	public void fractal2(int x, int y, int len) 
{
 if (len<=20)
  ellipse(x-len/2, y, len, len);

 else{
 
  fractal2(x,y, len/2);
   fill(0,300,0);
  fractal2(x -len/2,y, len/4);
  fill(300,0,0);
  fractal2(x-len/4,y-len/2, len/8);
     fill(0,0,300);
   fractal2(x-len/4,y-len/2, len/16);
      fill(300,300,300);
 }
 
}
  public void fractal3(int x, int y, int len) 
{
 if (len<=20)
  ellipse(x-len/2, y, len, len);

 else{
 
  fractal3(x,y, len/2);
   fill(0,300,0);
  fractal3(x -len/2,y, len/4);
  fill(300,0,0);
  fractal3(x-len/4,y+len/2, len/8);
     fill(0,0,300);
   fractal3(x-len/4,y+len/2, len/16);
      fill(300,300,300);
 }
 
}
  public void fractal4(int x, int y, int len) 
{
 if (len<=20)
  ellipse(x+len/2, y, len, len);

 else{
 
  fractal4(x,y, len/2);
   fill(0,300,0);
  fractal4(x +len/2,y, len/4);
  fill(300,0,0);
  fractal4(x+len/4,y-len/2, len/8);
     fill(0,0,300);
   fractal4(x+len/4,y-len/2, len/16);
      fill(300,300,300);
 }
 
}