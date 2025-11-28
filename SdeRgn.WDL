// ***** Repair Place
REGION RPMainRgn 
{
	FLOOR_TEX FMt04Tex;
	CEIL_TEX Wct50aTex;
	FLOOR_HGT 0;
	CEIL_HGT 18;
	AMBIENT 0.6;
}
REGION RPVigaRgn 
{
	FLOOR_TEX FMt04Tex;
	CEIL_TEX Wct50aTex;
	FLOOR_HGT 0;
	CEIL_HGT 16;
	AMBIENT 0.6;
}
REGION RPVigaMezaRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wct50aTex;
	FLOOR_HGT 9;
	CEIL_HGT 16;
	AMBIENT 0.6;
}

REGION RPDoorRgn 
{
	FLOOR_TEX FMt04Tex;
	CEIL_TEX Wct50aTex;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	AMBIENT 0.6;

}
REGION RPDoorLRgn 
{
	FLOOR_TEX FMt04Tex;
	CEIL_TEX Wct50aTex;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	AMBIENT 0.6;
       FLAGS CEIL_DESCEND;
}

REGION RPMezaninoRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wct50aTex;
	FLOOR_HGT 9;
	CEIL_HGT 18;
	AMBIENT 0.6;
}

//**************

REGION MessRgn 
{
	FLOOR_TEX WalkWSt02Tex;
	CEIL_TEX FCt01Tex;
	FLOOR_HGT 10;
	CEIL_HGT 17;
	AMBIENT 0.5;
}
 
//*********Big Gate
REGION BigGateLRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  0;
	FLOOR_TEX FCt01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.5;
	FLAGS SAVE;
	
}
REGION BigGateRRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  0;
	FLOOR_TEX FCt01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.5;
	FLAGS SAVE;
}

// ****Hangar

REGION HgMainRgn 
{
	FLOOR_TEX FMt04Tex; 
	CEIL_TEX Wct50aTex;
	FLOOR_HGT 0;
	CEIL_HGT 18;
	AMBIENT 0.6;
       IF_ENTER setAlarm;
}

REGION HgBatenteRgn 
{
	FLOOR_TEX FMt04Tex;
	CEIL_TEX Wct50aTex;
	FLOOR_HGT 0;
	CEIL_HGT 16;
	AMBIENT 0.6;
       
}
REGION HgBatenteTiltedRgn 
{
	FLOOR_TEX FMt04Tex;
	CEIL_TEX Wct50aTex;
	FLOOR_HGT 0;
	CEIL_HGT 16;
	AMBIENT 0.6;
       FLAGS FLOOR_ASCEND, CEIL_DESCEND;
}

REGION HgVigaRgn 
{
	FLOOR_TEX FMt04Tex; //Wct50aTex;
	CEIL_TEX  Wct50aTex;
	FLOOR_HGT 0;
	CEIL_HGT 14;
	AMBIENT 0.6;
}
REGION HgVigaFoldedRgn 
{
	FLOOR_TEX FMt04Tex; // Wct50aTex;
	CEIL_TEX Wct50aTex;
	FLOOR_HGT 0;
	CEIL_HGT 11;
	AMBIENT 0.6;
       FLAGS CEIL_ASCEND;
}

REGION HgHoleRgn 
{
	FLOOR_TEX FCt01Tex;
	CEIL_TEX FCt01Tex;
	FLOOR_HGT 2.5;
	CEIL_HGT 16;
	AMBIENT 0.6;
}
 
//*****Door1
REGION Door1BatenteRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  4.5;
	FLOOR_TEX FCt01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.5;	
}
REGION Door1Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT  0;
	FLOOR_TEX FCt01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.5;	
}
//*****Door2
REGION Door2BatenteRgn
{
	FLOOR_HGT 11;
	CEIL_HGT  15.5;
	FLOOR_TEX FCt01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.5;	
}
REGION Door2Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT  0;
	FLOOR_TEX FCt01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.5;	
}
//*****Door3
REGION Door3BatenteRgn
{
	FLOOR_HGT 8;
	CEIL_HGT  12.5;
	FLOOR_TEX FCt01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.5;	
}
REGION Door3Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT  0;
	FLOOR_TEX FCt01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.5;	
}

//******** Control Room
REGION ControlRoomRgn
{
	FLOOR_HGT 13;
	CEIL_HGT  19;
	FLOOR_TEX FRb01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.5;
	
}
REGION ControlWindowRgn
{
	FLOOR_HGT 15.5;
	CEIL_HGT  17;
	FLOOR_TEX FCt01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.5;
	
}
REGION ControlCorridorRgn
{
	FLOOR_HGT 13;
	CEIL_HGT  19;
	FLOOR_TEX FCt01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.5;
	
}

//****Pedreira
REGION Pedreira1Rgn
{
	FLOOR_HGT 5;
	CEIL_HGT  20;
	FLOOR_TEX FSl05Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	
}
REGION Pedreira2Rgn
{
	FLOOR_HGT 7;
	CEIL_HGT  20;
	FLOOR_TEX FSl05Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	
}
REGION Pedreira3Rgn
{
	FLOOR_HGT 13;
	CEIL_HGT  20;
	FLOOR_TEX FSl05Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	
}
REGION PedreiraBRgn
{
	FLOOR_HGT 1;
	CEIL_HGT  5;
	FLOOR_TEX FSl05Tex ;
	CEIL_TEX FSl04Tex;
	AMBIENT 0.3;
	
}
REGION PedreiraARgn
{
	FLOOR_HGT 10;
	CEIL_HGT  20;
	FLOOR_TEX FSl05Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	BELOW PedreiraBRgn;
}

//************
REGION Chupa1Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT  5;
	FLOOR_TEX WalkWSt02Tex ;
	CEIL_TEX DarkWSl01Tex;
	AMBIENT 0.3;
	
}
REGION Chupa2Rgn
{
	FLOOR_HGT 1;
	CEIL_HGT  6;
	FLOOR_TEX WalkWSt02Tex ;
	CEIL_TEX DarkWSt02Tex;
	AMBIENT 0.2;
	
}
REGION Chupa3Rgn
{
	FLOOR_HGT 2;
	CEIL_HGT  7;
	FLOOR_TEX WalkWSt02Tex ;
	CEIL_TEX DarkWMt11Tex;
	AMBIENT 0.3;
	
}
REGION Chupa4Rgn
{
	FLOOR_HGT 3;
	CEIL_HGT  8;
	FLOOR_TEX WalkWSt02Tex ;
	CEIL_TEX DarkWMt11Tex;
	AMBIENT 0.1;
	
}
REGION Chupa5Rgn
{
	FLOOR_HGT 4;
	CEIL_HGT  9;
	FLOOR_TEX WalkWSt02Tex ;
	CEIL_TEX DarkFSt01Tex;
	AMBIENT 0.2;
	
}
REGION Chupa6Rgn
{
	FLOOR_HGT 5;
	CEIL_HGT  10;
	FLOOR_TEX WalkWSt02Tex ;
	CEIL_TEX DarkWSt02Tex;
	AMBIENT 0.35;
	
}
REGION Chupa7Rgn
{
	FLOOR_HGT 6;
	CEIL_HGT  11;
	FLOOR_TEX WalkWSt02Tex ;
	CEIL_TEX DarkWSt02Tex;
	AMBIENT 0.1;
	
}
REGION Chupa8Rgn
{
	FLOOR_HGT 7;
	CEIL_HGT  12;
	FLOOR_TEX WalkWSt02Tex ;
	CEIL_TEX DarkWSt02Tex;
	AMBIENT 0.2;
	
}
REGION Chupa9Rgn
{
	FLOOR_HGT 8;
	CEIL_HGT  13;
	FLOOR_TEX WalkWSt02Tex ;
	CEIL_TEX DarkFSt01Tex;
	AMBIENT 0.3;
	
}
REGION Chupa10Rgn
{
	FLOOR_HGT 9;
	CEIL_HGT  14;
	FLOOR_TEX WalkWSt02Tex ;
	CEIL_TEX DarkWSl01Tex;
	AMBIENT 0.2;
	
}
REGION Chupa11Rgn
{
	FLOOR_HGT 10;
	CEIL_HGT  15;
	FLOOR_TEX WalkWSt02Tex ;
	CEIL_TEX DarkFSt01Tex;
	AMBIENT 0.3;
	
}
REGION Chupa12Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT  16;
	FLOOR_TEX WalkWSt02Tex ;
	CEIL_TEX DarkWMt11Tex;
	AMBIENT 0.3;
	
}


//********House

REGION House1Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT  20;
	FLOOR_TEX FTl01Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
}
REGION HouseDoor2Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT  6;
	FLOOR_TEX FBr02Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.7;
	
}
REGION HouseDoor1Rgn
{
	FLOOR_HGT 9;
	CEIL_HGT  20;
	FLOOR_TEX WSt01Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	BELOW HouseDoor2Rgn;
	FLAGS FLOOR_ASCEND;
	
}
REGION HouseWindow2Rgn
{
	FLOOR_HGT 3;
	CEIL_HGT  5;
	FLOOR_TEX FCt01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.7;
	
}
REGION HouseWindow1Rgn
{
	FLOOR_HGT 9;
	CEIL_HGT  20;
	FLOOR_TEX FBr02Tex;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	BELOW HouseWindow2Rgn;

	
}
REGION HouseWallRgn
{
	FLOOR_HGT 9;
	CEIL_HGT  20;
	FLOOR_TEX WSt01Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	
}

//******** portera
REGION PorteraCaidaRgn
{
	FLOOR_HGT 1;
	CEIL_HGT  20;
	FLOOR_TEX WSt01Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	
}
REGION PorteraColRgn
{
	FLOOR_HGT 8;
	CEIL_HGT  20;
	FLOOR_TEX FSl05Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	
	
}

REGION PorteraWallRgn
{
	FLOOR_HGT 6;
	CEIL_HGT  20;
	FLOOR_TEX FSl05Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	FLAGS FLOOR_DESCEND;
	
}


//*********
REGION LandingRgn
{
	FLOOR_HGT 0.50;
	CEIL_HGT  20;
	FLOOR_TEX Faf01bTex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	
}

// inicio
REGION RoadRgn
{
	FLOOR_HGT -0.5;
	CEIL_HGT  20;
	FLOOR_TEX FSl01Tex;
	CEIL_TEX Back01Tex;
	AMBIENT 0.6;
}
REGION StonesRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  20;
	FLOOR_TEX FSt01Tex;
	CEIL_TEX Back01Tex;
	AMBIENT 0.6;
}

REGION RoadInnerRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  20;
	FLOOR_TEX  FSl01Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	
}
REGION GrassRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  20;
	FLOOR_TEX FGr01Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	
}

REGION EscarpaRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  20;
	FLOOR_TEX WSl01Tex; //FSl05Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	FLAGS FLOOR_ASCEND;
	IF_ENTER FinishPlayer;
}
REGION EscarpaSafeRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  20;
	FLOOR_TEX WSl01Tex;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	FLAGS FLOOR_ASCEND;
}
REGION BorderRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  0;
	FLOOR_TEX FGr01Tex;
	CEIL_TEX FGr01Tex;
	CLIP_DIST 0;
	AMBIENT   0.6;
	IF_ENTER	FinishPlayer;
}

REGION VigaRoadBelowRgn
{
	FLOOR_HGT 	-0.5;
	CEIL_HGT  	1.5;
	FLOOR_TEX 	FSl01Tex;
	CEIL_TEX 	WWd01Tex;
	AMBIENT 	0.5;
}
REGION VigaRoadInnerBelowRgn
{
	FLOOR_HGT 	0;
	CEIL_HGT  	1.5;
	FLOOR_TEX  	FSl01Tex ;
	CEIL_TEX 	WWd01Tex;
	AMBIENT 	0.5;
}
REGION VigaRoadRgn
{
	FLOOR_HGT 	2.5;
	CEIL_HGT  	20;
	FLOOR_TEX 	WWd01Tex;
	CEIL_TEX 	Back01Tex;
	BELOW		VigaRoadBelowRgn;
	AMBIENT 	0.7;
}
REGION VigaRoadInnerRgn
{
	FLOOR_HGT 	2.5;
	CEIL_HGT  	20;
	FLOOR_TEX  	WWd01Tex ;
	CEIL_TEX 	Back01Tex;
	BELOW		VigaRoadInnerBelowRgn;
	AMBIENT 	0.7;
}
REGION VigaRgn
{
	FLOOR_HGT 	4;
	CEIL_HGT  	20;
	FLOOR_TEX  	WWd01Tex ;
	CEIL_TEX 	Back01Tex;
	AMBIENT 	0.7;
}

/* NOT USED
REGION HgSpotRgn 
{
	FLOOR_TEX FMt04Tex; // FCt01Tex;
	CEIL_TEX FMt04Tex;
	FLOOR_HGT 0;
	CEIL_HGT 15;
	AMBIENT 1;
}

REGION RPStairRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wct50aTex;
	FLOOR_HGT 0;
	CEIL_HGT 18;
	AMBIENT 0.6;
}
REGION HousetelhadoRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  20;
	FLOOR_TEX FBr02Tex ;
	CEIL_TEX Back01Tex;
	AMBIENT 0.7;
	FLAGS FLOOR_ASCEND;
	
}

REGION WaterDepotRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  10;
	FLOOR_TEX FSl01Tex ;
	CEIL_TEX FCt01Tex;
	AMBIENT 0.7;
	
}

*/