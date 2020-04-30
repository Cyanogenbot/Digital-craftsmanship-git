int stops = 100;
float dt = 2*PI/stops;
int multi =  10;
float xp;
float yp;

void setup(){
  noLoop();
  strokeWeight(5);
  background(255);
  stroke(0,0,255);
  strokeWeight(5);
  size(1000,1000);
}
void draw(){ 
spiral(0);
spiral(3);
spiral(1.5f);
spiral(4.5f);
} 

void spiral(float off){
 
  for (int i=0; i<stops;i++){
  float t = i * dt + off;
  float x = multi *i * cos(t)+width/2;
  float y = multi* i * sin(t)+height/2;
  if (x<1){
  xp = multi *i * cos(t)+width/2;
  yp = multi* i * sin(t)+height/2;}
  line(x,y,width/2,height/2);
  line(x,y,xp,yp);
  xp = x;
  yp = y;
  
  stroke(0);
  point(x,y);
  
  fill(0,0,255,i*3);
  
  
}}
