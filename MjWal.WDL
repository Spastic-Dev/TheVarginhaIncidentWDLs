
WALL DMt03bWall 
{
    TEXTURE DMt03bTex; 
}
WALL DMt03cWall 
{
    TEXTURE DMt03cTex; 
}
WALL WMt21Wall 
{
    TEXTURE WMt21Tex; 
}
WALL WMt21aWall 
{
    TEXTURE WMt21aTex; 
}
WALL WMt21bWall 
{
    TEXTURE WMt21bTex; 
}
WALL WMt21cWall 
{
    TEXTURE WMt21cTex; 
}
WALL WMt22Wall 
{
    TEXTURE WMt22Tex; 
}

WALL WMt17LiftWall 
{
    TEXTURE WMt17LiftTex; 
}
WALL WMt17aLiftWall 
{
    TEXTURE WMt17aLiftTex; 
}

WALL FMt01aWall 
{
    TEXTURE FMt01aTex; 
}

WALL WMt14aWall 
{
    TEXTURE WMt14aTex; 
}
WALL WMt17Wall 
{
    TEXTURE WMt17Tex; 
}
WALL WMt20Wall 
{
    TEXTURE WMt20Tex; 
}
WALL WMt20aWall 
{
    TEXTURE WMt20aTex; 
}
WALL WMt18Wall 
{
    TEXTURE WMt18Tex; 
}
WALL WMt18aall 
{
    TEXTURE WMt18aTex; 
}
WALL FWt01Wall // oceano
{
    TEXTURE FWt01Tex;
    
}

WALL WWd05Wall 
{
    TEXTURE WWd05Tex; 
}  
WALL WMt02Wall 
{
	TEXTURE WMt02Tex;
}
WALL WMt03Wall
{
	TEXTURE WMt03Tex;
}
WALL WMt01RadarWall
{
	TEXTURE WMt01RadarTex;
}
WALL WMt01Wall
{
	TEXTURE WMt01Tex;
}

WALL WMt03ImpWall
{
	TEXTURE WMt03Tex;
	FLAGS IMPASSABLE;
}
WALL WMt04Wall
{
	TEXTURE WMt04Tex;
}
WALL WMt10Wall
{
	TEXTURE WMt10Tex;
}
WALL WMt10aWall
{
	TEXTURE WMt10aTex;
}
WALL WMt11Wall
{
	TEXTURE WMt11Tex;
}
WALL WMt11ImpWall
{
	TEXTURE WMt11Tex;
	FLAGS IMPASSABLE;
}

WALL WMt12Wall
{
	TEXTURE WMt12Tex;
}
WALL WMt04ImpWall
{
	TEXTURE WMt04Tex;
	FLAGS IMPASSABLE;
}
WALL WMt05Wall
{
	TEXTURE WMt05Tex;
}
WALL WMt06AWall
{
	TEXTURE WMt06ATex;
	//FLAGS PASSABLE,IMPASSABLE;
}
WALL WMt06AMonsterWall
{
	TEXTURE WMt06ATex;
	FLAGS PASSABLE,IMPASSABLE;
}
WALL WMt06BWall
{
	TEXTURE WMt06BTex;

}
WALL WMt06BMonterWall
{
	TEXTURE WMt06BTex;
	//FLAGS PASSABLE,IMPASSABLE;
}

WALL WMt06DWall
{
	TEXTURE WMt06DTex;
}
WALL WMt07Wall
{
	TEXTURE WMt07Tex;
}
WALL WMt08Wall
{
	TEXTURE WMt08Tex;
}
WALL WMt09AWall
{
	TEXTURE WMt09ATex;
}
WALL WMt09BWall
{
	TEXTURE WMt09BTex;
}
WALL FMt03Wall
{
	TEXTURE FMt03Tex;
}
WALL DoorFMt03Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL LastDoorWall // porta final - acesso helicóptero
{
	TEXTURE DMt03cTex;
	DIST 3;
	IF_NEAR Touch1;
	IF_FAR ResetTouch;
}
WALL NotDoorWall // portas falsas
{
	TEXTURE DMt03bTex;
	DIST 3;
	IF_NEAR Touch2;
	IF_FAR ResetTouch;

}

WALL WAr51Wall
{
	TEXTURE WAr51Tex;
	FLAGS PORTCULLIS,TRANSPARENT, PASSABLE;
}
Wall Back05Wall
{
	TEXTURE back05Tex;
	FLAGS FAR;
}
WALL NullWall
{
	TEXTURE NullTex;
	FLAGS   PASSABLE,INVISIBLE;
}
Wall ImpassableWall
{
	TEXTURE NullTex;
	FLAGS   INVISIBLE;//IMPASSABLE;
}
Wall ImpassableWaterWall
{
	TEXTURE 	Fsl01aTex;
	MAP_COLOR	0;
	FLAGS   	IMPASSABLE;
}



//**************Locks
/*
WALL Lock1Wall // passadiço esquerdo
{
	TEXTURE KeyOnWMt04Tex;
	DIST 3;
	IF_NEAR Touch1;
	IF_FAR ResetTouch;
	SKILL6 4;// indica a textura
}
WALL Lock2Wall // passadiço direito
{
	TEXTURE KeyOnWMt04Tex;
	OFFSET_X  0;
	OFFSET_Y -256;
	DIST 3;
	IF_NEAR Touch2;
	IF_FAR ResetTouch;
	SKILL6 4;
}
*/
WALL Lock3Wall // lift to control room
{
	TEXTURE KeyOnWMt04Tex;
	DIST 3;
	IF_NEAR Touch3 ;
	IF_FAR ResetTouch;
	SKILL6 4;
}
WALL Lock3IWall // lift to control room
{
	TEXTURE KeyOnWMt17aTex;
	DIST 3;
	IF_NEAR Touch103 ;
	IF_FAR ResetTouch;
	SKILL6 2;
}
WALL Lock4Wall // lift to control engine room
{
	TEXTURE KeyOnWMt04Tex;
	DIST 3;
	IF_NEAR Touch4 ;
	IF_FAR ResetTouch;
	SKILL6 4;
}
WALL Lock4IWall // lift to control engine room
{
	TEXTURE KeyOnWMt17aTex;
	DIST 3;
	IF_NEAR Touch104 ;
	IF_FAR ResetTouch;
	SKILL6 2;
}
WALL Lock5Wall // entrada frontal do castelo de popa esquerda
{
	TEXTURE KeyOnWMt04Tex;
	DIST 3;
	IF_NEAR Touch5 ;
	IF_FAR ResetTouch;
	SKILL6 4;
}
WALL Lock6Wall // entrada frontal do castelo de popa direita
{
	TEXTURE KeyOnWMt04Tex;
	DIST 3;
	IF_NEAR Touch6 ;
	IF_FAR ResetTouch;
	SKILL6 4;
}
// ********************Castelo de Meia Nau
WALL Lock7Wall // traseira
{
	TEXTURE KeyOnWMt04Tex;
	DIST 3;
	IF_NEAR Touch7 ;
	IF_FAR ResetTouch;
	SKILL6 4;
}
WALL Lock7IWall // traseira
{
	TEXTURE KeyOnWMt05Tex;
	DIST 3;
	IF_NEAR Touch107;
	IF_FAR ResetTouch;
	SKILL6 5;
}
WALL Lock8Wall //dianteira
{
	TEXTURE KeyOffWMt04Tex;
	DIST 3;
	IF_NEAR Touch8 ;
	IF_FAR ResetTouch;
	SKILL6 4;
}
WALL Lock8IWall //dianteira
{
	TEXTURE KeyOffWMt05Tex;
	DIST 3;
	IF_NEAR Touch108 ;
	IF_FAR ResetTouch;
	SKILL6 5;
}
WALL Lock9Wall // lift arrive from engine room
{
	TEXTURE KeyOnWMt05Tex;
	DIST 3;
	IF_NEAR Touch9 ;
	IF_FAR ResetTouch;
	SKILL6 5;
}
WALL Lock9IWall // lift arrive from engine room
{
	TEXTURE KeyOnWMt17aTex;
	DIST 3;
	IF_NEAR Touch9 ;
	IF_FAR ResetTouch;
	SKILL6 2;
}
WALL Lock10Wall // lift to depot
{
	TEXTURE KeyOnWMt05Tex;
	DIST 3;
	IF_NEAR Touch10 ;
	IF_FAR ResetTouch;
	SKILL6 5;
}
WALL Lock10IWall // lift to depot
{
	TEXTURE KeyOnWMt17aTex;
	DIST 3;
	IF_NEAR Touch110 ;
	IF_FAR ResetTouch;
	SKILL6 2;
}
// ********************Castelo de proa
WALL Lock11Wall // lift to operatiom room
{
	TEXTURE KeyOnWMt04Tex;
	DIST 3;
	IF_NEAR Touch11 ;
	IF_FAR ResetTouch;
	SKILL6 4;
}
WALL Lock11IWall // lift to operatiom room
{
	TEXTURE KeyOnWMt17aTex;
	DIST 3;
	IF_NEAR Touch111 ;
	IF_FAR ResetTouch;
	SKILL6 2;
}
WALL Lock12Wall //Control room, lift to Stern Castle (castelo de popa )
{
	TEXTURE KeyOnWMt04Tex;
	DIST 3;
	IF_NEAR Touch12 ;
	IF_FAR ResetTouch;
	SKILL6 4;
}
WALL Lock12IWall //Control room, lift to Stern Castle (castelo de popa )
{
	TEXTURE KeyOnWMt17aTex;
	DIST 3;
	IF_NEAR Touch112 ;
	IF_FAR ResetTouch;
	SKILL6 2;
}
WALL Lock13Wall // Engine room lift arrive from stern castle
{
	TEXTURE KeyOnWMt05Tex;
	DIST 3;
	IF_NEAR Touch13 ;
	IF_FAR ResetTouch;
	SKILL6 5;
}
WALL Lock13IWall // Engine room lift arrive from stern castle
{
	TEXTURE KeyOnWMt17aTex;
	DIST 3;
	IF_NEAR Touch113 ;
	IF_FAR ResetTouch;
	SKILL6 2;
}
WALL Lock14Wall // Engine room lift to Central Castle
{
	TEXTURE KeyOnWMt05Tex;
	DIST 3;
	IF_NEAR Touch14 ;
	IF_FAR ResetTouch;
	SKILL6 5;
}
WALL Lock14IWall // Engine room lift to Central Castle
{
	TEXTURE KeyOnWMt17aTex;
	DIST 3;
	IF_NEAR Touch114 ;
	IF_FAR ResetTouch;
	SKILL6 2;
}
WALL Lock15Wall // depot - lift
{
	TEXTURE KeyOnWMt17aTex;
	DIST 3;
	IF_NEAR Touch15 ;
	IF_FAR ResetTouch;
	SKILL6 2;
	}
// Operation Center
WALL Lock16Wall // lift arrive from Prow Castle
{
	TEXTURE KeyOnWMt03Tex;
	DIST 3;
	IF_NEAR Touch16 ;
	IF_FAR ResetTouch;
	SKILL6 3;
}
WALL Lock16IWall // lift arrive from Prow Castle
{
	TEXTURE KeyOnWMt17aTex;
	DIST 3;
	IF_NEAR Touch116 ;
	IF_FAR ResetTouch;
	SKILL6 2;
}
WALL Lock17Wall // Receptiom left Lock
{
	TEXTURE KeyOnWMt03Tex;
	DIST 3;
	IF_NEAR Touch17 ;
	IF_FAR ResetTouch;
	SKILL6 3;
}
WALL Lock18Wall // Receptiom right Lock
{
	TEXTURE KeyOnWMt03Tex;
	DIST 3;
	IF_NEAR Touch18 ;
	IF_FAR ResetTouch;
	SKILL6 3;
}
WALL Lock19Wall // operatiom room left Lock
{
	TEXTURE KeyOnWMt03Tex;
	DIST 3;
	IF_NEAR Touch19 ;
	IF_FAR ResetTouch;
	SKILL6 3;
}
WALL Lock20Wall // operatiom room right Lock
{
	TEXTURE KeyOnWMt03Tex;
	DIST 3;
	IF_NEAR Touch20 ;
	IF_FAR ResetTouch;
	SKILL6 3;
}
WALL Lock23Wall // left missile corridor to hangar
{
	TEXTURE KeyOnWMt03Tex;
	DIST 3;
	IF_NEAR Touch23 ;
	IF_FAR ResetTouch;
	SKILL6 3;
}
WALL Lock24Wall // left hangar corridor
{
	TEXTURE KeyOnWMt03Tex;
	DIST 3;
	IF_NEAR Touch24 ;
	IF_FAR ResetTouch;
	SKILL6 3;
}

WALL Lock27Wall // Engine room access left
{
	TEXTURE KeyOnWMt05Tex;
	DIST 3;
	IF_NEAR Touch27 ;
	IF_FAR ResetTouch;
	SKILL6 5;
}
WALL Lock28Wall //  Engine room access right
{
	TEXTURE KeyOnWMt05Tex;
	DIST 3;
	IF_NEAR Touch28 ;
	IF_FAR ResetTouch;
	SKILL6 5;
}
// ***********************controles a distância
WALL Lock51Wall //open  door8
{
	TEXTURE KeyOnWMt04Tex;
	DIST 3;
	IF_NEAR Touch51 ;
	IF_FAR ResetTouch;
	SKILL6 5;
}
WALL Lock52Wall //open  door26
{
	TEXTURE KeyOnWMt03Tex;
	DIST 3;
	IF_NEAR Touch52 ;
	IF_FAR ResetTouch;
	SKILL6 3;
}
// posicionamento da portas
WALL Pos01Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos02Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos03Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos04Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos05Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos06Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos07Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos08Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos09Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos10Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos11Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos12Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos13Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos14Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos15Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos16Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos17Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos18Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos19Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos20Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos21Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos22Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos23Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos24Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos25Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos26Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos27Wall
{
	TEXTURE DoorFMt03Tex;
}
WALL Pos28Wall
{
	TEXTURE DoorFMt03Tex;
}
