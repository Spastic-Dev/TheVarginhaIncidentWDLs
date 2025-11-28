/////////////////////////////////////////////////////////////////////////
// ESA : Actors
/////////////////////////////////////////////////////////////////////////

ACTOR TropGuaritaAct {
      	TEXTURE   Trop1Tex;
      	HEIGHT    0;     // altura absoluta >= altura do piso desejado
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,GROUND;    // o flag GROUND é obrigatório
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropFloor1Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    0;     
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,GROUND,FLAG2; 
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropFloor2Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    9;     
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,GROUND,FLAG2; 
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropFloor3Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}

ACTOR Trop1StAct {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR Lnch1StAct {
      	TEXTURE   Lnch1Tex;
      	HEIGHT    -6;  
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2;
    	IF_HIT  LnchHit;
    	EACH_TICK   LnchWait;
}
ACTOR TropWay1Act {
      TEXTURE   Trop1Tex;
      HEIGHT    -0.05;  // altura relativa (ator levemente afundado)
    DIST        20;
      SPEED     0.3;
    FLAGS       FRAGILE,FLAG2;
    TARGET  TroopWay1;     // obviamente Way1 deve ser declarado primeiro
    IF_HIT  TropHit;
    EACH_CYCLE  CycleTropAttack;
}

// soccer
ACTOR LnchSoccer1tAct {
      	TEXTURE   Lnch1Tex;
      	HEIGHT    -6;  
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  LnchHit;
    	EACH_TICK   LnchWait;
}
ACTOR TropSoccer1Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropSoccerFloor1Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    0;     
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,GROUND,FLAG2,INVISIBLE; 
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropSoccerFloor2Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    9;     
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,GROUND,FLAG2,INVISIBLE; 
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropSoccer2Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropRalo1Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropWay2Act {
      TEXTURE   Trop1Tex;
      HEIGHT    -0.05;  // altura relativa (ator levemente afundado)
    DIST        20;
      SPEED     0.3;
    FLAGS       FRAGILE,FLAG2,INVISIBLE;
    TARGET  TroopWay2;     // obviamente Way1 deve ser declarado primeiro
    IF_HIT  TropHit;
    EACH_CYCLE  CycleTropAttack;
}
ACTOR TropWay3Act {
      TEXTURE   Trop1Tex;
      HEIGHT    -0.05;  // altura relativa (ator levemente afundado)
    DIST        20;
      SPEED     0.3;
    FLAGS       FRAGILE,FLAG2,INVISIBLE;
    TARGET  TroopWay3;     // obviamente Way1 deve ser declarado primeiro
    IF_HIT  TropHit;
    EACH_CYCLE  CycleTropAttack;
}

// gas tank
ACTOR TropGas1Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropGas2Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropGas3Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropGas4Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.3;
	TARGET	FOLLOW;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWander;
}
ACTOR TropGas5Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR LnchGas1tAct {
      	TEXTURE   Lnch1Tex;
      	HEIGHT    -6;  
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  LnchHit;
    	EACH_TICK   LnchWait;
}
// SECRET
ACTOR TropSecret1Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropSecret2Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}

ACTOR LnchSecret2Act {
      	TEXTURE   Lnch1Tex;
      	HEIGHT    -6;  
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  LnchHit;
    	EACH_TICK   LnchWait;
}
ACTOR TropSecret3Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropSecret3NAct {
      TEXTURE   Trop1Tex;
      HEIGHT    -0.05;  // altura relativa (ator levemente afundado)
    DIST        20;
      SPEED     0.3;
    FLAGS       FRAGILE,FLAG2,INVISIBLE;
    TARGET  TroopWay4;     // obviamente Way1 deve ser declarado primeiro
    IF_HIT  TropHit;
    EACH_CYCLE  CycleTropAttack;
}
ACTOR TropSecret3SAct {
      TEXTURE   Trop1Tex;
      HEIGHT    -0.05;  // altura relativa (ator levemente afundado)
    DIST        20;
      SPEED     0.3;
    FLAGS       FRAGILE,FLAG2,INVISIBLE;
    TARGET  TroopWay5;
    IF_HIT  TropHit;
    EACH_CYCLE  CycleTropAttack;
}
ACTOR TropSecret4Act {
      	TEXTURE   Trop1Tex;
      	HEIGHT    -0.05;
    	DIST        20;
      	SPEED     0.0;
    	FLAGS       FRAGILE,FLAG2,INVISIBLE;
    	IF_HIT  TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropSecret5Act {
     	TEXTURE   	Trop1Tex;
     	HEIGHT    	-0.05;
    	DIST      	20;
     	SPEED    	0.0;
    	FLAGS    	FRAGILE,FLAG2,INVISIBLE,BERKELEY;
    	IF_HIT   	TropHit;
    	EACH_TICK   TropWait;
}
ACTOR TropKeyAct {
     	TEXTURE   Trop1Tex;
     	HEIGHT    -0.05;  // altura relativa (ator levemente afundado)
    	DIST        20;
     	SPEED     0.3;
    	FLAGS       FRAGILE,FLAG4,INVISIBLE,CAREFULLY;
    	TARGET  TroopWay6;
    	IF_HIT  TropDie;
}