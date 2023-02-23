

int N = 2000;  //no of ants
int n=0;
int addRate = 100;

//Ants' state
PVector[] x;
PVector[] v;
boolean[] hasFood;
int[] trailNo;




//Environment Stuff

PVector nest;      //start point of ants
float nestRadius = 20, foodRadius = 20;

int n_food = 12;    //no of food sources
PVector[] food = new PVector[n_food];      //location of food sources
float[] phero = new float[n_food];         //pheromone on this path     
int[] onThisTrail = new int[n_food];       //no of ants on this path
float[] pathProb = new float[n_food];      //probability of this path being chosen

float pheroInc = 0.4;                       // amount of phero increase
float pheroDec = 0.1;                    //amount of pheromone decrease

PVector zero = new PVector(0,0);

float h = 10;                              //timestep
