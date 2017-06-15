int center = 350;
float angle1 = 0.05;
float angle2 = 0.05;
float angle3 = 0.05;
float angle4 = 0.05;
float angle5 = 0.05;
float angle6 = 0.05;
float angle7 = 0.05;
float angle8 = 0.05;
 
int scalar1 = 50;
int scalar2 = 70;
int scalar3 = 100;
int scalar4 = 130;
int scalar5 = 170;
int scalar6 = 220;
int scalar7 = 260;
int scalar8 = 300;

float speed1 = 0.04;
float speed2 = 0.035;
float speed3 = 0.03;
float speed4 = 0.025;
float speed5 = 0.02;
float speed6 = 0.015;
float speed7 = 0.01;
float speed8 = 0.005;



void setup(){
    size(700,700);
    smooth();
}

void draw(){
    background(0);
    fill( #ffff99);
    ellipse(center,center,70,70);

    noFill();
    ellipse(350,350, 100, 100);
    
    float x = center + cos(angle1) * scalar1;
    float y = center + sin(angle1) * scalar1;
    fill(#ffd9b3);
    ellipse(x,y,15,15);
    angle1 = angle1 + speed1;

    x = center + cos(angle2) * (scalar2);
    y = center + sin(angle2) * (scalar2);
    fill(#ffbf80);
    ellipse(x,y,20,20);
    angle2 = angle2 + speed2;

    x = center + cos(angle3) * (scalar3);
    y = center + sin(angle3) * (scalar3);
    fill(#008fb3);
    ellipse(x,y,30,30);
    angle3 = angle3 + speed3;

    x = center + cos(angle4) * (scalar4);
    y = center + sin(angle4) * (scalar4);
    fill(#4d2600);
    ellipse(x,y,19,19);
    angle4 = angle4 + speed4;

    x = center + cos(angle5) * (scalar5);
    y = center + sin(angle5) * (scalar5);
    fill(#8080ff);    
    ellipse(x,y,40,40);
    angle5 = angle5 + speed5;

    x = center + cos(angle6) * (scalar6);
    y = center + sin(angle6) * (scalar6);
    fill(#ffa64d);
    ellipse(x,y,39,39);
    angle6 = angle6 + speed6;

    x = center + cos(angle7) * (scalar7);
    y = center + sin(angle7) * (scalar7);
    fill(#b3ffff);    
    ellipse(x,y,33,33);
    angle7 = angle7 + speed7;

    x = center + cos(angle8) * (scalar8);
    y = center + sin(angle8) * (scalar8);
    fill(#0066cc);
    ellipse(x,y,33,33);
    angle8 = angle8 + speed8;

}