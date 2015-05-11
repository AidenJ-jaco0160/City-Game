class Npc {

 String [] npcdata = new String[10];
 String names[] = loadStrings("names.csv");
 int r = int(random(names.length-1));
 float npcx = 300-4; //npc xloc
 float npcy = 24; //npc yloc
 float desx = int(random(580));; //destination xloc
 float desy = int(random(580));; //destination yloc
 float npcs; //move speed
 String name;
 int npcnum;
 
 Npc(int num) {
  npcdata[0] = "can"; //canmove
  npcdata[1] = "left"; //move direction
  npcdata[2] = str(npcs); //move speed
  npcdata[3] = names[r]; //npcname
  npcdata[4] = "foot"; //npc transport
  npcdata[5] = str(npcx); //npc xloc
  npcdata[6] = str(npcy); //npc yloc
  npcdata[7] = str(desx); //destination xloc
  npcdata[8] = str(desy); //destination yloc0
  npcnum = num;

 }
 
 void run() {

     if(npcdata[4] == "foot"){
       image(Npc,npcx,npcy);
       fill(0,0,255);
       textSize(10);
       text(names[r],npcx,npcy);
       npcs = 1;
     }
     if(npcdata[4] == "bike"){
       if(npcdata[1] == "up" || npcdata[1] == "down"){ //<>//
       image(Npcbike,npcx,npcy);
       }
       if(npcdata[1] == "left" || npcdata[1] == "right"){
       image(Npcbike2,npcx,npcy);
       }
       npcs = 2;
     }
     if(npcdata[4] == "car"){
       if(npcdata[1] == "up" || npcdata[1] == "down"){
       image(Npccar,npcx,npcy);
       }
       if(npcdata[1] == "left" || npcdata[1] == "right"){
       image(Npccar2,npcx,npcy);
       }
       npcs = 3;
     }
     // if(npcdata[1] == "up"){

    //}
     if(desx > npcx && desy == npcy){
      npcdata[1] = "right"; 
     }
     if(desx < npcx && desy == npcy){
      npcdata[1] = "left"; 
     }
     if(desy < npcy && desx == npcx){
      npcdata[1] = "up"; 
     }
     if(desy > npcy && desx == npcx){
      npcdata[1] = "down"; 
     }     
     if(desy > npcy && desx > npcx){
      npcdata[1] = "downright"; 
     }      
     if(desy > npcy && desx < npcx){
      npcdata[1] = "downleft";  
     }      
     if(desy < npcy && desx > npcx){
      npcdata[1] = "upright"; 
     }      
     if(desy < npcy && desx < npcx){
      npcdata[1] = "upleft"; 
     }
     if(desy == npcy && desx == npcx){
      npcdata[1] = "still";
     }
    
     
     
     
     if(npcdata[0] == "can"){
       if(npcdata[1] == "right"){
         npcx = npcx + npcs;
       }
       if(npcdata[1] == "left"){
         npcx = npcx - npcs;
       }
       if(npcdata[1] == "up"){
         npcy = npcy - npcs;
         
       }
       if(npcdata[1] == "down"){
         npcy = npcy + npcs;
       }
       if(npcdata[1] == "downright"){
         npcy = npcy + npcs;
         npcx = npcx + npcs;
       }
       if(npcdata[1] == "downleft"){
         npcy = npcy + npcs;
         npcx = npcx - npcs;
       }
       if(npcdata[1] == "upright"){
         npcy = npcy - npcs;
         npcx = npcx + npcs;
       }
       if(npcdata[1] == "upleft"){
         npcy = npcy - npcs;
         npcx = npcx - npcs;
       }
      if(npcdata[1] == "still"){
      desx = int(random(580));
      desy = int(random(40,580));
      }
      
     }


     
     // println(npcdata[1]); //<>//
     // funds = funds + 1;
    npclocations[npcnum] [0]= npcx; 
    npclocations[npcnum] [1]= npcy; 
    for(int count = 0; count < blockslocs.length; count++){
      
      if(npcx > blockslocs[count][0] && npcx < (blockslocs[count][0] + 40)&&npcy > blockslocs[count][1] && npcy < (blockslocs[count][1] + 40)){
        npcblocks[npcnum] = count + 1;
        // println(npcblocks[0]);
      }
    }
    if(keyPressed == true && key == 'a'){
      npcdata[0] = "can";
    }
    if(keyPressed == true && key == 's'){
      npcdata[0] = "cant";
    }
// // println("hi");
//       if(int(npcblocks[npcnum]-15) > 0){
//       if(blockthings[int(npcblocks[npcnum]-16)] == "basichouse"){
//         npcdata[1] = "right";
//         println("hi");
//       }
//       }
    
    // npcblocks[npcnum] = 
    
   }

 }
