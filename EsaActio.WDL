//******************
IF_SPACE selector;
ACTION selector
{

     IF_EQUAL TouchKEY,1;
           BRANCH OpenPass1;
     IF_EQUAL TouchKEY,2;
           BRANCH OpenPass2;
}
ACTION setPass1
{
    SET TouchKEY, 1;
    
}
ACTION setPass2
{
    SET TouchKEY, 2;

} 
ACTION resetPass
{
    SET TouchKEY, 0;
    
}
ACTION openPass1
{
    	PLAY_SOUND LockSnd,0.3;
    	SET_ALL Control1Wall.TEXTURE,KeyOpenWBr10Tex;
    	SET_ALL Control1Wall.IF_NEAR,NULL;
    	SET_ALL Passagem1Wall.TEXTURE,NullTex;
    	SET_ALL Passagem1Wall.PASSABLE,1;
    	SET_ALL Passagem1Wall.INVISIBLE,1;
	SET_ALL TropWay2Act.INVISIBLE,0;
	SET_ALL TropWay3Act.INVISIBLE,0;
    	SET     MESSAGE_TEXT, Wrn15Str;
    	BRANCH  DisplayMessage;
}
ACTION openPass2
{
    	PLAY_SOUND LockSnd,0.3;
    	SET_ALL Control2Wall.TEXTURE,KeyOpenWBr10Tex;
    	SET_ALL Control2Wall.IF_NEAR,NULL;
    	SET_ALL Passagem2Wall.TEXTURE,NullTex;
    	SET_ALL Passagem2Wall.PASSABLE,1;
    	SET_ALL Passagem2Wall.INVISIBLE,1;
	CALL trapFase3;
    	SET     MESSAGE_TEXT, Wrn15Str;
    	BRANCH  DisplayMessage;
}
ACTION setMadTroop
{
	SET_ALL TropGuaritaAct.FLAG2,1;
}


ACTION toPool
{
       	ADD  PLAYER_X, -732;
       	ADD  PLAYER_Y, 170;
        LOCATE;
        SET RENDER_MODE,2;
	BRANCH enableFase1;		
}
ACTION fromPool
{
       	ADD  PLAYER_X, 732;
       	ADD  PLAYER_Y, -170;
        LOCATE;
        SET RENDER_MODE,2;
	IF_EQUAL MY.FLAG8,1;
		BRANCH disableFase1;
	SET MY.FLAG8,1;
	SET_ALL TropSecret1Act.INVISIBLE,0;
	BRANCH disableFase1;
}
ACTION toSoccer
{
       	ADD  PLAYER_X, 342;
       	ADD  PLAYER_Y, 99;
        LOCATE;
        SET RENDER_MODE,2;
	IF_EQUAL MY.FLAG8,1;
		BRANCH enableFase2;
	SET MY.FLAG8,1;
	CALL startFase2;
	BRANCH enableFase2;
}
ACTION fromSoccer
{
       	ADD  PLAYER_X, -342;
       	ADD  PLAYER_Y, -99;
        LOCATE;
        SET RENDER_MODE,2;
	IF_EQUAL MY.FLAG8,1;
		BRANCH disableFase2;
	SET MY.FLAG8,1;
	SET_ALL TropSecret2Act.INVISIBLE,0;
	SET_ALL LnchSecret2Act.INVISIBLE,0;
	BRANCH disableFase2;
}
ACTION toGas
{
       	ADD  PLAYER_X, -8;
       	ADD  PLAYER_Y, 653;
        LOCATE;
        SET RENDER_MODE,2;
	IF_EQUAL MY.FLAG8,1;
		BRANCH enableFase3;
	SET MY.FLAG8,1;
	CALL startFase3;
	BRANCH enableFase3;
}
ACTION fromGas
{
       	ADD  PLAYER_X, 8;
       	ADD  PLAYER_Y, -653;
        LOCATE;
        SET RENDER_MODE,2;
	IF_EQUAL MY.FLAG8,1;
		BRANCH disableFase3;
	SET MY.FLAG8,1;
	SET_ALL TropSecret3Act.INVISIBLE,0;
	BRANCH disableFase3;
}

ACTION disableFase1
{
	SET_ALL TropGuaritaAct.BERKELEY,1;
	SET_ALL TropFloor1Act.BERKELEY,1;
	SET_ALL TropFloor2Act.BERKELEY,1;
	SET_ALL TropFloor3Act.BERKELEY,1;
	SET_ALL Trop1StAct.BERKELEY,1;
	SET_ALL Lnch1StAct.BERKELEY,1;
	SET_ALL TropWay1Act.BERKELEY,1;
	BRANCH enableSecretActors;
}
ACTION enableFase1
{
	SET_ALL TropGuaritaAct.BERKELEY,0;
	SET_ALL TropFloor1Act.BERKELEY,0;
	SET_ALL TropFloor2Act.BERKELEY,0;
	SET_ALL TropFloor3Act.BERKELEY,0;
	SET_ALL Trop1StAct.BERKELEY,0;
	SET_ALL Lnch1StAct.BERKELEY,0;
	SET_ALL TropWay1Act.BERKELEY,0;
	BRANCH disableSecretActors;
}

ACTION startFase2
{
	SET_ALL TropSoccerFloor2Act.INVISIBLE,0;
	SET_ALL TropSoccerFloor1Act.INVISIBLE,0;
	SET_ALL TropSoccer1Act.INVISIBLE,0;
	SET_ALL LnchSoccer1tAct.INVISIBLE,0;
	SET_ALL TropSoccer2Act.INVISIBLE,0;
	SET_ALL TropSoccer2Act.TARGET,FOLLOW;
	SET_ALL TropSoccer2Act.SPEED,0.3;
	SET_ALL TropSoccer2Act.EACH_TICK,tropWander;
}
ACTION setRalo
{
	SET_ALL SetRaloWall.IF_NEAR,NULL;
	SET_ALL TropRalo1Act.INVISIBLE,0;
}
ACTION disableFase2
{
	SET_ALL TropSoccerFloor2Act.BERKELEY,1;
	SET_ALL TropSoccerFloor1Act.BERKELEY,1;
	SET_ALL TropSoccer1Act.BERKELEY,1;
	SET_ALL LnchSoccer1tAct.BERKELEY,1;
	SET_ALL TropSoccer2Act.BERKELEY,1;
	SET_ALL TropRalo1Act.BERKELEY,1;
	CALL enableSecretActors;
}
ACTION enableFase2
{
	SET_ALL TropSoccerFloor2Act.BERKELEY,0;
	SET_ALL TropSoccerFloor1Act.BERKELEY,0;
	SET_ALL TropSoccer1Act.BERKELEY,0;
	SET_ALL LnchSoccer1tAct.BERKELEY,0;
	SET_ALL TropSoccer2Act.BERKELEY,0;
	SET_ALL TropRalo1Act.BERKELEY,0;
	CALL disableSecretActors;
}
ACTION startFase3
{
	SET_ALL LnchGas1tAct.INVISIBLE,0;
	SET_ALL TropGas1Act.INVISIBLE,0;
	SET_ALL TropGas2Act.INVISIBLE,0;
	SET_ALL TropGas3Act.INVISIBLE,0;

}

ACTION trapFase3
{
	SET_ALL TropGas5Act.INVISIBLE,0;
	IF_BELOW PLAYER_HEALTH,90;
		END;
	SET_ALL TropGas4Act.INVISIBLE,0;
	SET_ALL TropGas4Act.TARGET,FOLLOW;
	SET_ALL TropGas4Act.SPEED,0.3;
	SET_ALL TropGas4Act.EACH_TICK,TropWander;
}
ACTION enableFase3
{
	SET_ALL LnchGas1tAct.BERKELEY,0;
	SET_ALL TropGas1Act.BERKELEY,0;
	SET_ALL TropGas2Act.BERKELEY,0;
	SET_ALL TropGas3Act.BERKELEY,0;
	SET_ALL TropGas4Act.BERKELEY,0;
	SET_ALL TropGas5Act.BERKELEY,0;
	CALL disableSecretActors;
}
ACTION disableFase3
{
	SET_ALL LnchGas1tAct.BERKELEY,1;
	SET_ALL TropGas1Act.BERKELEY,1;
	SET_ALL TropGas2Act.BERKELEY,1;
	SET_ALL TropGas3Act.BERKELEY,1;
	SET_ALL TropGas4Act.BERKELEY,1;
	SET_ALL TropGas5Act.BERKELEY,1;
	CALL enableSecretActors;
}
ACTION disableSecretActors
{
	SET_ALL TropSecret1Act.BERKELEY,1;
	SET_ALL TropSecret2Act.BERKELEY,1;
	SET_ALL LnchSecret2Act.BERKELEY,1;
	SET_ALL TropSecret3Act.BERKELEY,1;
	SET_ALL TropSecret3SAct.BERKELEY,1;
	SET_ALL TropSecret4Act.BERKELEY,1;
	SET_ALL TropKeyAct.BERKELEY,1;
	SET_ALL TropSecret5Act.BERKELEY,1;
}
ACTION enableSecretActors
{
	SET_ALL TropSecret1Act.BERKELEY,0;
	SET_ALL TropSecret2Act.BERKELEY,0;
	SET_ALL LnchSecret2Act.BERKELEY,0;
	SET_ALL TropSecret3Act.BERKELEY,0;
	SET_ALL TropSecret3NAct.BERKELEY,0;
	SET_ALL TropSecret3SAct.BERKELEY,0;
	SET_ALL TropSecret4Act.BERKELEY,0;
	SET_ALL TropKeyAct.BERKELEY,0;
	SET_ALL TropSecret5Act.BERKELEY,0;
}


ACTION setNTroop
{
	SET MY.IF_NEAR,NULL;
	SET_ALL TropSecret3NAct.INVISIBLE,0;
}
ACTION setSTroop
{
	SET MY.IF_NEAR,NULL;
	SET_ALL TropSecret3SAct.INVISIBLE,0;
}
ACTION setWeaponTroop
{
	SET MY.IF_NEAR,NULL;
	SET_ALL TropSecret4Act.INVISIBLE,0;
}
ACTION setKeyTroop
{
	SET MY.IF_NEAR,NULL;
	SET_ALL TropKeyAct.INVISIBLE,0;
	SET_ALL TropSecret5Act.INVISIBLE,0;
}
ACTION MoveTruck
{
	SHIFT TruckBorderRgn, 0, 0.2;
	SHIFT TruckSideRgn,   0, 0.2;
	SHIFT TruckBed1Rgn,   0, 0.2;
	SHIFT TruckDoor1Rgn,  0, 0.2;
	SHIFT TruckHatch1Rgn, 0, 0.2;
	SHIFT TruckBedRgn,    0, 0.2;
	ADD golCounter, 		 0.2;

	ADD TruckBedRgn.FLOOR_OFFS_X,    0.2;
	ADD TruckBed1Rgn.FLOOR_OFFS_X,   0.2;
	ADD TruckDoor1Rgn.FLOOR_OFFS_X,  0.2;
	ADD TruckHatch1Rgn.FLOOR_OFFS_X, 0.2;

	ADD TruckBedRgn.CEIL_OFFS_X,     0.2;
	ADD TruckBed1Rgn.CEIL_OFFS_X,    0.2;
	ADD TruckDoor1Rgn.CEIL_OFFS_X,   0.2;
	ADD TruckHatch1Rgn.CEIL_OFFS_X,  0.2;

	IF_BELOW golCounter, 5;
		END;
	SET EACH_SEC.1,	RepeatMusic;
	SET EACH_TICK.4, NULL;
}