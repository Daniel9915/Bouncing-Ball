float sizeX = 650;                     // Firkant
float sizeY = 550;                     
float shrink = 0.5;

float ellipseX = 500;                  // Cirkel
float ellipseY = 400;
float speedX = 3;                      // Cirkel hastighed
float speedY = 3;

float color1 = 255;                    // Disco
float color2 = 0;                      //
float color3 = 0;                      //




void setup(){
 size(800,800); 
rectMode(CENTER);                       // rectMode sat til center så firkanten bliver i midten når den bliver mindre

}

void draw(){
clear();


noFill();                               // Laver firkanten
stroke(255);                            //
strokeWeight(5);                        //
rect(400,400, sizeX,sizeY);             //

strokeWeight(2);                        // Laver cirklen
stroke(color1,color2,color3);           //
ellipse(ellipseX, ellipseY ,15,15);     // 

ellipseX = ellipseX + speedX;           // Får bolden til at bevæge sig
ellipseY = ellipseY + speedY;           //


if(sizeX >= 1){
sizeX = sizeX - shrink;                 // Gør firkanten mindre
}else{
  push();                               // Disco
  translate(400,400);
  textSize(30);
  fill(color1,color2,color3);
  text("disco",random(-50,50),random(-50,50));
  pop();
}
if(sizeY >= 1){
sizeY = sizeY - shrink;                 // Gør firkanten mindre
}
                
  
  
  if(ellipseX >= (width/2 + sizeX/2)){              // Får boldens X koordinater til at blive positiv/negativ hvis, 
  speedX = -abs(speedX);                            // den går ud for firkantens rammer.
  color1 = random(0,255);                           // Disco
  color2 = random(0,255);                           
  color3 = random(0,255);                           
  }                                                 
  else if( ellipseX <= (width/2 - sizeX/2) ){       
  speedX = abs(speedX); 
  color1 = random(0,255);                           // Disco
  color2 = random(0,255);
  color3 = random(0,255);
  }                                                 
  
  if(ellipseY >= (height/2 + sizeY/2)){             // Samme med Y koordinater
  speedY = -abs(speedY);
  color1 = random(0,255);                           // Disco
  color2 = random(0,255);
  color3 = random(0,255);
  } 
  else if( ellipseY <= (400 - sizeY/2) ){
  speedY = abs(speedY);
  color1 = random(0,255);                           // Disco
  color2 = random(0,255);
  color3 = random(0,255);
  }
    
  
}
