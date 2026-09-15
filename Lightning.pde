ArrayList<Integer> coords = new ArrayList<Integer>(); 
int x = 200; 
int y = 0; 

void setup() { 
  size(400, 400); 
  background(0, 0, 30); 
  strokeWeight(7.5); // 7.5*400~53 
  frameRate(125); 
} 

void draw() { 
  
  if (y <= 500) {
    
    noStroke(); 
    fill(0, 0, 30, 10); 
    rect(0, 0, 400, 400); 
    
    int x1 = (int)(Math.random() * 71) - 35; 
    int y1 = (int)(Math.random() * 41); 
    
    int stroke = (400 - y) / 53; 
    if (stroke <= 0) {
      stroke = 1; 
    }
    
    stroke((int)(Math.random()*20) + 230, (int)(Math.random()*20) + 230, (int)(Math.random()*20) + 230); 
    strokeWeight(stroke); 
    
    line(x, y, x + x1, y + y1); 
    coords.add(x); 
    coords.add(y); 
    coords.add(x + x1); 
    coords.add(y + y1); 
    coords.add(stroke); 
    
    x += x1; 
    y += y1; 
    
  } 
  
  if (y > 500 && coords.size() > 0) {
    
    for (int i = 0; i < coords.size()/4; i++) {
      
      stroke(0, 0, 30); 
      strokeWeight(coords.get(4)); 
      line(coords.get(0), coords.get(1), coords.get(2), coords.get(3)); 
      
      coords.remove(0); 
      coords.remove(0); 
      coords.remove(0); 
      coords.remove(0); 
      coords.remove(0); 
      
    }
    
    background(0, 0, 30); 
    
  }
  
} 

void mousePressed() { 
  x = 200; 
  y = 0; 
  coords.clear(); 
} 
