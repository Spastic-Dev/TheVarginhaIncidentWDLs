//Region
REGION RoomWindowF3Rgn
{
	FLOOR_HGT 2.5;
	CEIL_HGT  6;
	FLOOR_TEX WPl05Tex;
	CEIL_TEX WPl05Tex;
	AMBIENT 0.55;
	
}
REGION RoomWindowF2Rgn
{
	FLOOR_HGT 11.5;
	CEIL_HGT  15;
	FLOOR_TEX WPl05Tex;
	CEIL_TEX WPl05Tex;
	AMBIENT 0.55;
	BELOW RoomWindowF3Rgn;
}
REGION RoomWindowF1Rgn
{
	FLOOR_HGT 20.5;
	CEIL_HGT  24;
	FLOOR_TEX WPl05Tex;
	CEIL_TEX WPl05Tex;
	AMBIENT 0.55;
	BELOW RoomWindowF2Rgn;
}
REGION RoomF3Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT  7;
	FLOOR_TEX WWd02Tex;
	CEIL_TEX WPl05Tex;
	AMBIENT 0.5;
	
}
REGION RoomF2Rgn
{
	FLOOR_HGT 9;
	CEIL_HGT  16;
	FLOOR_TEX WWd02Tex;
	CEIL_TEX WPl05Tex;
	AMBIENT 0.5;
	BELOW RoomF3Rgn;
}
REGION RoomF1Rgn
{
	FLOOR_HGT 18;
	CEIL_HGT  25;
	FLOOR_TEX WWd02Tex;
	CEIL_TEX WPl05Tex;
	AMBIENT 0.5;
	BELOW RoomF2Rgn;
}
REGION RoomRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  7;
	FLOOR_TEX WWd02Tex;
	CEIL_TEX WPl05Tex;
	AMBIENT 0.5;	
}
// teletrans
REGION TeleTransRoomRgn  
{
	FLOOR_HGT 	-5.5;
	CEIL_HGT  	-0.5;
	FLOOR_TEX 	Fct01Tex;
	CEIL_TEX    	WWd04Tex;
	AMBIENT 	0.2;
}
REGION TeleTransDoorRgn  
{
	FLOOR_HGT 	-5.5;
	CEIL_HGT  	-0.5;
	FLOOR_TEX 	Fct01Tex;
	CEIL_TEX    	Fct01Tex;
	AMBIENT 	0.2;
}
REGION TeleTransPoolRgn  // Pool
{
	FLOOR_HGT 	-5.5;
	CEIL_HGT  	-0.5;
	FLOOR_TEX 	Fct01Tex;
	CEIL_TEX    	Cct01Tex;
	AMBIENT 	0.2;
}
REGION TeleTransSoccerRgn // soccer
{
	FLOOR_HGT 	-5.5;
	CEIL_HGT  	-0.5;
	FLOOR_TEX 	Fct01Tex;
	CEIL_TEX    	WWd04Tex;
	AMBIENT 	0.2;
}
REGION TeleTransGasRgn // gas tank
{
	FLOOR_HGT 	-5.5;
	CEIL_HGT  	-0.5;
	FLOOR_TEX 	Fct01Tex;
	CEIL_TEX    	WWd04Tex;
	AMBIENT 	0.2;
}



// Water Trap

REGION WTPoolBRgn 
{
    	FLOOR_HGT   	-60;
    	CEIL_HGT        -40;
   	FLOOR_TEX   	FSl01aTex;
    	CEIL_TEX        CWt01Tex;
    	IF_ARISE    	regio_arise;
    	AMBIENT 	0.3;
}

REGION WTPoolRgn
{
    	FLOOR_HGT 	-40;
    	CEIL_HGT  	-4;
    	FLOOR_TEX 	FWt01Tex;
    	CEIL_TEX 	CCt01Tex;
    	//CLIP_DIST 500;
    	BELOW    	WTPoolBRgn;
    	IF_DIVE  	regio_dive;
	FLAGS		FLAG2;
    	AMBIENT 	0.4;
}

REGION WTTowerRgn
{
    	FLOOR_HGT 	-30;
    	CEIL_HGT  	-4;
    	FLOOR_TEX 	FCt01Tex;
    	CEIL_TEX	Cct01Tex;
    	AMBIENT	0.4;
	FLAGS 	FLAG1;
}


// secret
REGION SecVigaRgn
{
    FLOOR_HGT -10;
    CEIL_HGT  -5;
    FLOOR_TEX FSl01Tex;
    CEIL_TEX    Cct01Tex;
       FLAGS CEIL_DESCEND;
    AMBIENT 0.5;
	CLIP_DIST 200;
}

REGION SecHallRgn
{
    FLOOR_HGT -10;
    CEIL_HGT  -4;
    FLOOR_TEX FSl01Tex;
    CEIL_TEX    Cct01Tex;
    AMBIENT 0.5;
	CLIP_DIST 200;
}
REGION SecPassageRgn
{
    FLOOR_HGT 3;
    CEIL_HGT  10;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX    Cct01Tex;
    AMBIENT 0.2;
}
REGION SecMainRgn
{
    FLOOR_HGT -10;
    CEIL_HGT  -4;
    FLOOR_TEX FSl01Tex;
    CEIL_TEX  Cct01Tex;
    AMBIENT 0.5;
	CLIP_DIST 350;
}
REGION SecAbismoRgn
{
    	FLOOR_HGT -10;
    	CEIL_HGT  -4;
    	FLOOR_TEX FSl01Tex;
    	CEIL_TEX  Cct01Tex;
    	AMBIENT 0.5;
	FLAGS FLAG1;
	CLIP_DIST 600;
}

REGION SecExitRgn
{
    FLOOR_HGT -5.5;
    CEIL_HGT  -0.5;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX    Wpl05Tex;
    AMBIENT 0.2;
	CLIP_DIST 600;
}

// soccer
REGION Soccer2Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  7;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX    WPl05Tex;
    AMBIENT 0.6;
}

REGION Soccer1Rgn
{
    FLOOR_HGT 7.5;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX    Back01Tex;
    BELOW Soccer2Rgn;
    AMBIENT 0.6;
}
REGION SoccerColRgn
{
    FLOOR_HGT 7.5;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX    Back01Tex;
    AMBIENT 0.6;
}

REGION SoccerStripeRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX    Back01Tex;
    AMBIENT 0.6;
}

// lojas
REGION LojaRgn
{
    FLOOR_HGT 10;
    CEIL_HGT  30;
    FLOOR_TEX WWd02Tex;
    CEIL_TEX    Back01Tex;
    AMBIENT 0.8;
}

// ralo
REGION Ralo0Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  30;
    FLOOR_TEX FSl01Tex;
    CEIL_TEX    Back01Tex;
    AMBIENT 0.8;
	CLIP_DIST 500;
}
REGION Ralo1Rgn
{
    FLOOR_HGT 1;
    CEIL_HGT  30;
    FLOOR_TEX FSl01Tex;
    CEIL_TEX    Back01Tex;
    AMBIENT 0.8;
	CLIP_DIST 500;
}
REGION Ralo3Rgn
{
    FLOOR_HGT 3;
    CEIL_HGT  30;
    FLOOR_TEX FSl01Tex;
    CEIL_TEX    Back01Tex;
    AMBIENT 0.8;
	CLIP_DIST 500;
}
REGION Ralo5Rgn
{
    FLOOR_HGT 5;
    CEIL_HGT  30;
    FLOOR_TEX FSl01Tex;
    CEIL_TEX    Back01Tex;
    AMBIENT 0.8;
	CLIP_DIST 500;
}
REGION RaloWallRgn
{
    FLOOR_HGT 7;
    CEIL_HGT  30;
    FLOOR_TEX WBr01Tex;
    CEIL_TEX    Back01Tex;
    AMBIENT 0.8;
    FLAGS   FLOOR_DESCEND;
	CLIP_DIST 500;
}
REGION RaloWallWindow2Rgn
{
    FLOOR_HGT 3.5;
    CEIL_HGT  5.5;
    FLOOR_TEX WBr01Tex;
    CEIL_TEX    WBr01Tex;
    AMBIENT 0.7;
	CLIP_DIST 500;
    
}
REGION RaloWallWindow1Rgn
{
    FLOOR_HGT 7;
    CEIL_HGT  30;
    FLOOR_TEX WBr01Tex;
    CEIL_TEX Back01Tex  ;
    AMBIENT 0.8;
    BELOW RaloWallWindow2Rgn;   
	CLIP_DIST 500;
}

// stadium
REGION StadiumRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  28;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX    WPl05Tex;
    AMBIENT 0.6;
	CLIP_DIST 500;
}
REGION StadiumRampRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  25;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX    WPl05Tex;
    AMBIENT 0.6;
    FLAGS FLOOR_ASCEND;
	CLIP_DIST 500;
}

// garagem oficiais
REGION GarageRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  10;
    FLOOR_TEX WBr02Tex;
    CEIL_TEX    WPl05Tex;
    AMBIENT 0.6;
	CLIP_DIST 500;
}
REGION GarageOficinaRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  10;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX    WPl05Tex;
    AMBIENT 0.6;
	CLIP_DIST 500;
}

// Fuel tank
REGION FuelTankRgn
{
    	FLOOR_HGT 15;
    	CEIL_HGT  30;
    	FLOOR_TEX WBr02Tex;
    	CEIL_TEX    Back01Tex;
    	AMBIENT 0.8;
	FLAGS FLAG1;
	CLIP_DIST 500;
}
REGION FuelWallRgn
{
    	FLOOR_HGT 6;
    	CEIL_HGT  30;
    	FLOOR_TEX WBr13Tex;
   	CEIL_TEX  Back01Tex;
    	AMBIENT 0.8;
	FLAGS FLAG1;
	CLIP_DIST 500;
}

// Cx agua
REGION WaterDepotRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  20;
    FLOOR_TEX Fgr01Tex;
    CEIL_TEX  WPl05Tex;
    
    AMBIENT 0.6;
}

// Piscina
REGION SPoolUnterRgn
{
    FLOOR_HGT -6;
    CEIL_HGT  -2;
    FLOOR_TEX TBr01Tex;
    CEIL_TEX  TBr01aTex;
    AMBIENT 0.4;
}

REGION SPoolGramado2Rgn
{
    FLOOR_HGT -6;
    CEIL_HGT  -2;
    FLOOR_TEX TBr01Tex;
    CEIL_TEX  TBr01aTex;
    AMBIENT 0.4;
}

REGION SPoolGramado1Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  30;
    FLOOR_TEX Fgr01Tex;
    CEIL_TEX back01Tex;
    AMBIENT 0.8;
       BELOW SPoolGramado2Rgn;
}

REGION SPoolBorderRgn
{
    FLOOR_HGT 1;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX  Back01Tex;
    AMBIENT 0.8;
}
REGION SPoolBTunnel2Rgn
{
    FLOOR_HGT -6;
    CEIL_HGT  -2;
    FLOOR_TEX TBr01Tex;
    CEIL_TEX  TBr01aTex;
    AMBIENT 0.4;
}

REGION SPoolBTunnel1Rgn
{
    FLOOR_HGT 1;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX  Back01Tex;
    AMBIENT 0.8;
    BELOW SPoolBTunnel2Rgn;
}

REGION SPool2Rgn
{
    FLOOR_HGT -6;
    CEIL_HGT  0.5;
    FLOOR_TEX TBr01Tex;
    CEIL_TEX    CWt01Tex;
    IF_ARISE    regio_arise;
    AMBIENT 0.6;
}
REGION SPool1Rgn
{
    FLOOR_HGT 0.5;
    CEIL_HGT  30;
    FLOOR_TEX   FWt01Tex;
    CEIL_TEX Back01Tex;
    BELOW SPool2Rgn;
    IF_DIVE         regio_dive;
    AMBIENT 0.8;
}
REGION SPoolBunker2Rgn
{
    FLOOR_HGT -6;
    CEIL_HGT  0.5;
    FLOOR_TEX TBr01Tex;
    CEIL_TEX    CWt01Tex;
    IF_ARISE    regio_arise;
    AMBIENT 0.4;
}
REGION SPoolBunker1Rgn
{
    FLOOR_HGT 0.5;
    CEIL_HGT  20;
    FLOOR_TEX   FWt01Tex;
    CEIL_TEX WPl05Tex;
    BELOW SPoolBunker2Rgn;
    IF_DIVE         regio_dive;
    AMBIENT 0.5;
}

// bunker
REGION TrenchRgn
{
    FLOOR_HGT -3;
    CEIL_HGT  30;
    FLOOR_TEX FSl01Tex;
    CEIL_TEX back01Tex;
    AMBIENT 0.8;
}
// PORTAL
REGION PortalSideRgn
{
    FLOOR_HGT 10.5;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX Back01Tex;
    AMBIENT 0.8;
}
REGION Portal2FRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  7.5;
    FLOOR_TEX Fst31Tex;
    CEIL_TEX WPl05Tex;
    AMBIENT 0.7;
    FLAGS CEIL_ASCEND;
}
REGION PortalFRgn
{
    FLOOR_HGT 13;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX Back01Tex;
    AMBIENT 0.8;
    BELOW Portal2FRgn;
}
REGION Portal2Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  7.5;
    FLOOR_TEX Fst31Tex;
    CEIL_TEX WPl05Tex;
    AMBIENT 0.7;
    FLAGS CEIL_ASCEND;
}
REGION PortalRgn
{
    FLOOR_HGT 13;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX Back01Tex;
    AMBIENT 0.8;
    BELOW Portal2Rgn;
    FLAGS FLOOR_ASCEND;
}

//GUARITA
REGION Guarita2Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  8;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX WPl05Tex;
    AMBIENT 0.6;
}
REGION GuaritaRgn
{
    FLOOR_HGT 8.5;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX Back01Tex;
    AMBIENT 0.8;
    BELOW Guarita2Rgn;
}

REGION GuaritaWallRgn
{
    FLOOR_HGT 8.5;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX Back01Tex;
    AMBIENT 0.8;
}
REGION GuaritaWindow2Rgn
{
    FLOOR_HGT 3.5;
    CEIL_HGT  4.5;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX WPl05Tex;
    AMBIENT 0.7;
}
REGION GuaritaWindowRgn
{
    FLOOR_HGT 8.5;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX Back01Tex;
    AMBIENT 0.8;
    BELOW GuaritaWindow2Rgn;
}
REGION GuaritaDoor2Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  6.5;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX WPl05Tex;
    AMBIENT 0.7;
}
REGION GuaritaDoorRgn
{
    FLOOR_HGT 8.5;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX Back01Tex;
    AMBIENT 0.8;
    BELOW GuaritaDoor2Rgn;
}


REGION MuroRgn
{
    FLOOR_HGT 6;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX back01Tex;
    AMBIENT 0.8;   
}
//*** River
REGION RiverBRgn {
    FLOOR_HGT   -16;
    CEIL_HGT        -6;
    FLOOR_TEX   FSl01aTex;
    CEIL_TEX        CWt01Tex;
    IF_ARISE    regio_arise;
    AMBIENT 0.6;
}

REGION RiverRgn{
    FLOOR_HGT   	-6;
    CEIL_HGT     	30;
    FLOOR_TEX   	FWt01Tex;
    CEIL_TEX   	back01Tex;
    //CLIP_DIST 500;
    BELOW     	RiverBRgn;
    IF_DIVE 	regio_dive;
    FLAGS		FLAG2;
    AMBIENT 	0.8;
}
//***Bridge
REGION BridgeWaterRgn
{
    FLOOR_HGT -16;
    CEIL_HGT  -6;
    FLOOR_TEX WBR18Tex;
    CEIL_TEX        CWt01Tex;
    IF_ARISE    regio_arise;
    AMBIENT 0.6;
}
REGION BridgeVaoRgn
{
    FLOOR_HGT -6;
    CEIL_HGT  0;
    FLOOR_TEX   FWt01Tex;
    CEIL_TEX WWd02Tex;
    BELOW BridgeWaterRgn;
    IF_DIVE         regio_dive;
    AMBIENT 0.6;
}
REGION BridgeViga1Rgn
{
    FLOOR_HGT 2;
    CEIL_HGT  10;
    FLOOR_TEX WWd02Tex;
    CEIL_TEX WWd02Tex;
    BELOW BridgeVaoRgn;
    AMBIENT 0.6;
}

REGION BridgeVigaRgn
{
    FLOOR_HGT 12;
    CEIL_HGT  30;
    FLOOR_TEX WWd02Tex;
    CEIL_TEX back01Tex;
    BELOW BridgeViga1Rgn;
    AMBIENT 0.8;
}
//
REGION BridgeWaterTravRgn
{
    FLOOR_HGT -16;
    CEIL_HGT  -6;
    FLOOR_TEX WBR18Tex;
    CEIL_TEX        CWt01Tex;
    IF_ARISE    regio_arise;
    AMBIENT 0.6;
}
REGION BridgeVaoTravRgn
{
    FLOOR_HGT -6;
    CEIL_HGT  -0.5;
    FLOOR_TEX   FWt01Tex;
    CEIL_TEX WWd02Tex;
    BELOW BridgeWaterTravRgn;
    IF_DIVE         regio_dive;
    AMBIENT 0.6;
}
REGION BridgeRoadTrav1Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  10;
    FLOOR_TEX FSt31Tex;
    CEIL_TEX WWd02Tex;
    BELOW BridgeVaoTravRgn;
    AMBIENT 0.6;
}

REGION BridgeRoadTravRgn
{
    FLOOR_HGT 12;
    CEIL_HGT  30;
    FLOOR_TEX WWd02Tex;
    CEIL_TEX back01Tex;
    BELOW BridgeRoadTrav1Rgn;
    AMBIENT 0.8;
}
//
REGION BridgeRoadWaterRgn
{
    FLOOR_HGT -16;
    CEIL_HGT  -6;
    FLOOR_TEX WBR18Tex;
    CEIL_TEX        CWt01Tex;
    IF_ARISE    regio_arise;
    AMBIENT 0.6;
}
REGION BridgeRoadVaoRgn
{
    FLOOR_HGT -6;
    CEIL_HGT  -0.5;
    FLOOR_TEX   FWt01Tex;
    CEIL_TEX WWd02Tex;
    BELOW BridgeRoadWaterRgn;
    IF_DIVE         regio_dive;
    AMBIENT 0.6;
}
REGION BridgeRoadRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  30;
    FLOOR_TEX FSt31Tex;
    CEIL_TEX back01Tex;
    BELOW BridgeRoadVaoRgn;
    AMBIENT 0.8;
}
//
REGION BridgeFoldedWaterRgn
{
    FLOOR_HGT -16;
    CEIL_HGT  -6;
    FLOOR_TEX WBR18Tex;
    CEIL_TEX        CWt01Tex;
    IF_ARISE    regio_arise;
    AMBIENT 0.6;
//FLAGS FLOOR_ASCEND;
}
REGION BridgeFoldedVaoRgn
{
    FLOOR_HGT -6;
    CEIL_HGT  0;
    FLOOR_TEX   FWt01Tex;
    CEIL_TEX WWd02Tex;
    BELOW BridgeFoldedWaterRgn;
    IF_DIVE         regio_dive;
    AMBIENT 0.6;
}
REGION BridgeFoldedVigaRgn
{
    FLOOR_HGT 2;
    CEIL_HGT  9.9;
    FLOOR_TEX WWd02Tex;
    CEIL_TEX WWd02Tex;
    BELOW BridgeFoldedVaoRgn;
    AMBIENT 0.6;
    FLAGS CEIL_DESCEND;
}

REGION BridgeFoldedSkyRgn
{
    FLOOR_HGT 12.1;
    CEIL_HGT  30;
    FLOOR_TEX WWd02Tex;
    CEIL_TEX back01Tex;
    BELOW BridgeFoldedVigaRgn;
    AMBIENT 0.8;
    FLAGS FLOOR_DESCEND;
}

REGION BridgeFRoadWaterRgn
{
    FLOOR_HGT -16;
    CEIL_HGT  -6;
    FLOOR_TEX WBR18Tex;
    CEIL_TEX        CWt01Tex;
    IF_ARISE    regio_arise;
    AMBIENT 0.6;

}
REGION BridgeFRoadVaoRgn
{
    FLOOR_HGT -6;
    CEIL_HGT  -0.5;
    FLOOR_TEX   FWt01Tex;
    CEIL_TEX WWd02Tex;
    BELOW BridgeFRoadWaterRgn;
    IF_DIVE         regio_dive;
    AMBIENT 0.6;
}
REGION BridgeFRoadRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  30;
    FLOOR_TEX FSt31Tex;
    CEIL_TEX back01Tex;
    BELOW BridgeFRoadVaoRgn;
    AMBIENT 0.8;
}
//
REGION BridgeColRgn
{
    FLOOR_HGT 12;
    CEIL_HGT  30;
    FLOOR_TEX WWd02Tex;
    CEIL_TEX back01Tex;
    AMBIENT 0.8;
}
REGION BridgeColFrontRgn
{
    FLOOR_HGT 4;
    CEIL_HGT  30;
    FLOOR_TEX WWd02Tex;
    CEIL_TEX back01Tex;
    AMBIENT 0.8;
}

REGION BorderRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  0;
    FLOOR_TEX WWd02Tex;
    CEIL_TEX WWd02Tex;
    CLIP_DIST 0;
    IF_ENTER	FinishPlayer;
}
//*** Road
REGION GramadoRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  30;
    FLOOR_TEX Fgr01Tex;
    CEIL_TEX back01Tex;
    AMBIENT 0.8;
    IF_ENTER setMadTroop;
}
REGION GramadoSoccerRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  30;
    FLOOR_TEX Fgr01Tex;
    CEIL_TEX back01Tex;
    AMBIENT 0.8;
	CLIP_DIST 500;
}
REGION GramadoGasRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  30;
    FLOOR_TEX Fgr01Tex;
    CEIL_TEX back01Tex;
    AMBIENT 0.8;
	CLIP_DIST 500;
}

REGION GramadoLatRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  30;
    FLOOR_TEX Fgr01Tex;
    CEIL_TEX back01Tex;
    AMBIENT 0.8;
   
}
REGION RoadRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  30;
    FLOOR_TEX FSt31Tex;
    CEIL_TEX back01Tex;
    AMBIENT 0.8;
}
REGION GramadoN6BelowRgn
{
    FLOOR_HGT -6;
    CEIL_HGT  30;
    FLOOR_TEX Fgr01Tex;
    CEIL_TEX back01Tex;
    AMBIENT 0.8;
    FLAGS FLOOR_ASCEND;
    IF_ENTER setMadTroop;
}

REGION SideWalkDeathRgn
{
    FLOOR_HGT 0.5;
    CEIL_HGT  30;
    FLOOR_TEX FCt01Tex;
    CEIL_TEX back01Tex;
    AMBIENT 0.6;
    //IF_ENTER FinishPlayer;
}
//***********QG
REGION QgPoolBRgn {
    	FLOOR_HGT   -10;
    	CEIL_HGT        -0.5;
   	FLOOR_TEX   FSl01aTex;
    	CEIL_TEX        CWt01Tex;
    	IF_ARISE    regio_arise;
    	AMBIENT 0.5;
}

REGION QgPoolRgn{
    	FLOOR_HGT   -0.5;
    	CEIL_HGT        20;
    	FLOOR_TEX   FWt01Tex;
    	CEIL_TEX        WPl05Tex;
    	//CLIP_DIST 500;
    	BELOW           QgPoolBRgn;
    	IF_DIVE         regio_dive;
    	AMBIENT 0.6;
		CLIP_DIST 200;
}
REGION QgFloor01Rgn
{
    	FLOOR_HGT 0;
    	CEIL_HGT  6;
    	FLOOR_TEX FCt01Tex;
    	CEIL_TEX WPl05Tex;
    	AMBIENT 0.6;
	CLIP_DIST 200;
}
REGION QgFloor07Rgn
{
    	FLOOR_HGT 7;
    	CEIL_HGT  13;
    	FLOOR_TEX FCt01Tex;
    	CEIL_TEX WPl05Tex;
    	AMBIENT 0.6;
	CLIP_DIST 200;
	FLAGS FLAG1;
}
REGION QgFloor14Rgn
{
    	FLOOR_HGT 14;
    	CEIL_HGT  20;
    	FLOOR_TEX FCt01Tex;
    	CEIL_TEX WPl05Tex;
    	AMBIENT 0.6;
	CLIP_DIST 200;
}
REGION QgDoubleAbRgn
{
    	FLOOR_HGT 0;
    	CEIL_HGT  6;
    	FLOOR_TEX FCt01Tex;
    	CEIL_TEX WPl05Tex;
    	AMBIENT 0.6;
	CLIP_DIST 200;
	FLAGS FLAG1;
}
REGION QgDoubleARgn
{
    	FLOOR_HGT 14;
    	CEIL_HGT  20;
    	FLOOR_TEX FCt01Tex;
    	CEIL_TEX WPl05Tex;
    	AMBIENT 0.6;
	BELOW QgDoubleAbRgn;
	CLIP_DIST 200;
	FLAGS FLAG1;
}
REGION QgDoubleBbRgn
{
    	FLOOR_HGT 7;
    	CEIL_HGT  13;
    	FLOOR_TEX FCt01Tex;
    	CEIL_TEX WPl05Tex;
    	AMBIENT 0.6;
	CLIP_DIST 200;
	FLAGS FLAG1;
}
REGION QgDoubleBRgn
{
    	FLOOR_HGT 14;
    	CEIL_HGT  20;
    	FLOOR_TEX FCt01Tex;
    	CEIL_TEX WPl05Tex;
    	AMBIENT 0.6;
	BELOW QgDoubleBbRgn;
	CLIP_DIST 200;
	FLAGS FLAG1;
}
REGION QgDoubleCbRgn
{
    	FLOOR_HGT 0;
    	CEIL_HGT  6;
    	FLOOR_TEX FCt01Tex;
    	CEIL_TEX WPl05Tex;
    	AMBIENT 0.6;
	CLIP_DIST 200;
	FLAGS FLAG1;
}
REGION QgDoubleCRgn
{
    	FLOOR_HGT 7;
    	CEIL_HGT  13;
    	FLOOR_TEX FCt01Tex;
    	CEIL_TEX WPl05Tex;
    	AMBIENT 0.6;
	BELOW QgDoubleCbRgn;
	CLIP_DIST 200;
	FLAGS FLAG1;
}
/////////////////////////////////////////////
// Garage
/////////////////////////////////////////////
REGION Garage2Rgn
{
    	FLOOR_HGT 	0;
    	CEIL_HGT  	11;
	FLOOR_TEX 	FSt31Tex;
    	CEIL_TEX  	WPl05Tex;
    	AMBIENT 	0.1;
}
REGION TruckBorderRgn
{
    	FLOOR_HGT 	0;
    	CEIL_HGT  	0;
	FLOOR_TEX 	FSt31Tex;
    	CEIL_TEX  	FSt31Tex;
    	CLIP_DIST 	0;
	FLAGS		SAVE;
}
REGION TruckHatch2Rgn
{
    	FLOOR_HGT 	0;
    	CEIL_HGT  	2.5;
	FLOOR_TEX 	FSt31Tex;
    	CEIL_TEX  	FSt31Tex;
    	AMBIENT 	-0.2;
}
REGION TruckHatch1Rgn
{
    	FLOOR_HGT 	5;
    	CEIL_HGT  	10;
	FLOOR_TEX 	FSt31Tex;
    	CEIL_TEX  	WFb02bDarkTex;
	BELOW		TruckHatch2Rgn;
    	AMBIENT 	0.1;
	FLAGS		CEIL_DESCEND,SAVE;
}
REGION TruckDoor1Rgn
{
    	FLOOR_HGT 	5;
    	CEIL_HGT  	10;
	FLOOR_TEX 	FSt31Tex;
    	CEIL_TEX  	WFb02bDarkTex;
	BELOW		TruckHatch2Rgn;
    	AMBIENT 	0.1;
	FLAGS		SAVE;
}
REGION TruckBed2Rgn
{
    	FLOOR_HGT 	0;
    	CEIL_HGT  	1.5;
	FLOOR_TEX 	FSt31Tex;
    	CEIL_TEX  	FSt31Tex;
    	AMBIENT 	-0.2;
}
REGION TruckBed1Rgn
{
    	FLOOR_HGT 	3;
    	CEIL_HGT  	11;
	FLOOR_TEX 	FSt31Tex;
    	CEIL_TEX  	WFb02bDarkTex;
	BELOW		TruckBed2Rgn;
    	AMBIENT 	0.1;
	FLAGS		STICKY,SAVE;
}
REGION TruckBedRgn
{
    	FLOOR_HGT 	3;
    	CEIL_HGT  	11;
	FLOOR_TEX 	FSt31Tex;
    	CEIL_TEX  	WFb02bDarkTex;
    	AMBIENT 	0.1;
	FLAGS		STICKY,SAVE;
}
REGION TruckSideRgn
{
    	FLOOR_HGT 	0;
    	CEIL_HGT  	2.5;
	FLOOR_TEX 	FSt31Tex;
    	CEIL_TEX  	FSt31Tex;
    	AMBIENT 	-0.2;
	FLAGS		SAVE;
}
