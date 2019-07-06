class Walker{
  
  PVector location;
  PVector direction;
  //PVector log;
  ArrayList<PVector> log;
  
  Walker(){

    int x = ((int)random(0, width) / 30) * 30;
    int y = ((int)random(0, height) / 30) * 30;
    this.location = new PVector(x, y);
    
    log = new ArrayList<PVector>();
  }
  
  void update(){
    
    if(frameCount % 10 == 1){
      
      int r = (int)random(0, 4);
        switch(r){
          case 0:
            this.direction = new PVector(10, 0);
            break;
          case 1:
            this.direction = new PVector(-10, 0);
            break;
          case 2:
            this.direction = new PVector(0, 10);
            break;
          case 3:
            this.direction = new PVector(0, -10);
            break;
        }
    }
    
    this.location.add(this.direction);
    
    if(this.location.x < 0){
     
      this.location.x = width;
    }else if(this.location.x > width){
     
      this.location.x = 0;
    }
    
    if(this.location.y < 0){
     
      this.location.y = height;
    }else if(this.location.y > height){
     
      this.location.y =  0;
    }
    
    this.log.add(this.location.copy());
    if(log.size() > 10){
     
      this.log.remove(0);
    }
  }
  
  void display(){
   
    for(int i = 1;i < this.log.size(); i++){
     
      line(this.log.get(i - 1).x, this.log.get(i - 1).y, this.log.get(i).x, this.log.get(i).y); 
    }
  }
}
