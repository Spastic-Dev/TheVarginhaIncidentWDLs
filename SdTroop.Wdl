// Trooper level
// ********* Troopers
ACTOR TropSdAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}

ACTOR TropSdTrapAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}
ACTOR TropSdBedAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}
ACTOR TropSdDepAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}
ACTOR TropWay1GAAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	TARGET  	TroopWay1;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropWay2GAAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	TARGET  	TroopWay2;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropWay2GBAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	TARGET  	TroopWay2;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropWay3GAAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	TARGET  	TroopWay3;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropWay4GAAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	TARGET  	TroopWay4;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}
ACTOR TropBackAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		5;
      SPEED 	0.35;
	TARGET  	TroopWay5;      
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}

ACTOR TropSdBriefAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}

ACTOR LnchSDAct {
      TEXTURE 	Lnch1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	LnchHit;
	EACH_TICK	LnchWait;
}
ACTOR LnchSDBriefAct {
      TEXTURE 	Lnch1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	LnchHit;
	EACH_TICK	LnchWait;
}

// actions
ACTION alarmOff
{
     	SET_ALL RPMezaninoRgn.IF_ENTER, NULL;
	SET_ALL TropSdBedAct.INVISIBLE,0;
	WAIT	8;
	SET_ALL TropSdDepAct.INVISIBLE,0;
     	SET AlarmTex.SOUND,NULL;

}

ACTION setTroopB
{
	SET_ALL HgMainRgn.IF_LEAVE,NULL;
	SET_ALL TropWay2GBAct.INVISIBLE,0;
}
ACTION hangarTrap
{
	SET_ALL RPDoorRgn.IF_ENTER,NULL;
	SET_ALL TropSdTrapAct.INVISIBLE,0;
	SET_ALL LnchSDAct.INVISIBLE,0;
}
ACTION depotReinforce
{
	SET_ALL FCt01DepotWall.IF_NEAR,NULL ;
	SET_ALL TropWay3GAAct.INVISIBLE,0;
}
ACTION bedRoomReinforce
{
	SET_ALL FCt01BedWall.IF_NEAR,NULL ;
	SET_ALL TropWay4GAAct.INVISIBLE,0;
}
ACTION setBrief
{
	SET_ALL TrCorridor90Rgn.IF_ENTER,NULL;
	SET_ALL TropSdBriefAct.INVISIBLE,0;
	SET_ALL LnchSDBriefAct.INVISIBLE,0;
}
ACTION setBack
{
	SET_ALL TrCorridor90Rgn.IF_ENTER,NULL;
	SET_ALL TropBackAct.INVISIBLE,0;

	SET_ALL TropSdBriefAct.BERKELEY,1;
	SET_ALL LnchSDBriefAct.BERKELEY,1;
	SET_ALL TropWay4GAAct.BERKELEY,1;
	SET_ALL TropWay3GAAct.BERKELEY,1;
	SET_ALL TropSdTrapAct.BERKELEY,1;
	SET_ALL LnchSDAct.BERKELEY,1;
	SET_ALL TropWay2GBAct.BERKELEY,1;
	SET_ALL TropSdBedAct.BERKELEY,1;
	SET_ALL TropSdDepAct.BERKELEY,1;
	SET_ALL TropSdAct.BERKELEY,1;
}