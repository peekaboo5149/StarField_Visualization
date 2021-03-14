class Star{
  float x,y,z,pz;
  Star(){
      this.x = random(-width,width);
      this.y = random(-height,height);
      this.z =random(width);
      this.pz = z;
  }
    
   void update(){
     z = z - speed;
     if(z<1){
       z = random(width);
        x = random(-width,width);
      y = random(-height,height);
      pz = z;
     }
   }
   
   void show(){
     fill(255);
     noStroke();
       
      float sx = map(x/z,0,1,0,width);
      float sy = map(y/z,0,1,0,width);
       
      float size = map(z,0,width,16,0);
     
     //ellipse(sx,sy,size,size); 
      
     float px = map(x/pz,0,1,0,width);
     float py = map(y/pz,0,1,0,width);
     
     pz = z;
     
     stroke(255);
     line(px,py,sx,sy);
   }
  
}
