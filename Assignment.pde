/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.24
*/
String fname1;
PImage img1;
float X=0;
float Y=0;
Wave wave1;
int border;//border of the boxes
int pageNum=0;//What page is to be displayed
float gridHeight;
float gridWidth;

void setup()
{
  fullScreen();
  gridHeight=height/10;//dividing the screen into 10 parts
  gridWidth=width/10;//dividing the screen into 10 parts
  
  fname1="Moon_Surface.jpg";
  img1=loadImage(fname1);
  
  //Wave for the oxygen levels
  wave1 = new Wave(gridWidth,height-gridHeight,gridHeight/2,(int)(gridWidth)*2);
  
  border=10;
  textSize(25);
}

void draw()
{
  if(pageNum==0)
  {
    Menu();
  }
  else
  {
    mainPage();
  }
}