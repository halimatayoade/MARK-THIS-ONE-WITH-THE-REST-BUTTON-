PImage photo;//for the flash

PImage photography;//for the Quicksliver

int x=0;//for the flash
int y=0;//for the quicksilver

boolean DC = true;
boolean marvel = true;





void setup(){

  size(1920, 1080);//size of the window
  photo = loadImage("flashed-clipart-transparent-background-2.png");//will load the flash pic here
  photography = loadImage("quicksilver_puzzle_quest_2_by_alexiscabo1-da2olai.png");//will load the quicksilver pic here
  
 }
 
 
void draw(){
  background(0);//the canvas colour, will be black
  image(photography,1500,x,209,212);//place of the quicksilver  
  image(photo,200,y,209,212);//place of the flash
    
 
  
  if (x >= 999)//if statement #1
  //Below this comment are the coordinates of where the text will be placed and what size, and what it says and colour
  {
    fill(255);//colour of the text will be white
    textSize(72);//the size is 72
    textAlign(CENTER);//the text will be in the center
    text("Quick Silver Wins!", 960,540);//My string #1
  }
    
  if (y >= 999)//if statement #2
  //Below this comment are the coordinates of where the text will be placed and what size, and what it says and colour
  {
    fill(255);//white text
    textAlign(CENTER);//will be in the center
    textSize(72);//size is 72
    text("Flash Wins!",960,540);//My string #2
  }
  
    fill(255,0,0);//COLOUR OF THE RECTANGLE
    rect(780, 100, 400,100);//SIZE OF THE RECTANGLE FOR THE RESET BUTTON
    
    fill(0);//TEXT COLOUR
    textSize(72);//TEXT SIZE
    text("RESET", 880, 185);//POSITION OF THE TEXT AND ALSO THE TEXT
    
   if (mousePressed)
    {
      setup();
    }
    
    
   
 }
 




void keyPressed(){
  if (key == 'l' || key == 'L'){ //l will control quicksilver
    x = x + 10;
  }
    
  if (key == 'a' || key == 'A'){ //A  will control the flash
    y = y + 10;
  }
    
}
