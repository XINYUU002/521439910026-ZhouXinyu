void setup(){
size(1000,1000);
background(0);
fill(207,212,104);
rect(50,5,70,50);
fill(7,85,58);
rect(50,75,70,50);
}
void draw(){

}
void mouseDragged(){
strokeWeight(10);
line(mouseX,mouseY,pmouseX,pmouseY);
}
void mouseClicked()
{
    if(mouseX > 50 && mouseX < 120 && mouseY > 5 && mouseY < 55 )
  {
  line(mouseX,mouseY,pmouseX,pmouseY);
 

  stroke(207,212,104);
  }
 else if(mouseX > 50 && mouseX < 120&& mouseY >75&& mouseY < 105)
  {
    line(mouseX,mouseY,pmouseX,pmouseY);
  stroke(7,85,58);
  }
 else   
  {
   stroke(255);
  line(mouseX,mouseY,pmouseX,pmouseY);
    
}
  }
