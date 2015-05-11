PImage base;
PImage roadcross;
PImage roaddownleft;
PImage roaddownright;
PImage roadright;
PImage roadtdownleft;
PImage roadtdownright;
PImage roadtupleft;
PImage roadtupright;
PImage roadup;
PImage roadupleft;
PImage roadupright;
PImage Npc;
PImage Npcbike;
PImage Npccar;
PImage Npcbike2;
PImage Npccar2;
PImage blockinv;
Table names;
PImage basichouse;
PImage level2house;
PImage park;
PImage level3house;
PImage park2;
PImage park3;
PImage shop1;
PImage shop2;
PImage hospital;
PImage police;
PImage fireD;
PImage bus;
PImage menu;

Shoptiles Shoptile1;
Shoptiles Shoptile2;
Shoptiles Shoptile3;
Shoptiles Shoptile4;
Shoptiles Shoptile5;
Shoptiles Shoptile6;
Shoptiles Shoptile7;
Shoptiles Shoptile8;
Shoptiles Shoptile9;
Shoptiles Shoptile10;
Shoptiles Shoptile11;

Shoptiles Shoptile12;
Shoptiles Shoptile13;
Shoptiles Shoptile14;
Shoptiles Shoptile15;
Shoptiles Shoptile16;
Shoptiles Shoptile17;
Shoptiles Shoptile18;
Shoptiles Shoptile19;
Shoptiles Shoptile20;
Shoptiles Shoptile21;
Shoptiles Shoptile22;

Block[] myBlock;
Npc[] myNpc;

int count = 0;
int xl = 0;
int yl = 0;
int bx = 0;
int by = 0;
String mouse = "null";
int funds = 500;
int currentprice;
String hud = "hud";
int population = 1;
int populationmax = 10000;
int j = 0;
int tax = 1;
float daymet;
float happiness;
int vacancies = 1;
int room;
int jobs = 4;
float numberofparks = 0;
int priceindex;
String screen = "menu";
float []  [] npclocations = new float[populationmax] [2];
float [] npcblocks = new float[populationmax];
float [] shopprices = new float[12];
float [] [] blockslocs = new float[225] [2];
String [] blockthings = new String[225];
float busx = 600-40;
float busy = 20;
boolean newperson = false;
float i = 0;
int tickcount = 0;




void setup(){
  
  size(800,600);
  frame.setIconImage( getToolkit().getImage("calc.png") );
  names = loadTable("names.csv", "header");
  base = loadImage("base.png");
  Npc = loadImage("npc.png");
  Npcbike = loadImage("npcbike.png");
  Npccar = loadImage("npccar.png");
  Npcbike2 = loadImage("npcbike2.png");
  Npccar2 = loadImage("npccar2.png");
  roadcross = loadImage("roadcross.png");
  roadtdownleft = loadImage("roadtdownleft.png");
  roaddownright = loadImage("roaddownright.png");
  roadright = loadImage("roadright.png");
  roaddownleft = loadImage("roaddownleft.png");
  roadtdownright = loadImage("roadtdownright.png");
  roadtupleft = loadImage("roadtupleft.png");
  roadtupright = loadImage("roadtupright.png");
  roadup = loadImage("roadup.png");
  roadupleft = loadImage("roadupleft.png");
  roadupright = loadImage("roadupright.png");
  blockinv = loadImage("blockinv.png");
  basichouse = loadImage("basichouse.png");
  level2house = loadImage("level2house.png");
  park = loadImage("park.png");
  park2 = loadImage("park2.png");
    park3 = loadImage("park3.png");
  shop1 = loadImage("shop1.png");
  shop2 = loadImage("shop2.png");
  hospital = loadImage("hospital.png");
  police = loadImage("police.png");
  fireD = loadImage("fireD.png");
  level3house = loadImage("level3house.png");
  bus = loadImage("bus.png");
  menu = loadImage("menu.png");

shopprices[0] = 100;
shopprices[1] = 500;
shopprices[2] = 1000;
shopprices[3] = 2000;
shopprices[4] = 1000;
shopprices[5] = 3000;
shopprices[6] = 5000;
shopprices[7] = 3500;
shopprices[8] = 5000;
shopprices[9] = 6000;
shopprices[10] = 6000;
shopprices[11] = 6000;

  Shoptile1 = new Shoptiles(610,0,0,"roadup","null","null","Road");
  Shoptile2 = new Shoptiles(610,40,0,"roadright","null","null","Road");
  Shoptile3 = new Shoptiles(610,80,0,"roaddownleft","null","null","Road");
  Shoptile4 = new Shoptiles(610,120,0,"roaddownright","null","null","Road");
  Shoptile5 = new Shoptiles(610,160,0,"roadupleft","null","null","Road");
  Shoptile6 = new Shoptiles(610,200,0,"roadupright","null","null","Road");
  Shoptile7 = new Shoptiles(610,240,0,"roadcross","null","null","Road");
  Shoptile8 = new Shoptiles(610,280,0,"roadtdownleft","null","null","Road");
  Shoptile9 = new Shoptiles(610,320,0,"roadtdownright","null","null","Road");
  Shoptile10 = new Shoptiles(610,360,0,"roadtupleft","null","null","Road");
  Shoptile11 = new Shoptiles(610,400,0,"roadtupright","null","null","Road");
  
  Shoptile12 = new Shoptiles(610,0,1,"basichouse","+ 4 room","null","Level1: House");
  Shoptile13 = new Shoptiles(610,40,2,"level2house","+ 6 room","null","Level2: House");
  Shoptile14 = new Shoptiles(610,80,3,"level3house","+ 20 room","null","Level3: House");
  Shoptile15 = new Shoptiles(610,120,4,"park","+ happiness","+ 1 Job","Level1: Park");
  Shoptile16 = new Shoptiles(610,160,5,"park2","+ happiness","+ 2 Jobs","Level2: Park");
  Shoptile17 = new Shoptiles(610,200,6,"park3","+ happiness","+ 3 Jobs","Level3: Park");
  Shoptile18 = new Shoptiles(610,240,7,"shop1","+ happiness","+ 5 Jobs","Level1: Shop");
  Shoptile19 = new Shoptiles(610,280,8,"shop2","+ happiness","+ 20 Jobs","Level2: Shop");
  Shoptile20 = new Shoptiles(610,320,9,"hospital","+ happiness","+ 10 Jobs","Hospital");
  Shoptile21 = new Shoptiles(610,360,10,"police","+ happiness","+ 10 Jobs","Police- Dept");
  Shoptile22 = new Shoptiles(610,400,11,"fireD","+ happiness","+ 10 Jobs","Fire- Dept");

    
  myBlock = new Block[225];
  myNpc = new Npc[populationmax];
 
            for (int i = 0; i < 225; i++) {
                myBlock[i] = new Block(bx,by,i);
                bx = bx+40;
                if(bx >= 600){
                  bx = 0;
                  by = by + 40;
                }
            }
            for (int i = 0; i < population+1000; i++) {
                myNpc[i] = new Npc(i);
            }
            
}

void draw(){
  if(screen == "menu"){
    background(menu);
    fill(255);
    rect(300,250,200,100);
    if(mouseX > 300 && mouseX < 500 && mouseY > 250 && mouseY < 350){
      fill(0);
    rect(300,250,200,100);
    if(mousePressed == true && mouseButton == LEFT){
      
      screen = "play";
      
        count = 0;
  xl = 0;
  yl = 0;
  bx = 0;
  by = 0;
  mouse = "null";
  funds = 500;
  hud = "hud";
  population = 1;
  populationmax = 10000;
  j = 0;
  tax = 1;
  vacancies = 1;
  jobs = 4;
  numberofparks = 0;
  busx = 600-40;
  busy = 20;
  newperson = false;
  i = 0;
  tickcount = 0;

      
      
    }
    
    }
    
  }
  
  
    if(screen == "play"){
if(population > vacancies || population > jobs){
  population = population - 1;
}

    if(population < jobs && happiness > 80 && population < room){
      newperson = true;
      // print("hi");
      if(keyPressed == true && key == 'a'){
      print("yes!");
      }
    }
    // println(happiness);
    image(bus,busx,busy);
  if(newperson == true){
    i = 0;
    if(busx > 290 && busx < 306){
      population = population + 1;
      newperson = false;
      i=i+0.1;
      // println(i);
      if(i == 999999999){
        busx = busx - 5;
      }else{
        busx = busx + 0.1;
        busx = busx - 0.1;
      }
    }else{
      busx = busx - 5;
    }
  }
  if(newperson == false){
    busx = busx - 5;
  }
    
    
    
  background(base);
  
  if(numberofparks > 0){
  happiness = ((100-tax)+(100*numberofparks))/(numberofparks + 1);
  }else{
    happiness = (100-tax);
  }
  // +100)/2
  if(daymet >= 129){
   if(happiness < 45 && population > 11){
     population = population - 10;
   }
    daymet = 0; 
   funds = funds + (tax*population);
  }
  if(keyPressed == true && key == ';'){
    daymet = daymet +5;
  }else{
  daymet = daymet +0.1;
  }
  tickcount = tickcount + 1;
  
  if(tickcount == 100){
   if(happiness < 45 && population > 1){
     population = population - 1;
   }
    
    tickcount = 0;
  }

if(hud == "roads" || hud == "houses"){
fill(255,0,0);
  rect(605,450,187,58);
  fill(255,255,255);
  textSize(49);
  text("cancel",620,497);
  if(mouseX > 605 && mouseX < 605+187 && mouseY > 450 && mouseY < 450+58){
    fill(216,25,25);
  rect(605,450,187,58);
  fill(222,214,214);
  textSize(49);
  text("cancel",620,497);
  if( mousePressed == true && mouseButton == LEFT){
  mouse = "null";
  }
  }
}
if(hud == "roads" || hud == "houses"){
  fill(255,0,0);
  rect(605,508,187,58);
  fill(255,255,255);
  textSize(49);
  text("Back",642,556);
  if(mouseX > 605 && mouseX < 605+187 && mouseY > 508 && mouseY < 508+58){
    fill(216,25,25);
  rect(605,508,187,58);
  fill(222,214,214);
  textSize(49);
  text("Back",642,556);
  if( mousePressed == true && mouseButton == LEFT){
  hud = "hud";
  }
  }
}
  if(hud == "hud"){
  fill(0,255,0);
  rect(605,0,187,83);
  fill(255,255,255);
  textSize(49);
  text("ROADS",615,61);
  if(mouseX > 605 && mouseX < 605+187 && mouseY > 0 && mouseY < 0+83){
    fill(25,216,25);
  rect(605,0,187,83);
  fill(222,214,214);
  textSize(49);
  text("ROADS",615,61);
  if( mousePressed == true && mouseButton == LEFT){
  hud = "roads";
  }
  }
  textSize(17);
  fill(0,0,0);
  text("Taxes",670,523);
  fill(255);
  rect(634,527,129,15);
  rect(605,524,21,21);
  rect(771,524,21,21);
  textSize(30);
  fill(0,0,0);
  text("-",607,543);
  text("+",769,543);
  
  if(mouseX > 605 && mouseX < 605+21 && mouseY > 524 && mouseY < 524+21){
  fill(0);
  rect(605,524,21,21);
  fill(255);
  textSize(30);
  text("-",607,543);
  if( mousePressed == true && mouseButton == LEFT && tax > 0){
  tax = tax - 1;
  }
  }
  
  if(mouseX > 771 && mouseX < 771+21 && mouseY > 524 && mouseY < 524+21){
  fill(0);
  rect(771,524,21,21);
  fill(255);
  textSize(30);
  text("+",769,543);
  if( mousePressed == true && mouseButton == LEFT && tax < 100){
  tax = tax + 1;
  }
  }
  fill(0,0,255);
  float thatthingineednow = ((tax*100)/77);
  rect(634,527,thatthingineednow,15);
  // println(thatthingineednow);
  fill(0);
  textSize(14);
  text("Money per day: $"+ (tax*population),605,574);
  
  fill(255);
  rect(634,491,129,15);
  fill(0);
  rect(634,491,daymet,15);
  textSize(17);
  fill(0,0,0);
  text("Day",681,483);
  
  fill(255);
  rect(634,452,129,15);
  fill(255,0,0);
  float happiness2 = (happiness*129)/100;
  rect(634,452,happiness2,15);
  textSize(17);
  fill(0,0,0);
  text("Citizen Happiness",624,446);
  
  fill(255);
  rect(634,364,129,15);
  fill(255,0,0);
  rect(634,364,(population * 129/ vacancies),15);
  textSize(14);
  fill(0,0,0);
  text("City Fullness",646,353);
  if(vacancies > 1){
    text("Room for "+vacancies+" people",606,260);
  }else{
    text("Room for "+vacancies+" person",606,260);
  }
  
  if(population < jobs){
    
  if((jobs-population) > 1){
    text("Jobs for "+(jobs-population)+" people",610,296);
  }else{
    text("Jobs for "+(jobs-population)+" person",610,296);
  } 
  int gfcvbhygfvbnhytgvbn = 0;
  }
  
  
  text("population: "+population,606,242);
  room = vacancies-population;
  textSize(14);
  if(room == 1){
    text("Room for "+room+" more person",606,277);
  }else{
    text("Room for "+room+" more people",606,277);    
  }
  
  
  
  
    fill(255);
  rect(634,407,129,15);
  fill(255,0,0);
  rect(634,407,(population * 129/ jobs),15);
  textSize(17);
  fill(0,0,0);
  text("Job Fullness",650,400);
  
  
  
  
  
    fill(0,255,0);
  rect(605,85,187,83);
  fill(255,255,255);
  textSize(49);
  text("HOUSES",604,140);
  if(mouseX > 605 && mouseX < 605+187 && mouseY > 85 && mouseY < 85+83){
    fill(25,216,25);
  rect(605,85,187,83);
  fill(222,214,214);
  textSize(49);
  text("HOUSES",604,140);
  if( mousePressed == true && mouseButton == LEFT){
  hud = "houses";
  }
  }
  
  
  
  
 
  }


  if(hud == "roads"){
    Shoptile1.run();
    Shoptile2.run();
    Shoptile3.run();
    Shoptile4.run();
    Shoptile5.run();
    Shoptile6.run();
    Shoptile7.run();
    Shoptile8.run();
    Shoptile9.run();
    Shoptile10.run();
    Shoptile11.run();
  }
  if(hud == "houses"){
    Shoptile12.run();
    Shoptile13.run();
    Shoptile14.run();
    Shoptile15.run();
    Shoptile16.run();
    Shoptile17.run();
    Shoptile18.run();
    Shoptile19.run();
    Shoptile20.run();
    Shoptile21.run();
    Shoptile22.run();
  }
    for (int i = 0; i < 225; i++) {
      myBlock[i].run();
  }
  for (int i = 0; i < population; i++) {
      myNpc[i].run();
  }

  textSize(14);
  fill(0);
  text("Money: $" + funds,605,594);
    image(bus,busx,busy);
  busx = busx - 1;
  if(busx < -50){
    busx = 600-40;
  }
  // println(blockthings[0]);
  }
}
