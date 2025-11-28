ACTOR TropWay9Pnl1Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	TARGET  	TroopWay9;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropWay10Pnl1Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	TARGET  	TroopWay10;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropWay1Pnl2Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	TARGET  	TroopWay1;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropPnlW2Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;    
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK  TropWait;    
}
ACTOR TropPnlT1Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;    
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK  TropWait;    
}
ACTOR TropPnlT2Act {
      	TEXTURE 	Trop1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;    
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK  TropWait;    
}
ACTOR LnchPnlT2Act {
      	TEXTURE 	Lnch1Tex;
      	HEIGHT 	-0.05;
	DIST		20;
      	SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2;
	IF_HIT	LnchHit;
	EACH_TICK	LnchWait;
}

ACTION setArrivedPanel
{
	SET_ALL TropWay9Pnl1Act.INVISIBLE, 0;
	SET_ALL TropWay10Pnl1Act.INVISIBLE, 0;
	SET_ALL TropWay1Pnl2Act.INVISIBLE, 0;
	SET_ALL TropPnlW2Act.INVISIBLE, 0;
	SET CRArriveRgn.IF_ENTER,NULL;
}
ACTION panelTrap1
{
	SET_ALL TropPnlT1Act.INVISIBLE,0;
	SET CRTrap1Rgn.IF_ENTER,NULL;
}
ACTION panelTrap2
{
	SET_ALL TropPnlT2Act.INVISIBLE,0;
	SET_ALL LnchPnlT2Act.INVISIBLE,0;
	SET CRTrap2Rgn.IF_ENTER,NULL;
	IF_ABOVE RANDOM, 0.5;
		END;
	SET_ALL TropPnlT2Act.X,73;
	SET_ALL LnchPnlT2Act.X,73;
	
}