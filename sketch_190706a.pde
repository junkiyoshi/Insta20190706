int numberOfWalker = 30;
Walker[] walkers = new Walker[numberOfWalker];

void setup(){
 
  size(720, 720);
  frameRate(60);
  stroke(39);
  strokeWeight(2);
    
  for(int i = 0; i < numberOfWalker; i++){
    
    walkers[i] = new Walker();
  }
}


void draw(){

  background(239);
  
  for(int i = 0; i < numberOfWalker; i++){
    
    walkers[i].update();
    walkers[i].display();
  }
}
