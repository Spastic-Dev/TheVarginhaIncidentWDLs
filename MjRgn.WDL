
INCLUDE <MjDepot.WDL>;
INCLUDE <MjLift.WDL>;
INCLUDE <MjEngine.WDL>;
//*********Doorpost
REGION Doorpost0Rgn 
{
	FLOOR_TEX  WMt02Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 0.5;
	CEIL_HGT 6.5;
	AMBIENT 0.6;
}
REGION Doorpost0TRgn 
{
	FLOOR_TEX  WMt02Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 0.5;
	CEIL_HGT 6.5;
	AMBIENT 0.6;
      FLAGS FLOOR_ASCEND, CEIL_DESCEND;
}

REGION Doorpost20Rgn 
{
	FLOOR_TEX  WMt02Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 20.5;
	CEIL_HGT 26.5;
	AMBIENT 0.6;
}
REGION Doorpost20TRgn 
{
	FLOOR_TEX  WMt02Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 20.5;
	CEIL_HGT 26.5;
	AMBIENT 0.6;
      FLAGS FLOOR_ASCEND, CEIL_DESCEND;
}
//*********Door
// ********************Castelo de popa 
REGION Door3Rgn // lift to control room
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	FLAGS SAVE;
}
REGION Door4Rgn // lift to control engine room
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	FLAGS SAVE;
}
REGION Door5Rgn // entrada frontal do castelo de popa esquerda
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	FLAGS SAVE;
}
REGION Door6Rgn // entrada frontal do castelo de popa direita
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	FLAGS SAVE;
}
// ********************Castelo de Meia Nau
REGION Door7Rgn // traseira
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	FLAGS SAVE;
}
REGION Door8Rgn //dianteira
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	FLAGS SAVE;
}
REGION Door9Rgn // lift arrive from engine room
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	FLAGS SAVE;
}
REGION Door10Rgn // lift to depot
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	FLAGS SAVE;
}
// ********************Castelo de proa
REGION Door11Rgn // lift to operatiom room
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	FLAGS SAVE;
}
REGION Door12Rgn //Control room, lift to Stern Castle (castelo de popa )
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
// Engine room
REGION Door13Rgn // Engine room lift arrive from stern castle
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
REGION Door14Rgn // Engine room lift to Central Castle
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
REGION Door27Rgn // Engine room access left
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
REGION Door28Rgn // Engine room access right
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}

// Depot
REGION Door15Rgn // depot - lift
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
// Operation Center
REGION Door16Rgn // lift arrive from Prow Castle
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
REGION Door17Rgn // Receptiom left door
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
REGION Door18Rgn // Receptiom right door

{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
REGION Door19Rgn // operatiom room left door
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
REGION Door20Rgn // operatiom room right door
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
/*
REGION Door22Rgn // left missile corridor
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
*/
REGION Door23Rgn // left missile corridor to hangar
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
REGION Door24Rgn // left hangar corridor 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
/*
REGION Door25Rgn // right missile corridor to hangar
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
*/
REGION Door26Rgn // right missile corridor to missile room
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wmt02Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	FLAGS SAVE;
}
 


//*******Operation Center
REGION OCRoomRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 100;
}
REGION OCCorridorRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 100;
}
REGION OCComputerRgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 5;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 100;
}
/*
REGION OCMapCol2Rgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 0;
	CEIL_HGT 2;
	AMBIENT 0.6;
	CLIP_DIST 100;
}
REGION OCMapCol1Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 6;
	CEIL_HGT 7;
	AMBIENT 0.6;
       BELOW OCMapCol2Rgn;
	CLIP_DIST 100;
}
*/

//*******Prow Deck
REGION PDPoraoA2Rgn 
{
	FLOOR_TEX FMt05Tex;
	CEIL_TEX  FMt05Tex;
	FLOOR_HGT -30;
	CEIL_HGT 7.5;
	AMBIENT 0.1;
	CLIP_DIST 100;
	FLAGS FLAG1;
}
REGION PDPoraoA1Rgn 
{
	FLOOR_TEX  FMt03aTex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 8.5;
	CEIL_HGT 30;
	AMBIENT 0.6;
	BELOW PDPoraoA2Rgn;
	CLIP_DIST 600;
}

REGION PDPoraoRgn 
{
	FLOOR_TEX  FMt03aTex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 8.5;
	CEIL_HGT 30;
	AMBIENT 0.6;
	CLIP_DIST 600;

}
REGION PDTowerRgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WMt11Tex;
	FLOOR_HGT 8;
	CEIL_HGT 22;
	AMBIENT 0.6;
	CLIP_DIST 600;
}
REGION PDCrane2Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WMt11Tex;
	FLOOR_HGT 8;
	CEIL_HGT 22;
	AMBIENT 0.6;
       FLAGS CEIL_ASCEND;
	CLIP_DIST 600;
}
REGION PDCrane1Rgn 
{
	FLOOR_TEX WMt11Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 24;
	CEIL_HGT 30;
	AMBIENT 0.6;
       BELOW PDCrane2Rgn;
       FLAGS FLOOR_ASCEND;
	CLIP_DIST 600;
}

//*******Prow Bridge
REGION PBStairRgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 24;
	CEIL_HGT 28;
	AMBIENT 0.6;
}

REGION PBBatenteLiftTRgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 20.5;
	CEIL_HGT 26.5;
	AMBIENT 0.6;
       FLAGS FLOOR_ASCEND, CEIL_DESCEND;
}
REGION PBBatenteLiftRgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 20.5;
	CEIL_HGT 26.5;
	AMBIENT 0.6;
}

REGION PBBatente2Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10.5;
	CEIL_HGT 16.5;
	AMBIENT 0.6;
}
REGION PBBatente1Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 20.5;
	CEIL_HGT 26.5;
	AMBIENT 0.6;
       BELOW PBBatente2Rgn ;
}
REGION PBBatenteTilted2Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10.5;
	CEIL_HGT 16.5;
	AMBIENT 0.6;
       FLAGS FLOOR_ASCEND, CEIL_DESCEND;
}
REGION PBBatenteTilted1Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 20.5;
	CEIL_HGT 26.5;
	AMBIENT 0.6;
       BELOW PBBatenteTilted2Rgn  ;
       FLAGS FLOOR_ASCEND, CEIL_DESCEND;
}
REGION PBWindow2Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 13;
	CEIL_HGT 16;
	AMBIENT 0.6;
}
REGION PBWindow1Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 23;
	CEIL_HGT 26;
	AMBIENT 0.6;
       BELOW PBWindow2Rgn;
}
REGION PBwALLRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.6;
}

REGION PBRoom2Rgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.6;
}
REGION PBRoom1Rgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 20;
	CEIL_HGT 28;
	AMBIENT 0.6;
       BELOW PBRoom2Rgn;
}
REGION PBBridge2Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.5;
}
REGION PBBridge1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	AMBIENT 0.6;
       BELOW PBBridge2Rgn;
}
REGION PBParapet2Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.5;
}
REGION PBParapet1Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 23;
	CEIL_HGT 30;
	AMBIENT 0.6;
       BELOW PBParapet2Rgn;
}
/*
REGION PBParapetLat2Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 12.5;
	CEIL_HGT 18;
	AMBIENT 0.5;
}
REGION PBParapetLat1Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 23;
	CEIL_HGT 30;
	AMBIENT 0.6;
       BELOW PBParapetLat2Rgn;
}
*/



//*********Midle Bridge
/*
REGION MBRoom2Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.5;
}

REGION MBRoom1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
       BELOW MBRoom2Rgn;
	AMBIENT 0.7;
}
*/
REGION MBCorridor2Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.5;
}

REGION MBCorridor1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
       BELOW MBCorridor2Rgn ;
	AMBIENT 0.7;
	FLAGS FLAG1;
}

 
//********DeckStern
REGION DKRoom2Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.5;
}

REGION DKRoom1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
       BELOW DKRoom2Rgn;
	AMBIENT 0.7;
}


//********Control Room
REGION CRBridgeP2Rgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT -7;
	CEIL_HGT -0.5;
	//BELOW ;
	AMBIENT 0.6;
	CLIP_DIST 180;
}
REGION CRBridgeP1Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
       FLOOR_HGT 3;
	CEIL_HGT 7;
	BELOW CRBridgeP2Rgn;
	AMBIENT 0.6;
	CLIP_DIST 180;
}

REGION CRBridge2Rgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT -7;
	CEIL_HGT -0.5;
	//BELOW ;
	AMBIENT 0.6;
	CLIP_DIST 180;
}
REGION CRBridge1Rgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
       FLOOR_HGT 0;
	CEIL_HGT 7;
	BELOW CRBridge2Rgn;
	AMBIENT 0.6;
	CLIP_DIST 180;
}
REGION CRDarkBRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT -7;
	CEIL_HGT -0.5;
	AMBIENT 0.2;
	CLIP_DIST 180;
}

REGION CRDark2Rgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT -7;
	CEIL_HGT -0.5;
	AMBIENT 0.2;
	CLIP_DIST 400;
}
REGION CRDark1Rgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
       FLOOR_HGT 0;
	CEIL_HGT 7;
	BELOW CRDark2Rgn;
	AMBIENT 0.2;
	CLIP_DIST 400;
} 
REGION CRRoomBRgn 
{
	FLOOR_TEX FMt05Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT -7;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 180;
}

REGION CRControlBRgn 
{
	FLOOR_TEX WMt02Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 1;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 180;
	FLAGS FLAG1;
}
/*
REGION DoorBRgn
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FRb01Tex;
	FLOOR_HGT 0;
	CEIL_HGT 0;
	AMBIENT 0.7;
	CLIP_DIST 150;
}
 */

REGION CRBatenteRgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt11Tex;
	FLOOR_HGT 0.5;
	CEIL_HGT 6.5;
	AMBIENT 0.5;
	CLIP_DIST 180;
}
REGION CRBatenteTiltedRgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt11Tex;
	FLOOR_HGT 0.5;
	CEIL_HGT 6.5;
	AMBIENT 0.5;
       FLAGS FLOOR_ASCEND,CEIL_DESCEND;
	CLIP_DIST 150;
}

REGION CRCorridorRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02TTex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 150;
}
REGION CRCorridorClipRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02TTex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 180;
}

REGION CRTrap1Rgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02TTex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.6;
	IF_ENTER panelTrap1;
	CLIP_DIST 180;
	FLAGS SAVE;
}
REGION CRTrap2Rgn 
{
	FLOOR_TEX FMt05Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT -7;
	CEIL_HGT 7;
	AMBIENT 0.6;
	IF_ENTER panelTrap2;
	CLIP_DIST 180;
	FLAGS SAVE;
}
REGION CRArriveRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02TTex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.6;
	IF_ENTER setArrivedPanel;
	CLIP_DIST 100;
	FLAGS SAVE;
}

REGION CRLampNRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX CMt02bTex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 100;
}
REGION CRLampNClipRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX CMt02bTex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 180;
}

REGION CRLampWRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX CMt02Tex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 100;
}
REGION CRLampWClipRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX CMt02Tex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 180;
}

REGION CRStairRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 220;
}
REGION CRParapetRgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 3;
	CEIL_HGT 7;
	AMBIENT 0.6;
	CLIP_DIST 180;
}
 
//**********BridgeStern
REGION BridgeStern1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	AMBIENT 0.7;
	FLAGS FLAG1;
	CLIP_DIST 900;
}
REGION BSBatenteTilted2Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10.5;
	CEIL_HGT 16.5;
	AMBIENT 0.45;
       FLAGS FLOOR_ASCEND,CEIL_DESCEND;
	CLIP_DIST 900;
}

REGION BSBatenteTilted1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
       BELOW BSBatenteTilted2Rgn ;
	AMBIENT 0.7;
}

REGION BSBatente2Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10.5;
	CEIL_HGT 16.5;
	AMBIENT 0.45;
	CLIP_DIST 900;
}

REGION BSBatente1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
       BELOW BSBatente2Rgn;
	AMBIENT 0.7;
}

REGION BSCorridorA2Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.5;
	CLIP_DIST 900;
}

REGION BSCorridorA1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
       BELOW BSCorridorA2Rgn;
	AMBIENT 0.7;
	CLIP_DIST 900;
}
REGION BSWindow2Rgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 13;
	CEIL_HGT 16;
	AMBIENT 0.5;
}

REGION BSWindow1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
       BELOW BSWindow2Rgn;
	AMBIENT 0.7;
	CLIP_DIST 900;
}

REGION BSCorridorB2Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX WMt02Tex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.5;
	CLIP_DIST 900;
}

REGION BSCorridorB1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
       BELOW BSCorridorB2Rgn;
	AMBIENT 0.7;
	FLAGS FLAG1;
	CLIP_DIST 900;
}
//************Boat
/*
REGION Boat2Rgn 
{
	FLOOR_TEX Fsl01Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT -10;
	CEIL_HGT 0;
	//BELOW ;
	AMBIENT 0.7;
	
}
*/
REGION Boat1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 0.1;
	CEIL_HGT 30;
//	BELOW Boat2Rgn;
	AMBIENT 0.7;
	CLIP_DIST 900;	
}
/*
REGION BoatBorder2Rgn 
{
	FLOOR_TEX Fsl01Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT -10;
	CEIL_HGT 0;
	//BELOW ;
	AMBIENT 0.7;
	
}
*/
REGION BoatBorder1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 1.5;
	CEIL_HGT 30;
//	BELOW BoatBorder2Rgn;
	AMBIENT 0.7;
	CLIP_DIST 1200;	
}
 
//********
/*
REGION StairSide2Rgn 
{
	FLOOR_TEX Fsl01Tex;
	CEIL_TEX WWd05Tex;
	FLOOR_HGT -10;
	CEIL_HGT 0;
	AMBIENT 0.7;
	FLAGS FLAG1;
}
*/
REGION StairSide1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 0.1;
	CEIL_HGT 30;
//	BELOW StairSide2Rgn;
	AMBIENT 0.7;
	FLAGS FLAG1;
	CLIP_DIST 900;
}
 
//******Bridges
/*
REGION BridgeProw1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 29;
	//BELOW ;
	AMBIENT 0.7;
	CLIP_DIST 900;
}
*/
REGION BridgeMidle1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	//BELOW ;
	AMBIENT 0.7;
	FLAGS FLAG1;
	CLIP_DIST 900;
}

//******* Deck
REGION DeckProwA2Rgn 
{
	FLOOR_TEX FMt05Tex;
	CEIL_TEX  FMt05Tex;
	FLOOR_HGT -30;
	CEIL_HGT 6;
	AMBIENT 0.1;
}

REGION DeckProwA1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 8;
	CEIL_HGT 30;
	BELOW DeckProwA2Rgn;
	AMBIENT 0.7;
	FLAGS FLAG1;
	CLIP_DIST 900;
}
REGION DeckProw1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 8;
	CEIL_HGT 30;
	CLIP_DIST 900;
	AMBIENT 0.7;
	FLAGS FLAG1;
}
REGION DeckGapRgn 
{
	FLOOR_TEX FMt05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT -30;
	CEIL_HGT 30;
	AMBIENT 0.1;
	IF_ENTER fallInDepot;
	FLAGS SAVE;
}

REGION DeckStern1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 10;
	CEIL_HGT 30;
	AMBIENT 0.7;
	IF_ENTER setTroopWay6;
	FLAGS SAVE;
	CLIP_DIST 900;
}
REGION DeckMidle1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 10;
	CEIL_HGT 30;
	CLIP_DIST 900;
	AMBIENT 0.7;
}
REGION Stern1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 10;
	CEIL_HGT 30;
	//BELOW ;
	AMBIENT 0.7;
	CLIP_DIST 900;
}

 REGION Prow1Rgn 
{
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Back05Tex;
	FLOOR_HGT 10;
	CEIL_HGT 30;
	CLIP_DIST 900;
	AMBIENT 0.7;
}
// ****************
// ***** under sea
REGION USBottonShipRgn // fundo do navio
{
	FLOOR_TEX 	Fsl01aTex;
	CEIL_TEX  	WMt06dTex;
	FLOOR_HGT 	-40;
	CEIL_HGT 	-8;
      AMBIENT 	-0.1;
	CLIP_DIST 1050;
}
REGION USBottonBoatRgn // fundo do bote
{
	FLOOR_TEX 	Fsl01aTex;
	CEIL_TEX  	WWd05STex;
	FLOOR_HGT 	-40;
	CEIL_HGT 	-1;
      	AMBIENT 	-0.1;
	CLIP_DIST 1050;
}
REGION USOcean2Rgn {
	FLOOR_HGT	-40;
	CEIL_HGT	0;
	FLOOR_TEX	Fsl01aTex;
	CEIL_TEX	CWt01Tex;
	IF_ARISE 	arise;
	AMBIENT 	-0.1;
	CLIP_DIST 1200;
	GENIUS	LightGenius;
}

REGION USOcean1Rgn{
	FLOOR_HGT	0;
	CEIL_HGT	30;
	FLOOR_TEX	FWt01Tex;
	CEIL_TEX	back05Tex;
	AMBIENT 	0.1;
	BELOW		USOcean2Rgn;
	IF_DIVE	regio_dive;
	CLIP_DIST 1200;
}

REGION USOcean2aRgn {
	FLOOR_HGT	-39;
	CEIL_HGT	0;
	FLOOR_TEX	Fsl01aTex;
	CEIL_TEX	CWt01Tex;
	IF_ARISE 	arise;
	IF_ENTER	FinishPlayer;
	AMBIENT 	-0.1;
	CLIP_DIST 	1200;
	GENIUS	LightGenius;
}

REGION USOcean1aRgn{
	FLOOR_HGT	0;
	CEIL_HGT	30;
	FLOOR_TEX	FWt01Tex;
	CEIL_TEX	back05Tex;
	AMBIENT 	0.1;
	BELOW		USOcean2aRgn;
	IF_DIVE	regio_dive;
	IF_ENTER	FinishPlayer;
	CLIP_DIST 	1200;
}

REGION Ocean2Rgn {
	FLOOR_HGT	-40;
	CEIL_HGT		0;
	FLOOR_TEX	Fsl01aTex;
	CEIL_TEX		CWt01Tex;
	IF_ARISE 	regio_arise;
	AMBIENT 0.1;
	CLIP_DIST 1200;
}

REGION Ocean1Rgn{
	FLOOR_HGT	0;
	CEIL_HGT		30;
	FLOOR_TEX	FWt01Tex;
	CEIL_TEX		back05Tex;
	AMBIENT 0.7;
	BELOW			Ocean2Rgn;
	IF_DIVE 	dive;
	CLIP_DIST 1200;
	FLAGS FLAG2;
}
REGION Ocean2aRgn {
	FLOOR_HGT	-39;
	CEIL_HGT		0;
	FLOOR_TEX	Fsl01aTex;
	CEIL_TEX		CWt01Tex;
	IF_ARISE 	regio_arise;
	IF_ENTER	FinishPlayer;
	AMBIENT 0.1;
	CLIP_DIST 1200;
}

REGION Ocean1aRgn{
	FLOOR_HGT	0;
	CEIL_HGT		30;
	FLOOR_TEX	FWt01Tex;
	CEIL_TEX		back05Tex;
	AMBIENT 0.7;
	BELOW			Ocean2aRgn;
	IF_DIVE 	dive;
	IF_ENTER	FinishPlayer;
	CLIP_DIST 1200;
	FLAGS FLAG2;
}

//*******************

REGION LandRgn 
{
	FLOOR_TEX	FWt01Tex;
	CEIL_TEX  	Back05Tex;
	FLOOR_HGT 	0;
	CEIL_HGT 	30;
	AMBIENT 	0.7;
}


REGION BorderRgn 
{
	FLOOR_TEX	FSl01Tex;
	CEIL_TEX  	FSl01Tex;
	FLOOR_HGT 	0;
	CEIL_HGT 	0;
	CLIP_DIST 	0;
	IF_ENTER	FinishPlayer;
}

