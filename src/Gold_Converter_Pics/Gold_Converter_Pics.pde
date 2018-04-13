PImage adPic;
PImage apPic;
PImage armorPic;
PImage mrPic;
PImage csPic;
PImage hrPic;
PImage maPic;
PImage marPic;
PImage hpPic;
PImage asPic;

void setup () {
  size(500, 300);
  background(19, 23, 26);
  adPic = loadImage("adPic.png");
  apPic = loadImage("apPic.png");
  armorPic = loadImage("armor.png");
  mrPic = loadImage("mr.png");
  csPic = loadImage("cs.png");
  hrPic = loadImage("hr.png");
  maPic = loadImage("ma.png");
  marPic = loadImage("mar.png");
  hpPic = loadImage("hp.png");
  asPic = loadImage("as.png");
}

void draw () {
  background(19, 23, 26);
  //Making Things look spicy
  fill(25, 40, 45);
  rect(0, 0, width, height);
  strokeWeight(3);
  stroke(49, 104, 98);
  fill(19, 23, 26);
  rect(10, 10, width-20, height-20, 7);
  fill(227, 226, 169);
  strokeWeight(1);
  textSize(10);
  //Basic Info
  text("Lol Gold to Stat Converter", 190, 20);
  text("By Seth Doubek", 210, 30);
  textSize(9);
  text("To use this program, slide your mouse across the screen. \nYou can then use this value to find out how much of any one stat your can buy using this gold.", 12, 50);
  //Gold Stuff
  textSize(10);
  mouseInter();
  rectInter();
  drawRef();
  //Helpful References
  textSize(10);
  text("Kill", 70, 145);
  text("Tower", 110, 145);
  text("Triple-kill", 190, 145);
  text("Penta-Kill", 310, 145);
  //The Stats
  textSize(10);
  text("AD: " + int(attackDamage(statMinMax((mouseX*5)-50))), 12, 210);
  image(adPic, 12, 150, 50, 50);
  text("AP: " + int(abilityPower(statMinMax((mouseX*5)-50))), 112, 210);
  image(apPic, 112, 150, 50, 50);
  text("Armor: " + int(armor(statMinMax((mouseX*5)-50))), 212, 210);
  image(armorPic, 212, 150, 50, 50);
  text("MR: " + int(magicResistance(statMinMax((mouseX*5)-50))), 312, 210);
  image(mrPic, 312, 150, 50, 50);
  text("Crit: " + int(criticalStrike(statMinMax((mouseX*5)-50))) + "%", 412, 210);
  image(csPic, 412, 150, 50, 50);
  text("HP5: " + int(healthRegeneration(statMinMax((mouseX*5)-50))), 12, 285);
  image(hrPic, 12, 220, 50, 50);
  text("MP: " + int(mana(statMinMax((mouseX*5)-50))), 112, 285);
  image(maPic, 112, 220, 50, 50);
  text("MP5: " + int(manaRegeneration(statMinMax((mouseX*5)-50))), 212, 285);
  image(marPic, 212, 220, 50, 50);
  text("HP: " + int(health(statMinMax((mouseX*5)-50))), 312, 285);
  image(hpPic, 312, 220, 50, 50);
  text("AS: " + int(attackSpeed(statMinMax((mouseX*5)-50))) + "%", 412, 285);
  image(asPic, 412, 220, 50, 50);
}

//Determines whether the stats are less than 0 or greater than normal
float statMinMax(float val) {
  if (mouseX >= 10 && mouseX <= 490) {
  } else if (mouseX >= 490) {
    val = 2400;
  } else if (mouseX <= 10) {
    val = 0;
  }
  return val;
}

//Reference Line
void drawRef() {
  textSize(7);
  fill(227, 226, 169);
  line(10, 120, width-10, 120);
  for (int i = 20; i < 491; i += 20) {
    line(i-10, 115, i-10, 125);
    text((i*5)-100, i-10, 135);
  }
}

//Makes sure the mouse stays in the proper spot
void mouseInter() {
  if (mouseX <= 10) {
    text("Gold: 0", 0, 100);
  } else if (mouseX <= 55) {
    text("Gold: " + (mouseX*5-50), 0, 100);
  } else if (mouseX >= 490) {
    text("Gold: 2400", 435, 100);
  } else {
    text("Gold: " + (mouseX*5-50), mouseX-55, 100);
  }
}

//Makes sure the rectangle stays in the proper spot
void rectInter() {
  fill(255, 255, 0);
  if (mouseX >= 490) {
    rect(10, 110, 480, 10);
  } else if (mouseX <= 10) {
    rect(10, 110, 0, 10);
  } else {
    rect(10, 110, mouseX-10, 10);
  }
}

float attackDamage(float gold) {
  gold = gold/35; 
  return gold;
}

float abilityPower(float gold) {
  gold = gold/21.75; 
  return gold;
}

float armor(float gold) {
  gold = gold/20; 
  return gold;
}

float magicResistance(float gold) {
  gold = gold/18; 
  return gold;
}

float health(float gold) {
  gold = gold/2.666; 
  return gold;
}

float healthRegeneration(float gold) {
  gold = gold/3; 
  return gold;
}

float mana(float gold) {
  gold = gold/1.4; 
  return gold;
}

float manaRegeneration(float gold) {
  gold = gold/5; 
  return gold;
}

float criticalStrike(float gold) {
  gold = gold/40; 
  return gold;
}

float attackSpeed(float gold) {
  gold = gold/25; 
  return gold;
}