class Block {
 //variables here
 int x;
 int y;
 boolean inv = false;
 String thing = "null";
 int blocknum;
 Block(int _x, int _y, int num){
 //stuff that allways happens
 x = _x;
 y = _y;
 blocknum = num;
 }
  void run(){
    if(blocknum == 0||blocknum == 2||blocknum == 3||blocknum == 4||blocknum == 5||blocknum == 6||blocknum == 7||blocknum == 8||blocknum == 9||blocknum == 10||blocknum == 11||blocknum == 12||blocknum == 13||blocknum == 14||blocknum == 1){
      thing = "roadright";
    }
    //stuff that only happens when (__.run();)void draw stuff here
    // if(mousePressed == true && mouseButton == LEFT){
      if(mouseX > x && mouseX < x+40 && mouseY > y && mouseY < y+40 && mousePressed == true && mouseButton == LEFT && thing == "null" && funds >= currentprice){
      thing = mouse;
      funds = funds - currentprice;
      shopprices[priceindex] = shopprices[priceindex] + (10000/shopprices[priceindex]);
      // mouse = "null";
      if(mouse == "basichouse"){
        vacancies = vacancies + 4;
      }
      if(mouse == "level2house"){
        vacancies = vacancies + 6;
      }
      if(mouse == "park"){
        numberofparks = numberofparks + 0.01;
        jobs = jobs + 1;
      }
      if(mouse == "level3house"){
        vacancies = vacancies + 20;
      }
      if(mouse == "park2"){
        numberofparks = numberofparks + 0.02;
        jobs = jobs + 1;
      }
      if(mouse == "park3"){
        numberofparks = numberofparks + 0.1;
        jobs = jobs + 3;
      }
      if(mouse == "shop1"){
        numberofparks = numberofparks + 0.01;
        jobs = jobs + 5;
      }
      if(mouse == "shop2"){
        numberofparks = numberofparks + 0.01;
        jobs = jobs + 20;
      }
      if(mouse == "hospital"){
        numberofparks = numberofparks + 0.1;
        jobs = jobs + 10;
      }
      if(mouse == "police"){
        numberofparks = numberofparks + 0.1;
        jobs = jobs + 10;
      }
      if(mouse == "fireD"){
        numberofparks = numberofparks + 0.1;
        jobs = jobs + 10;
      }
      } //<>//
          if(mouseX > x && mouseX < x+40 && mouseY > y && mouseY < y+40 && mousePressed == true && mouseButton == RIGHT &&  funds >= 50 && thing != "null"){
      funds = funds - 50;
      
      if(thing == "basichouse"){
        vacancies = vacancies - 4;
      }
      if(thing == "level2house"){
        vacancies = vacancies - 6;
      }
      if(thing == "park"){
        numberofparks = numberofparks - 0.01;
        jobs = jobs - 1;
      }
      if(thing == "level3house"){
        vacancies = vacancies - 20;
      }
      if(thing == "park2"){
        numberofparks = numberofparks - 0.02;
        jobs = jobs - 1;
      }
      if(thing == "park3"){
        numberofparks = numberofparks - 0.1;
        jobs = jobs - 3;
      }
      if(thing == "shop1"){
        numberofparks = numberofparks - 0.01;
        jobs = jobs - 5;
      }
      if(thing == "shop2"){
        numberofparks = numberofparks - 0.01;
        jobs = jobs - 20;
      }
      if(thing == "hospital"){
        numberofparks = numberofparks - 0.1;
        jobs = jobs - 10;
      }
      if(thing == "police"){
        numberofparks = numberofparks - 0.1;
        jobs = jobs - 10;
      }
      if(thing == "fireD"){
        numberofparks = numberofparks - 0.1;
        jobs = jobs - 10;
      }

      
      
      
      
      
      
      
      
      
      thing = "null";
    }
    if(mouse == "null"){
    }else{
    
   
    }
    if(thing == "roadcross"){
     image(roadcross,x,y); 
    }
    if(thing == "roaddownleft"){
     image(roaddownleft,x,y); 
    }
    if(thing == "roaddownright"){
     image(roaddownright,x,y); 
    }
    if(thing == "roadright"){
     image(roadright,x,y); 
    }
    if(thing == "roadtdownleft"){
     image(roadtdownleft,x,y); 
    }
    if(thing == "roadtdownright"){
     image(roadtdownright,x,y); 
    }
    if(thing == "roadtupleft"){
     image(roadtupleft,x,y); 
    }
    if(thing == "roadtupright"){
     image(roadtupright,x,y); 
    }
    if(thing == "roadup"){
     image(roadup,x,y); 
    }
    if(thing == "roadupleft"){
     image(roadupleft,x,y); 
    }
    if(thing == "roadupright"){
     image(roadupright,x,y); 
    }
    if(thing == "basichouse"){
     image(basichouse,x,y); 
    }
    if(thing == "level2house"){
     image(level2house,x,y); 
    }
    if(thing == "park"){
     image(park,x,y); 
    }
    if(thing == "park2"){
     image(park2,x,y); 
    }
    if(thing == "park3"){
     image(park3,x,y); 
    }
    if(thing == "level3house"){
     image(level3house,x,y); 
    }
    if(thing == "shop1"){
     image(shop1,x,y); 
    }
    if(thing == "shop2"){
     image(shop2,x,y); 
    }
    if(thing == "hospital"){
     image(hospital,x,y); 
    }
    if(thing == "police"){
     image(police,x,y); 
    }
    if(thing == "fireD"){
     image(fireD,x,y); 
    }
    if(mouse == "roadcross"){
     image(roadcross,mouseX,mouseY); 
    }
    if(mouse == "roaddownleft"){
     image(roaddownleft,mouseX,mouseY); 
    }
    if(mouse == "roaddownright"){
     image(roaddownright,mouseX,mouseY); 
    }
    if(mouse == "roadright"){
     image(roadright,mouseX,mouseY); 
    }
    if(mouse == "roadtdownleft"){
     image(roadtdownleft,mouseX,mouseY); 
    }
    if(mouse == "roadtdownright"){
     image(roadtdownright,mouseX,mouseY); 
    }
    if(mouse == "roadtupleft"){
     image(roadtupleft,mouseX,mouseY); 
    }
    if(mouse == "roadtupright"){
     image(roadtupright,mouseX,mouseY); 
    }
    if(mouse == "roadup"){
     image(roadup,mouseX,mouseY); 
    }
    if(mouse == "roadupleft"){
     image(roadupleft,mouseX,mouseY); 
    }
    if(mouse == "roadupright"){
     image(roadupright,mouseX,mouseY); 
    }
    if(mouse == "basichouse"){
     image(basichouse,mouseX,mouseY); 
    }
    if(mouse == "level2house"){
     image(level2house,mouseX,mouseY); 
    }
    if(mouse == "park"){
     image(park,mouseX,mouseY); 
    }
    if(mouse == "park2"){
     image(park2,mouseX,mouseY); 
    }
    if(mouse == "park3"){
     image(park3,mouseX,mouseY); 
    }
    if(mouse == "level3house"){
     image(level3house,mouseX,mouseY); 
    }
    if(mouse == "shop1"){
     image(shop1,mouseX,mouseY); 
    }
    if(mouse == "shop2"){
     image(shop2,mouseX,mouseY); 
    }
    if(mouse == "hospital"){
     image(hospital,mouseX,mouseY); 
    }
    if(mouse == "police"){
     image(police,mouseX,mouseY); 
    }
    if(mouse == "fireD"){
     image(fireD,mouseX,mouseY); 
    }

    blockslocs[blocknum] [0] = x;
    blockslocs[blocknum] [1] = y;
    
    
if(keyPressed == true && key == 'a'){
  
}
blockthings[blocknum] = thing;
if(mouseX > x && mouseX < x+40 && mouseY > y && mouseY < y+40 && mousePressed == true && mouseButton == LEFT && funds <= currentprice){
   fill(252,4,33);
   textSize(50);
   text("Not Enough Money",71,298); 
  }
  }
}
