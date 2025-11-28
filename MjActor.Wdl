INCLUDE <Trop.Wdl>;
INCLUDE <Drakalis.Wdl>;
INCLUDE <Launcher.Wdl>;

//*************************************************
INCLUDE <MjDpActo.Wdl>; // atores no depósito
INCLUDE <MjEgActo.Wdl>;	// atores nos motores
INCLUDE <MjPnActo.Wdl>;	// atores na sala de painéis
// ******* atores nos decks
ACTOR LnchDeckW1Act {
      	TEXTURE 	Lnch1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2;
	IF_HIT	LnchHit;
	EACH_TICK	LnchWait;
}
ACTOR Trop10W1Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	10;
	DIST		20;
      	SPEED 	0.3;    
	FLAGS		CAREFULLY,FRAGILE,FLAG2,GROUND;
	IF_HIT	TropHit;
	EACH_TICK  TropWait;    
}

ACTOR TropWay1W1Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	TARGET  	TroopWay1;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropWay2W1Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	TARGET  	TroopWay2;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropWay6W1Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	TARGET  	TroopWay6;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropWay7W1Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	TARGET  	TroopWay7;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropWay8W1Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	TARGET  	TroopWay8;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR LnchYelowAct {
      	TEXTURE 	Lnch1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2;
	IF_HIT	LnchHit;
	EACH_TICK	LnchWait;
}
ACTOR TropYelowAct {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;    
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK  TropWait;    
}

//      Action
ACTION setTroopWay6
{
	SET_ALL TropWay6W1Act.INVISIBLE,0;
	SET_ALL TropWay7W1Act.INVISIBLE,0;
	SET_ALL TropWay8W1Act.INVISIBLE,0;
	SET_ALL DeckStern1Rgn.IF_ENTER,NULL;
}

ACTION yellowTrap
{
	IF_ABOVE RANDOM,0.5;
		SET Key4Tng.Y,-16;
	IF_ABOVE RANDOM,0.5;
		SET Key4Tng.X,198;
	SET Key4Tng.INVISIBLE,0;
	SET_ALL LnchYelowAct.INVISIBLE,0;
	SET_ALL TropYelowAct.INVISIBLE,0;
}