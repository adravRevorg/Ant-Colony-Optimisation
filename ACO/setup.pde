void setup(){
  size(1400,700);
  background(0);
  stroke(255);
  
  textSize(24);
  init();
  
}

void init(){
  x = new PVector[N];
  v = new PVector[N];
  
  nest = new PVector(width/2,height/2);
  for(int i=0;i<n_food; i++){
    food[i] = new PVector(random(width),random(height));
    phero[i] = 1.0/n_food;
  }
  
  trailNo = new int[N];
}
