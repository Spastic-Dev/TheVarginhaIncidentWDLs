ACTOR LnchEngAct {
      	TEXTURE 	Lnch1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	LnchHit;
	EACH_TICK	LnchWait;
}
ACTOR TropEngWay12Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	TARGET  	TroopWay12;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropEngAct {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;    
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK  TropWait;    
}

// *****************************
ACTION setEngine
{
	SET_ALL LnchEngAct.INVISIBLE,0;
	SET_ALL TropEngWay12Act.INVISIBLE,0;
	SET_ALL TropEngAct.INVISIBLE,0;
	SET EREscapeRgn.IF_ENTER,NULL;
}