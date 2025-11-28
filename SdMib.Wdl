ACTOR MibDrklKillerAct {
	TEXTURE	Drkl1Tex;
	HEIGHT	-0.05;
	SPEED		0.4;
	DIST		35;
	TARGET      FOLLOW;
	EACH_TICK	DrklWander;
	FLAGS       CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	DrklHit;
}

ACTOR MibTropBAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}
ACTOR MibMibkA1Act {
        TEXTURE         Mibk1Tex;
        HEIGHT          10;
        SPEED           0.3;
        DIST            25;
        FLAGS           CAREFULLY,FRAGILE,INVISIBLE,GROUND;
        EACH_TICK       MibkWait;
	  IF_HIT		MibkHit;
}
ACTOR MibMibkA2Act {
        TEXTURE         Mibk1Tex;
        HEIGHT          -0.05;
        SPEED           0.3;
        DIST            25;
        FLAGS           CAREFULLY,FRAGILE,INVISIBLE,FLAG2;
        EACH_TICK       MibkWait;
	  IF_HIT		MibkHit;
}
ACTOR MibMibkB1Act {
        TEXTURE         Mibk1Tex;
        HEIGHT          0;
        SPEED           0.3;
        DIST            25;
        FLAGS           CAREFULLY,FRAGILE,INVISIBLE,GROUND,FLAG2;
        EACH_TICK       MibkWait;
	  IF_HIT		MibkHit;
}
ACTOR MibMibkB2Act {
        TEXTURE         Mibk1Tex;
        HEIGHT          -0.05;
        SPEED           0.3;
        DIST            25;
        FLAGS           CAREFULLY,FRAGILE,INVISIBLE,FLAG2;
        EACH_TICK       MibkWait;
	  IF_HIT		MibkHit;
}
ACTOR MibMibkCAct {
        TEXTURE         Mibk1Tex;
        HEIGHT          -0.05;
        SPEED           0.3;
        DIST            25;
        FLAGS           CAREFULLY,FRAGILE,INVISIBLE,FLAG2;
        EACH_TICK       MibkWait;
	  IF_HIT		MibkHit;
}
ACTOR MibLnchBAct {
      TEXTURE 	Lnch1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	LnchHit;
	EACH_TICK	LnchWait;
}

ACTOR MibTropCAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}
ACTOR MibDrklC1Act {
	TEXTURE	Drkl1Tex;
	HEIGHT	-0.05;
	SPEED		0.4;
	DIST		35;
	TARGET      FOLLOW;
	EACH_TICK	DrklWander;
	FLAGS       CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	DrklHit;
}
ACTOR MibDrklC2Act {
	TEXTURE	Drkl1Tex;
	HEIGHT	-0.05;
	SPEED		0.4;
	DIST		35;
	TARGET      FOLLOW;
	EACH_TICK	DrklWander;
	FLAGS       CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	DrklHit;
}

//*********
ACTION setMibA
{
	SET_ALL TropBackAct.BERKELEY,1;

	SET_ALL MibMibkA1Act.INVISIBLE,0;
	SET_ALL MibMibkA2Act.INVISIBLE,0;
}
ACTION setMibB
{
	SET_ALL MibMibkA1Act.BERKELEY,1;
	SET_ALL MibMibkA2Act.BERKELEY,1;

	SET_ALL MibMibkB1Act.INVISIBLE,0;
	SET_ALL MibMibkB2Act.INVISIBLE,0;
	IF_ABOVE RANDOM,0.7;
		END;
	SET_ALL MibTropBAct.INVISIBLE,0;
	SET_ALL MibLnchBAct.INVISIBLE,0;
	SET_ALL MibDoubleRgn.IF_ENTER,NULL;
}
ACTION setMibC
{
	SET_ALL MibMibkB1Act.BERKELEY,1;
	SET_ALL MibMibkB2Act.BERKELEY,1;
	SET_ALL MibTropBAct.BERKELEY,1;
	SET_ALL MibLnchBAct.BERKELEY,1;

	SET MibBlock1Rgn.FLOOR_HGT,10;
	SET MibBlock1Rgn.CEIL_HGT,20;
	SET_ALL MibMibkCAct.INVISIBLE,0;
	SET_ALL MibTropCAct.INVISIBLE,0;
	SET_ALL MibDrklC1Act.INVISIBLE,0;
	IF_ABOVE RANDOM,0.5;
		END;
	SET_ALL MibDrklC2Act.INVISIBLE,0;
}
ACTION closeMib
{
	SET_ALL MibMibkCAct.BERKELEY,1;
	SET_ALL MibTropCAct.BERKELEY,1;
	SET_ALL MibDrklC1Act.BERKELEY,1;
	SET_ALL MibDrklC2Act.BERKELEY,1;
}
