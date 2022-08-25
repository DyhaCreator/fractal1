ArrayList<PVector>a = new ArrayList();
float speed,eng,h,hsp;
void setup(){
  size(500,500);
  frameRate(100);
  noFill();
  stroke(255);
  speed=0.0001;
  eng=0;
  h=0;
  hsp=1;
}
void draw(){
  h+=hsp;
  //println(h);
  background(0);
  while(eng<TWO_PI){
  circ(width/2,height/2,200,PI+eng);
  eng+=speed;}
  beginShape();
    for(int i=0;i<a.size();i++){
      vertex(a.get(i).x,a.get(i).y);
    }
  endShape();
  if((h-1)%100==0){delay(1000);}
  eng=0;
  int j=a.size();
  for(int i=0;i<j;i++){
    a.remove(a.size()-1);
  }
}
void circ(float x, float y, float size,float engle){
  int m=3;
  //circle(x,y,size);
  if(size>1){
    circ(size/2*sin(engle)+x,size/2*cos(engle)+y,size/m,-engle*h/100);
  }
  else{
    a.add(new PVector(x,y));
  }
}
