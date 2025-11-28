ACTION DropInHole
{
	WAITT 8; // dá um tempinho p/ o pulo
	IF_EQUAL CtHoleRgn.HERE,0;
		END; // acertou o pulo
	BRANCH FinishPlayer; // errou o pulo
}
ACTION openDoor
{
	PLAY_SOUND Door10Snd,0.3,LockWall;
up:	
	ADD upDownDoor.CEIL_HGT,0.2;
	SET RENDER_MODE,1;
	WAIT 1;
	IF_BELOW upDownDoor.CEIL_HGT,ceilPos;
		GOTO up;
	WAIT 35;
	PLAY_SOUND Door10Snd,0.3,LockWall;
down:
	ADD upDownDoor.CEIL_HGT,-0.2;
	SET RENDER_MODE,1;
	WAIT 1;
	IF_ABOVE upDownDoor.CEIL_HGT,upDownDoor.FLOOR_HGT;
		GOTO down;
	SET_ALL LockWall.TEXTURE,LockTex;
	SET upDownDoor,NULL;
	SET LockWall,NULL;
	SET LockTex,NULL;
}

INCLUDE <Shutle.Wdl>;//<ShAction.Wdl>;

ACTION BioImpassable  // impede o jogador de pular o centro cirúrgico
{
	SET_ALL WMt18dBioExtWall.IMPASSABLE,1;
}
ACTION BioPassable // libera o andar de baixo do centro cirúrgico
{
	SET_ALL WMt18dBioExtWall.IMPASSABLE,0;
}

ACTION goCity
{
	ADD  PLAYER_X,-444.5;
	ADD  PLAYER_Y,-381;
	ADD  PLAYER_Z,-90;
	LOCATE;
	SET RENDER_MODE,2;
}
ACTION goCatedral
{
	ADD  PLAYER_X,444.5;
	ADD  PLAYER_Y,381;
	ADD  PLAYER_Z,90;
	LOCATE;
	SET RENDER_MODE,2;
}
ACTION ChangeHeight {
        RULE MY.HEIGHT = (MY.SKILL1+200)*RANDOM -200;
}
//******************
IF_SPACE selector;
ACTION selector
{

     	IF_EQUAL TouchKEY,1;
           BRANCH OpenPass1;
	IF_EQUAL TouchKEY,2;
           BRANCH OpenPass2;
	IF_EQUAL TouchKEY,3;
           BRANCH setShutleOn;
	IF_EQUAL TouchKEY,4;
           BRANCH setShutleWay;
	IF_EQUAL TouchKEY,5;
           BRANCH openMibDoor;
	IF_EQUAL TouchKEY,6;
           BRANCH openBioDoor;
	IF_EQUAL TouchKEY,7;
           BRANCH openGrayDoor;
	IF_EQUAL TouchKEY,8;
           BRANCH setTrapMib;
}

ACTION setPass1
{
    	SET TouchKEY, 1; 
	ADD MY.DIST,1;     
}
ACTION setPass2
{
    	SET TouchKEY, 2;
	ADD MY.DIST,1;     
}
ACTION setPass3
{
    	SET TouchKEY, 3; 
	ADD MY.DIST,1;    
}
ACTION setPass4
{
    	SET TouchKEY, 4;
	ADD MY.DIST,1;  
}
ACTION setPass5
{
    	SET TouchKEY, 5;
	ADD MY.DIST,1;  
	
}
ACTION setPass6
{
    	SET TouchKEY, 6;
	ADD MY.DIST,1; 

}
ACTION setPass7
{
    	SET TouchKEY, 7;
	ADD MY.DIST,1; 

}
ACTION setPass8
{
    	SET TouchKEY, 8;
	ADD MY.DIST,1; 
}

ACTION resetPass
{
    	SET TouchKEY, 0;
	ADD MY.DIST,-1;  
}
ACTION openPass1
{
    	PLAY_SOUND LockSnd,0.3;
    	SET_ALL Control1Wall.TEXTURE,KeyOpenWMt02Tex;
    	SET_ALL Control1Wall.IF_NEAR,NULL;
    	SET_ALL JailWall.TEXTURE, NullTex;
    	SET_ALL JailWall.IMPASSABLE,0;
    	SET_ALL JailWall.PASSABLE,1;
	SET_ALL BioDrklJailAct.FRAGILE,1;
	SET_ALL BioLnchDAct.INVISIBLE,0;
	SET     MESSAGE_TEXT, Wrn15Str;
    	BRANCH  DisplayMessage;
}
ACTION openPass2
{
	CALL setBioReinforce;
	SET     MESSAGE_TEXT, Wrn15Str;
    	CALL  DisplayMessage;
	SET_ALL Control2Wall.TEXTURE,KeyOpenWMt02Tex;
	open:
	ADD BioDoor1Rgn.CEIL_HGT, 0.1;
	SET RENDER_MODE,1;
	WAIT 1;
	IF_BELOW BioDoor1Rgn.CEIL_HGT,16.5;
		GOTO open;
      SET_ALL Control2Wall.IF_NEAR, NULL;
}
ACTION openMibDoor
{
	IF_NEQUAL upDownDoor,NULL;
		END;
	IF_NEQUAL Key1,1;
		GOTO display;
	CALL setMibA;
	SET	upDownDoor,MibDoorRgn;
	SET 	ceilPos,26.5;
	SET_ALL MibWall.TEXTURE,KeyOpenMibTex;
	SET LockWall,MibWall;
	SET LockTex,KeyOnMibTex;
	BRANCH openDoor;
	END;
display:
	SET     MESSAGE_TEXT, Wrn13Str;
    	BRANCH  DisplayMessage;
}
ACTION openBioDoor
{
	IF_NEQUAL upDownDoor,NULL;
		END;
	IF_NEQUAL Key2,1;
		GOTO display;
	SET	upDownDoor,BioDoorRgn;
	SET 	ceilPos,17;
	SET_ALL BioWall.TEXTURE,KeyOpenLabTex;
	SET LockWall,BioWall;
	SET LockTex,KeyOnLabTex;
	CALL setBioA; // liga os personagens do setor
	BRANCH openDoor;
	END;
display:
	SET     MESSAGE_TEXT, Wrn11Str;
    	BRANCH  DisplayMessage;
}
ACTION openGrayDoor
{
	IF_NEQUAL upDownDoor,NULL;
		END;
	IF_NEQUAL Key3,1;
		GOTO display;
	SET_ALL MibDrklKillerAct.INVISIBLE,0;
	SET	upDownDoor,GrayDoorRgn;
	SET 	ceilPos,7;
	SET_ALL GrayWall.TEXTURE,KeyOpenGrayTex;
	SET LockWall,GrayWall;
	SET LockTex,KeyOnGrayTex;
	BRANCH openDoor;
	END;
display:
	SET     MESSAGE_TEXT, Wrn14Str;
    	BRANCH  DisplayMessage;
}

ACTION setTrapMib
{
	SET_ALL MibTrapWall.TEXTURE,KeyOpenGrayTex;
	SET_ALL MibTrapRgn.CEIL_HGT,20;
	CALL setMibC;
	SET     MESSAGE_TEXT, Wrn15Str;
    	BRANCH  DisplayMessage;
}

ACTION warningG
{
    SET     MESSAGE_TEXT, Wrn13Str;
    BRANCH  DisplayMessage;
}
ACTION warningB
{
    SET     MESSAGE_TEXT, Wrn11Str;
    BRANCH  DisplayMessage;
}
ACTION warningY
{
    SET     MESSAGE_TEXT, Wrn14Str;
    BRANCH  DisplayMessage;
}

//*****gray door 

ACTION openGy1 
{
	IF_NEQUAL upDownDoor,NULL;
		END;
	IF_NEQUAL Key4,1;
		GOTO display;
	SET LockWall,GyDoor1Wall;
	SET LockTex,DMt18Tex;
	SET	upDownDoor,GyDoor1Rgn;      
	SET 	ceilPos,6.5 ; // limite superior      
	BRANCH openDoor;
display:
	SET     MESSAGE_TEXT, Wrn12Str;
    	BRANCH  DisplayMessage; 
}
ACTION openGy3
{
	IF_NEQUAL upDownDoor,NULL;
		END;
	SET LockWall,GyDoor3Wall;
	SET LockTex,DMt18Tex;
	SET	upDownDoor,GyDoor3ARgn;
	SET 	ceilPos,-83.5 ; // limite superior
	BRANCH openDoor;
}
ACTION openGy7
{
	IF_NEQUAL upDownDoor,NULL;
		END;
	SET LockWall,GyDoor7Wall;
	SET LockTex,DMt18Tex;
	SET	upDownDoor,GyDoor7Rgn;
	SET 	ceilPos,6.5 ; // limite superior
	BRANCH openDoor;
}
ACTION openGy8
{
	IF_NEQUAL upDownDoor,NULL;
		END;
	SET LockWall,GyDoor8Wall;
	SET LockTex,DMt18Tex;
	SET	upDownDoor,GyDoor8Rgn;
	SET 	ceilPos,6.5 ; // limite superior
	BRANCH openDoor;
}
ACTION openGy9
{
	IF_NEQUAL upDownDoor,NULL;
		END;
	SET LockWall,GyDoor9Wall;
	SET LockTex,DMt18Tex;
	SET upDownDoor,GyDoor9Rgn;
	SET 	ceilPos,6.5 ; // limite superior
	BRANCH openDoor;
}
ACTION openGy10
{
	IF_NEQUAL upDownDoor,NULL;
		END;
	SET LockWall,GyDoor10Wall;
	SET LockTex,DMt18Tex;
	SET upDownDoor,GyDoor10Rgn;
	SET 	ceilPos,6.5 ; // limite superior
	BRANCH openDoor;
}
//*******************

