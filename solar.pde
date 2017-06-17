

int center = 400;
float[][] planetData;
int[] planetColor;
float baseSpeed = 10.0;
PImage[] im = new PImage[9];

void setup(){
    size(800,800);
    smooth();
    
    im[0] = loadImage("sun.png");
    im[1] = loadImage("mercury.png");
    im[2] = loadImage("venus.png");
    im[3] = loadImage("earth.png");
    im[4] = loadImage("mars.png");
    im[5] = loadImage("jupiter.png");
    im[6] = loadImage("saturn.png");
    im[7] = loadImage("uranus.png");
    im[8] = loadImage("neptune.png");
    
    planetData = new float[9][4];
    planetColor = new int[9];
    
    
    planetColor[1] = #ffd24d;
    planetColor[2] = #ffa64d;
    planetColor[3] = #0077b3;
    planetColor[4] = #ff6666;
    planetColor[5] = #ffad33;
    planetColor[6] = #994d00;
    planetColor[7] = #ccffcc;
    planetColor[8] = #ccffff;
  
   
    planetData[1][0] = 19;  // planet diameter
    planetData[1][1] = 50; // planet orbit radius
    planetData[1][2] = 88; // number of days per year (speed)
    planetData[1][3] = 0.0; // initial planet position
    
    planetData[2][0] = 34;  // planet diameter
    planetData[2][1] = 70; // planet orbit radius
    planetData[2][2] = 225; // number of days per year (speed)
    planetData[2][3] = 0.0; // initial planet position
    
    planetData[3][0] = 38;  // planet diameter
    planetData[3][1] = 100; // planet orbit radius
    planetData[3][2] = 365; // number of days per year (speed)
    planetData[3][3] = 0.0; // initial planet position

    planetData[4][0] = 25;  // planet diameter
    planetData[4][1] = 130; // planet orbit radius
    planetData[4][2] = 687; // number of days per year (speed)
    planetData[4][3] = 0.0; // initial planet position
    
    planetData[5][0] = 80;  // planet diameter
    planetData[5][1] = 170; // planet orbit radius
    planetData[5][2] = 4331; // number of days per year (speed)
    planetData[5][3] = 0.0; // initial planet position
    
    planetData[6][0] = 60;  // planet diameter
    planetData[6][1] = 220; // planet orbit radius
    planetData[6][2] = 10747; // number of days per year (speed)
    planetData[6][3] = 0.0; // initial planet position
    
    planetData[7][0] = 45;  // planet diameter
    planetData[7][1] = 260; // planet orbit radius
    planetData[7][2] = 30589; // number of days per year (speed)
    planetData[7][3] = 0.0; // initial planet position
    
    planetData[8][0] = 45;  // planet diameter
    planetData[8][1] = 300; // planet orbit radius
    planetData[8][2] = 59800; // number of days per year (speed)
    planetData[8][3] = 0.0; // initial planet position


}

void draw(){
    background(0);
    fill( #ffff99);
    image(im[0], center - 35, center - 35, 70, 70);
   
    
    for(int i = 1; i < 9; i ++){
         stroke(55);
         noFill();
         
         ellipse(center, center, planetData[i][1] * 2, planetData[i][1] * 2);
         fill(planetColor[i]);
         float x = center + cos(planetData[i][3]) * (planetData[i][1]);
         float y = center + sin(planetData[i][3]) * (planetData[i][1]);
         image(im[i], x - planetData[i][0]/2, y - planetData[i][0]/2, planetData[i][0],planetData[i][0]);
         //ellipse(x,y,planetData[i][0],planetData[i][0]);
         planetData[i][3] += baseSpeed/planetData[i][2];
         
    }
}