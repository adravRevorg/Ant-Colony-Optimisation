void spawnAnts(){
  for(int i=0; i<addRate && n<N; i++,n++){
    x[n] = nest.copy();
    v[n] = new PVector(0,0);//PVector.sub(food[i%n_food],nest);
  }
}

void updateAnts(){
  
  calculateProbability();
  
  
  for(int i=0; i<n; i++){
    
    //at nest case
    if (equal(nest,x[i]) ){
          
      if (isZero(v[i])){ //that is starting case
          
          trailNo[i] = i%n_food;
          v[i] = PVector.sub(food[trailNo[i]],nest);
          phero[trailNo[i]]+=pheroInc;
      }
      else{
           
          float rnd_path = random(1);
          float tmp_sum = 0;
          for(int j=0; j<n_food; j++){
            
            if (tmp_sum<=rnd_path && rnd_path<=(tmp_sum+pathProb[j])){
                v[i] = PVector.sub(food[j],nest);
                trailNo[i] = j;
                break;
            }
            tmp_sum+=pathProb[j];
          }
      }
    }
    
    else if (atAnyFoodSource(i)){
          //the function will itself take care of the changes
    }
    
        
    PVector tmp = v[i].normalize();
    x[i].add(PVector.mult(tmp,random(0,0.5)*h));
    
    
          
  }
}

boolean equal(PVector v1, PVector v2){
  return (abs(v1.x-v2.x)<10 && abs(v1.y-v2.y)<10);
}

boolean isZero(PVector v){
  return (v.x==0 && v.y==0);
}

boolean atAnyFoodSource(int i){
  for(int j=0; j<n_food; j++){
    if (equal(food[j],x[i]))  {
      v[i] = PVector.sub(nest,x[i]);
      phero[j]+=pheroInc/dist(x[i].x,x[i].y,nest.x,nest.y);
      return true;
    }
  }
  return false;
}


void evaporatePheromones(){
  
  for(int i=0; i<n_food; i++)
    phero[i] = max(0.0,(1-pheroDec)*phero[i]);
    
}


void calculateProbability(){
  
  float total = 0;
  for(int i=0; i<n_food; i++)
    total+=phero[i];
 
  for(int i=0; i<n_food; i++)
    pathProb[i] = phero[i]/total;
}
  
      
