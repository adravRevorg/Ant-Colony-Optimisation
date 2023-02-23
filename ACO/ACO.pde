/*Ant colony optimization
(Will write explanation of rules later)

We will have ants released from same nest

Multiple paths to food sources, probability of each would would be equal to begin with
Later, it would be based on the pheromone in that path


Each ant would have following current states :

- at nest
  1. if just spawned : (Condition would be : doesnt have food, and velocity = 0)
                    so, should choose either of the many paths to food with equal probability
  2. if at nest, but have been in the system  : velocity!=0
                    choose path as per pheromone weighted probability
- along a path 
  simply keep moving as per velocity
  
- at food source :
  pick some food, bring it back to source, and increase pheromone along the way
  
- evaporate some pheromone at regular gaps

*/
