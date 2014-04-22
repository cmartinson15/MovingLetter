#include <MeggyJrSimple.h>

int direction = 90;
int marker = 16;
struct Point
{
  int x;
  int y;
};


Point s1 = {1,6}; 
Point s2 = {1,5};
Point s3 = {1,4};
Point s4 = {1,3};
Point s5 = {1,2};
Point s6 = {1,1};
Point s7 = {2,7};
Point s8 = {3,7};
Point s9 = {4,7};
Point s10 = {5,7};
Point s11 = {6,7};
Point s12 = {6,0};
Point s13 = {5,0};
Point s14 = {4,0};
Point s15 = {3,0};
Point s16 = {2,0};

Point cArray[16]={s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16};


void setup()
{
  MeggyJrSimpleSetup();
}

void loop()
{
  CheckButtonsPress();{
    if(Button_Up)
      direction=0;
    if(Button_Down)
      direction=180;
    if(Button_Right)
      direction=270;
    if(Button_Left)
      direction=90;
  }
  drawC();
  movement();
  DisplaySlate();
  delay(10);
  ClearSlate();
}

void drawC()
{
  for (int z = 0; z < marker; z++)
  {
    DrawPx(cArray[z].x, cArray[z].y,Green);    
  }
}




