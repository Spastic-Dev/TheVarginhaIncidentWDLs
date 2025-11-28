ACTOR TropBioReinfAAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	TARGET      BioWay1;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}

ACTOR TropBioReinfBAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	TARGET      BioWay3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;    
}

ACTOR BioDrklJailAct {
	TEXTURE	Drkl1Tex;
	HEIGHT	-0.05;
	SPEED		0.4;
	DIST		35;
	TARGET      FOLLOW;
	EACH_TICK  DrklWait;
	FLAGS       CAREFULLY,FLAG2;
	IF_HIT	DrklHit;
}

ACTOR BioMibkAAct {
        TEXTURE         Mibk1Tex;
        HEIGHT          -0.05;
        SPEED           0.3;
        DIST            25;
        FLAGS           CAREFULLY,FRAGILE,INVISIBLE;
        EACH_TICK  	MibkWait;
	  IF_HIT		MibkHit;
}
ACTOR BioTropAAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,INVISIBLE;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}

ACTOR BioLnchAAct {
      TEXTURE 	Lnch1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	LnchHit;
	EACH_TICK	LnchWait;
}
ACTOR BioTropBAct {
      TEXTURE 	Trop1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	TARGET      BioWay5;
	FLAGS		CAREFULLY,FRAGILE,INVISIBLE,FLAG2;
	IF_HIT	TropHit;
	EACH_CYCLE  CycleTropAttack;
}
ACTOR BioMibkCAct {
        TEXTURE         Mibk1Tex;
        HEIGHT          -0.05;
        SPEED           0.3;
        DIST            25;
        FLAGS           CAREFULLY,FRAGILE,INVISIBLE,FLAG2;
        EACH_TICK       MibkWait;
	  IF_HIT		MibkHit;
}
ACTOR BioLnchDAct {
      TEXTURE 	Lnch1Tex;
      HEIGHT 	-0.05;
	DIST		20;
      SPEED 	0.3;
	FLAGS		CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
	IF_HIT	LnchHit;
	EACH_TICK	LnchWait;
}

//  ******** actions
ACTION setBioA
{
	SET_ALL BioLnchAAct.INVISIBLE,0;
	SET_ALL BioTropAAct.INVISIBLE,0;
	SET_ALL BioMibkAAct.INVISIBLE,0;
	BRANCH CloseMib;
}
ACTION setAttackA
{
	SET_ALL BioTropBAct.INVISIBLE,0;
	WAIT 150;
	PLAY_SOUND Alarm02Snd,0.4;
	WAIT 20;
	PLAY_SOUND Alarm02Snd,0.4;
	WAIT 20;
	PLAY_SOUND Alarm02Snd,0.4;
	SET_ALL BioLnchAAct.FLAG2,1;
	SET_ALL BioTropAAct.FLAG2,1;
	SET_ALL BioMibkAAct.FLAG2,1;
	SET BioTropAWall.IF_NEAR,NULL;
}

ACTION setBioReinforce
{
	SET_ALL BioMibkCAct.INVISIBLE,0;
	IF_ABOVE RANDOM, 0.5;
		GOTO way2;
	SET_ALL TropBioReinfAAct.TARGET,BioWay1 ;
	GOTO second;	
way2:
	SET_ALL TropBioReinfAAct.TARGET,BioWay2 ;
second:
	WAIT 1;
	IF_ABOVE RANDOM, 0.5;
		GOTO way4;
	SET_ALL TropBioReinfBAct.TARGET,BioWay3 ;
	GOTO go;	
way4:
	SET_ALL TropBioReinfBAct.TARGET,BioWay4 ;
go:
	SET_ALL TropBioReinfAAct.INVISIBLE,0;
	SET_ALL TropBioReinfBAct.INVISIBLE,0;

}

ACTION CloseBio
{
	SET_ALL BioMibkCAct.BERKELEY,1;
	SET_ALL BioLnchDAct.BERKELEY,1;
	SET_ALL TropBioReinfAAct.BERKELEY,1;
	SET_ALL TropBioReinfBAct.BERKELEY,1;
	SET_ALL BioDrklJailAct.BERKELEY,1;
	SET_ALL BioMibkAAct.BERKELEY,1;
	SET_ALL BioTropAAct.BERKELEY,1;
	SET_ALL BioLnchAAct.BERKELEY,1;
	SET_ALL BioTropBAct.BERKELEY,1;
}