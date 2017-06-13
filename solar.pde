int center = 250;
float angle = 0.05;
int scalar = 51;

float speed = 0.02;

void setup(){
    size(500,500);
    smooth();
}

void draw(){
    background(0);
    ellipse(center,center,80,80);

    float x = center + sin(angle) * scalar;
    float y = center + cos(angle) * scalar;
    ellipse(x,y,15,15);
    angle = angle + speed;



}
