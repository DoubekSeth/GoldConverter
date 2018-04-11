void setup () {
  size(500, 300);
  background(200);
}

void draw () {
  background(200);
  fill(0);
  textSize(10);
  //Basic Info
  text("Lol Gold to Stat Converter", width/3, 15);
  text("By Seth Doubek", width/2.5, 30);
  textSize(8);
  text("To use this program, slide your mouse across the screen. \n You can then use this value to find out how much of any one stat your can buy using this gold.", 0, 50);
  //Gold Stuff
  //This just always lets the Gold indicator stay on screen
  textSize(10);
  if (mouseX <= 55) {
    text("Gold: " + mouseX *5, 0, 100);
  } else {
    text("Gold: " + mouseX*5, mouseX-55, 100);
  }
  fill(255, 255, 0);
  rect(0, 110, mouseX, 10);
  drawRef();
  //Helpful References
  textSize(10);
  text("Kill", 60, 145);
  text("Tower", 100, 145);
  text("Triple-kill", 180, 145);
  text("Penta-Kill", 300, 145);
  //The Stats
  textSize(10);
  text("Attack Damage: " + int(attackDamage(mouseX*10)), 0, 220);
  text("Ability Power: " + int(abilityPower(mouseX*10)), 107, 220);
  text("Armor: " + int(armor(mouseX*10)), 205, 220);
  text("Magic Resistance: " + int(magicResistance(mouseX*10)), 275, 220);
  text("Critical Strike: " + int(criticalStrike(mouseX*10)), 405, 220);
  text("Health Regeneration: " + int(healthRegeneration(mouseX*10)), 0, 295);
  text("Mana: " + int(mana(mouseX*10)), 130, 295);
  text("Mana Regeneration: " + int(manaRegeneration(mouseX*10)), 195, 295);
  text("Health: " + int(health(mouseX*10)), 320, 295);
  text("Attack Speed: " + int(attackSpeed(mouseX*10)), 405, 295);
}

//Reference Line
void drawRef() {
  textSize(7);
  fill(0);
  line(0, 120, width, 120);
  for (int i = 0; i <= 500; i += 20) {
    line(i, 115, i, 125);
    text(i*5, i, 135);
  }
}



int attackDamage(int gold) {
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
  gold = gold/21.75; 
  return gold;
}

float healthRegeneration(float gold) {
  gold = gold/21.75; 
  return gold;
}

float mana(float gold) {
  gold = gold/21.75; 
  return gold;
}

float manaRegeneration(float gold) {
  gold = gold/21.75; 
  return gold;
}

float criticalStrike(float gold) {
  gold = gold/21.75; 
  return gold;
}

float attackSpeed(float gold) {
  gold = gold/21.75; 
  return gold;
}