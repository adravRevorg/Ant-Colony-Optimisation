void draw(){
  
  
  drawEnv();
  
  fill(255);
  text("Basic Ant Colony Optimization", 20,20); 
  drawAnts();
  spawnAnts();
  updateAnts();
  
  if (frameCount%10==0)
    evaporatePheromones();
  
  //saveFrame("frames/####.tga");
  
}

void drawEnv(){
  
  background(0);
  //draw nest
  fill(255);
  circle(nest.x,nest.y, nestRadius);
  noFill();
  for(int i=0; i<n_food; i++){
    fill(40*(i+4),0,0);
    circle(food[i].x, food[i].y, foodRadius);
}
  
}

void drawAnts(){
  stroke(255);strokeWeight(3);
  for(int i=0; i<n; i++)
    point(x[i].x,x[i].y);
}
  
