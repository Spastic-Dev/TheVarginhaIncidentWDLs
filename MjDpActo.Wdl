//*********Depot Actors
ACTOR TropDpW1Act {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}
ACTOR TropDpW1AAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	0;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE,GROUND;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}
ACTOR TropDpW1BAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	12;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE,GROUND;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}

ACTOR TropDpW1CAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-12;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE,GROUND;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}

ACTOR DrklAloneAct {
	TEXTURE	Drkl1Tex;
	HEIGHT	-0.05;
	SPEED		0.0;
	DIST		20;
	EACH_TICK	DrklWait;
	FLAGS       CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	DrklHit;
}

ACTOR DrklFallAct {
	TEXTURE	Drkl1Tex;
	HEIGHT	-0.05;
	SPEED		0.0;
	DIST		20;
	EACH_TICK	DrklWait;
	FLAGS       CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	DrklHit;
}
ACTOR TropFallAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}

ACTOR LnchDepotW2Act {
      TEXTURE 	Lnch1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	LnchHit;
	EACH_TICK	LnchWait;
}
ACTOR TropLastAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}

ACTOR LnchLastAct {
      TEXTURE 	Lnch1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	LnchHit;
	EACH_TICK	LnchWait;
}

// actions
ACTION setWave1
{
	SET DpArriveRgn.IF_ENTER,NULL;
	SET_ALL	TropDpW1Act.INVISIBLE,0;
	SET_ALL DpCorridorT2Rgn.IF_ENTER,setWave1A;
	SET_ALL DpCorridorT1Rgn.IF_ENTER,setWave1B; 
	SET_ALL DpCorridorT3Rgn.IF_ENTER,setWave1C; 
}
ACTION setWave1A
{
	SET_ALL DpCorridorT2Rgn.IF_ENTER,NULL;
	SET_ALL	TropDpW1AAct.INVISIBLE,0;
}

ACTION setWave1B
{
	SET_ALL DpCorridorT1Rgn.IF_ENTER,NULL;
	SET_ALL	TropDpW1BAct.INVISIBLE,0;
}
ACTION setWave1C
{
	SET_ALL DpCorridorT3Rgn.IF_ENTER,NULL;
	SET_ALL	TropDpW1CAct.INVISIBLE,0;
}
ACTION setKeyTrap
{
	SET_ALL DpKey1Rgn.IF_ENTER, NULL;
	SET_ALL DrklFallAct.INVISIBLE,0;
	SET_ALL TropFallAct.INVISIBLE,0;
	BRANCH setWave1C;
}
ACTION setAloneDrkl
{
	SET_ALL DpTrapARgn.IF_ENTER,NULL;
	SET_ALL DrklAloneAct.INVISIBLE,0;
}