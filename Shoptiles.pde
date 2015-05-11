class Shoptiles{
float x;
float y;
String setmouse;
PImage img;
String imgname;
int price;
String effect1;
String effect2;
String name;
  Shoptiles(float xloc, float yloc,int p, String smouse, String effectone, String effecttwo, String nme){
    x = xloc;
    y = yloc;
    setmouse = smouse;
    imgname = smouse + ".png";
    img = loadImage(imgname);
    price = p;
    effect1 = effectone;
    effect2 = effecttwo;
    name = nme;
  }
  void run(){
  image(img,x,y,40,40);
  fill(0);
  textSize(10);
  text("Price: "+int(shopprices[price]),x+40,y+17);
  text(name,x+40,y+9);
  if(effect1 != "null"){
    text("Efects: "+effect1,x+40,y+25);
  }
  if(effect2 != "null"){
    text("        "+effect2,x+50,y+33);
  }
  if(mouseX > x && mouseX < x+40 && mouseY > y && mouseY < y+40 && mousePressed == true && mouseButton == LEFT){
   if(funds >= price){
     // funds = funds-price;
     currentprice = int(shopprices[price]);
     priceindex = int(price);
     mouse = setmouse;
     
   }
   // if(funds < price){
   // fill(252,4,33);
   // textSize(50);
   // text("Not Enough Money",71,298);      
   // }
  }
  // if(mouse == "null"){
  // }else{
  //  image(img,mouseX,mouseY); 
  // }

  }
}
