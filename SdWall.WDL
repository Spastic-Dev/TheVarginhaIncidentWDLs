WALL WMt20aDoorWall
{
	TEXTURE WMt20aTex;
	FLAGS PORTCULLIS,SAVE,SAVE;
}

WALL WMt20aGrayWall
{
	TEXTURE WMt20aGrayTex;
	FLAGS PORTCULLIS,SAVE;
}
WALL WMt20aMj3Wall
{
	TEXTURE WMt20aMj3Tex;
	FLAGS PORTCULLIS,SAVE;
}

WALL WMt18dBed4Wall
{
	TEXTURE WMt18dBed4Tex;
}
WALL WMt18dBed2Wall
{
	TEXTURE WMt18dBed2Tex;
}
WALL WWd02bWall
{
	TEXTURE WWd02bTex;
}
WALL WMt20Wall
{
	TEXTURE WMt20Tex;
}
WALL WMt20aWall
{
	TEXTURE WMt20aTex;
}
WALL WMt18dBioIntWall
{
	TEXTURE WMt18dBioIntTex;
}
WALL WMt18dBioExtWall
{
	TEXTURE WMt18dBioExtTex;
	
}
WALL WMt16aBioWall
{
	TEXTURE WMt16aBioTex;
}
WALL WMt17BioWall
{
	TEXTURE WMt17BioTex;
}

WALL WMt18CorrWall
{
	TEXTURE WMt18Tex;
	OFFSET_Y -183;
}

WALL WMt18aCat15Wall
{
	TEXTURE WMt18aCat15Tex;
	OFFSET_Y 59;
}
WALL WMt18aCat5Wall
{
	TEXTURE WMt18aCat5Tex;
	OFFSET_Y 100;
}
WALL WMt18aCat95Wall
{
	TEXTURE WMt18aCat95Tex;
	OFFSET_Y 100;
}
WALL WMt18aCat95BWall
{
	TEXTURE WMt18aCat95BTex;
	OFFSET_Y 177;
}
WALL WMt19aWall
{
	TEXTURE WMt19aTex;
}
WALL WMt14aWall
{
	TEXTURE WMt14aTex;
}
WALL WMt16bWall
{
	TEXTURE WMt16bTex;
}

WALL WMt16b1Wall
{
	TEXTURE WMt16b1Tex;

}
WALL WMt16cWall
{
	TEXTURE WMt16cTex;
}

WALL ShutleWall
{
	TEXTURE WMt19Tex;
	FLAGS PORTCULLIS,SAVE,IMPASSABLE;
}
WALL ShutleDoorWall
{
	TEXTURE WMt19Tex;
	FLAGS PORTCULLIS,SAVE,IMPASSABLE,PASSABLE;
}

WALL ShutleOnOffWall
{
	TEXTURE WMt19OffTex;
	FLAGS PORTCULLIS,SAVE;
	IF_NEAR setPass3;
	IF_FAR resetPass;
	DIST 2;
}
WALL ShutleWayWall
{
	TEXTURE WMt19Way1Tex;
	FLAGS PORTCULLIS,SAVE;
	IF_NEAR setPass4;
	IF_FAR resetPass;
	DIST 2;
}
WALL Shutle1Wall
{
	TEXTURE WMt19Tex;
	FLAGS PORTCULLIS,SAVE;
}
WALL Shutle2Wall
{
	TEXTURE WMt19Tex;
	FLAGS PORTCULLIS,SAVE;
}
WALL WMt16Wall
{
	TEXTURE WMt16Tex;

}
WALL WMt16aWall
{
	TEXTURE WMt16aTex;

}
WALL WMt18Wall
{
	TEXTURE WMt18Tex;

}
WALL WMt18aWall
{
	TEXTURE WMt18aTex;

}
WALL WMt18dWall
{
	TEXTURE WMt18dTex;
	FLAGS IMPASSABLE;

}
WALL WMt18eWall
{
	TEXTURE WMt18eTex;
	FLAGS IMPASSABLE;

}

WALL DMt02Wall
{
	TEXTURE DMt02Tex;

}
WALL WCt07Wall
{
	TEXTURE WCt07Tex;

}
WALL WSl01Wall
{
	TEXTURE WSl01Tex;

}

WALL WCt07aWall
{
	TEXTURE WCt07aTex;

}
WALL WCt07aImpWall
{
	TEXTURE WCt07aTex;
	FLAGS IMPASSABLE;

}
WALL DMt01Wall
{
	TEXTURE DMt01x1Tex;
	FLAGS PORTCULLIS,SAVE;
}
WALL DMt18Wall
{
	TEXTURE DMt18Tex;
	FLAGS PORTCULLIS,SAVE;
}
WALL DMt18aWall
{
	TEXTURE DMt18aTex;
	FLAGS PORTCULLIS,SAVE;
}

WALL FVg03Wall
{
	TEXTURE FVg03Tex;

}

WALL WMt01Wall
{
	TEXTURE Wmt01Tex;
}
WALL WMt08Wall
{
	TEXTURE Wmt08Tex;
}

WALL WMt15Wall
{
	TEXTURE Wmt15Tex;
}
WALL Scrn01Wall
{
	TEXTURE Scrn01Tex;
}

WALL Scrn02Wall
{
	TEXTURE Scrn02Tex;
}


WALL Scrn04Wall
{
	TEXTURE Scrn04Tex;
}

Wall CCt01Wall
{
	TEXTURE CCt01Tex;
}

 WALL AlarmCCt01Wall
{
	TEXTURE AlarmCCt01Tex;
}
 
 WALL WMt02Wall
{
	TEXTURE WMt02Tex;
}
WALL WMt02MibWall
{
	TEXTURE WMt02Tex;

}

WALL WMt02MonsterWall
{
	TEXTURE WMt02Tex;
	FLAGS PASSABLE,IMPASSABLE;
}
 WALL FFb01Wall
{
	TEXTURE FFb01Tex;
}
WALL  Control1Wall
{
    TEXTURE KeyOnWMt02Tex;
    DIST 5;
    IF_NEAR setPass1;
    IF_FAR  resetPass;
	FLAGS SAVE;
}
WALL  Control2Wall
{
    TEXTURE KeyOnWMt02Tex;
    DIST 5;
    IF_NEAR setPass2;
    IF_FAR  resetPass;
	FLAGS SAVE;
}

WALL WMt02ImpWall
{
	TEXTURE WMt02Tex;
	FLAGS IMPASSABLE;
}
Wall FCt01Wall
{
	TEXTURE FCt01Tex;
	
}
Wall FCt01DepotWall
{
	TEXTURE WCt50bTex;
	IF_NEAR depotReinforce;
	FLAGS SAVE;	
}
Wall FCt01BedWall
{
	TEXTURE FCt01Tex;
	IF_NEAR bedRoomReinforce;
	FLAGS SAVE;	
}

Wall WCt50b1Wall
{
	TEXTURE WCt50bTex;
	
}
Wall WCt50bWall
{
	TEXTURE WCt50bTex;
	
}
Wall WCt50bMonsterWall
{
	TEXTURE WCt50bTex;
	FLAGS PASSABLE,IMPASSABLE;
	
}

Wall WCt01Wall
{
	TEXTURE WCt01Tex;
	
}
Wall JailWall
{
	TEXTURE GhostWmt02Tex;
	FLAGS TRANSPARENT,FENCE;
	POSITION 4;
	FLAGS SAVE;	
}

// *****Gray door
WALL GyDoor1Wall
{
	TEXTURE DMt18Tex;
       DIST 8;
       IF_NEAR openGy1;
       FLAGS PORTCULLIS,SAVE;
}
WALL GyDoor3Wall
{
	TEXTURE DMt18Tex;
       DIST 6;
       IF_NEAR openGy3;
       FLAGS PORTCULLIS,SAVE;
}


WALL GyDoor7Wall
{
	TEXTURE DMt18Tex;
       DIST 8;
       IF_NEAR openGy7;
       FLAGS PORTCULLIS,SAVE;
}
WALL GyDoor8Wall
{
	TEXTURE DMt18Tex;
       DIST 8;
       IF_NEAR openGy8;
       FLAGS PORTCULLIS,SAVE;
}
WALL GyDoor9Wall
{
	TEXTURE DMt18Tex;
       DIST 3;
       IF_NEAR openGy9;
       FLAGS PORTCULLIS,SAVE;
}
WALL GyDoor10Wall
{
	TEXTURE DMt18Tex;
       DIST 8;
       IF_NEAR openGy10;
       FLAGS PORTCULLIS,SAVE;
}
WALL GyGoCatedralWall
{
	TEXTURE NullTex;
	FLAGS   PASSABLE,INVISIBLE,IMPASSABLE,SAVE;
	IF_NEAR goCatedral;
}
WALL GyGoCityWall
{
	TEXTURE NullTex;
	FLAGS   PASSABLE,INVISIBLE;
	IF_NEAR goCity;
	FLAGS SAVE;
}
WALL  MibWall
{
    TEXTURE KeyOnMibTex;
    DIST 5;
    IF_NEAR setPass5;
    IF_FAR  resetPass;
	FLAGS SAVE;
}
WALL  BioWall
{
    TEXTURE KeyOnLabTex;
    DIST 5;
    IF_NEAR setPass6;
    IF_FAR  resetPass;
	FLAGS SAVE;
}
WALL  GrayWall
{
    TEXTURE KeyOnGrayTex;
    DIST 5;
    IF_NEAR setPass7;
    IF_FAR  resetPass;
	FLAGS SAVE;
}
WALL  MibTrapWall
{
    TEXTURE KeyOnGrayTex;
    DIST 5;
    IF_NEAR setPass8;
    IF_FAR  resetPass;
	FLAGS SAVE;
}
WALL WMt02GrayWall
{
	TEXTURE WMt02GrayTex;
}
//********************************************************
//__________________SEM TEXTURA___________________________
//********************************************************

WALL NullWall 
{
	TEXTURE NullTex;
	FLAGS   INVISIBLE,PASSABLE;
}
Wall ImpassableWall
{
	TEXTURE NullTex;
	FLAGS   INVISIBLE;//IMPASSABLE;
}
Wall MonsterWall
{
	TEXTURE NullTex;
	FLAGS   INVISIBLE,IMPASSABLE,PASSABLE;
}
WALL TropBackWall 
{
	TEXTURE NullTex;
	FLAGS   INVISIBLE,PASSABLE;
	IF_NEAR setBack;
}
WALL BioTropAWall 
{
	TEXTURE NullTex;
	FLAGS   INVISIBLE,PASSABLE;
	IF_NEAR setAttackA;
	FLAGS SAVE;
}

