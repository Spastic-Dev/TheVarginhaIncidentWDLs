

//Region
REGION BorderRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  0;
	FLOOR_TEX FSt25Tex;
	CEIL_TEX  FSt25Tex;
	CLIP_DIST 0;
      AMBIENT 0.9;
	IF_ENTER	FinishPlayer;
}
//****************** Extern
REGION SideWalkRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  30;
	FLOOR_TEX FSt25Tex;
	CEIL_TEX BackTex;
	AMBIENT 0.8;
}
REGION RoadRgn
{
	FLOOR_HGT -0.5;
	CEIL_HGT  30;
	FLOOR_TEX Faf01aTex;
	CEIL_TEX BackTex;
	AMBIENT 0.8;
}
REGION RoadTransvRgn
{
	FLOOR_HGT -0.5;
	CEIL_HGT  30;
	FLOOR_TEX Faf01Tex;
	CEIL_TEX BackTex;
	AMBIENT 0.8;
}

REGION ParkRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  30;
	FLOOR_TEX Fct01Tex;
	CEIL_TEX BackTex;
	AMBIENT 0.8;
}
REGION Fvg01Rgn
{
	FLOOR_HGT 	1;
	CEIL_HGT  	30;
	FLOOR_TEX 	Fvg01Tex;
	CEIL_TEX 	BackTex;
	AMBIENT 	0.8;
}
//**************Corridor
REGION Corridor_1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}

REGION Corridor_2Rgn
{
	FLOOR_HGT 4;
	CEIL_HGT  10;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Corridor_3Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Corridor_4Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT 7;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
	IF_ENTER PlayCall;
	SKILL4 0;
}
REGION Corridor_5Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT 7;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}

REGION Corridor_7Rgn
{
	FLOOR_HGT 4;
	CEIL_HGT 11;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Corridor_8CRgn
{
	FLOOR_HGT -10;
	CEIL_HGT -3;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION CallLift02DownRgn
{
	FLOOR_HGT -10;
	CEIL_HGT -3;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
	IF_ENTER CallLift02Down;
}
REGION CallLift03DownRgn
{
	FLOOR_HGT -10;
	CEIL_HGT -3;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
	IF_ENTER CallLift03Down;
}
REGION Corridor_8LRgn
{
	FLOOR_HGT -10;
	CEIL_HGT -6;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	FLAGS FLOOR_ASCEND,CEIL_DESCEND;
	AMBIENT 0.6;
}

REGION Corridor_10Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT  30;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Corridor_9Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT  30;
	FLOOR_TEX FSt25Tex;
	CEIL_TEX BackTex;
	FLAGS FLOOR_DESCEND;
	AMBIENT 0.8;
}
REGION Corridor_9ARgn
{
	FLOOR_TEX FSt25Tex;
	CEIL_TEX  Wpl05Tex;
	FLOOR_HGT -7.5;
	CEIL_HGT 30;
	AMBIENT 0.7;
}

REGION Corridor_11Rgn
{
	FLOOR_HGT -7.5;
	CEIL_HGT -0.5;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	FLAGS FLOOR_ASCEND;
	AMBIENT 0.6;
}
REGION Corridor_12Rgn
{
	FLOOR_HGT -7.5;
	CEIL_HGT -0.5;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}

// ******************* Church
REGION ChurchRgn
{
	FLOOR_HGT 5;
	CEIL_HGT  15;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION DegrauRgn
{
	FLOOR_HGT 6;
	CEIL_HGT  15;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}

REGION PulpitoRgn
{
	FLOOR_HGT 9;
	CEIL_HGT  15;
	FLOOR_TEX WWd02Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION AltarRgn
{
	FLOOR_HGT 8;
	CEIL_HGT  14;
	FLOOR_TEX WWd02Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION BancoRgn
{
	FLOOR_HGT 6.7;
	CEIL_HGT  15;
	FLOOR_TEX WWd02Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION EncostoRgn
{
	FLOOR_HGT 8.5;
	CEIL_HGT  15;
	FLOOR_TEX WWd02Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
//********** Hall
REGION FrontHall_1p2c1Rgn
{
	FLOOR_HGT 3.5;
	CEIL_HGT  10;
	FLOOR_TEX Ffb03Tex;
	CEIL_TEX Wpl05DarkTex;
	AMBIENT 0.7;
}
REGION FrontHall_1p1c1Rgn
{
	FLOOR_HGT 12;
	CEIL_HGT 30;
	FLOOR_TEX FCt01Tex;
	CEIL_TEX BackTex;
	BELOW FrontHall_1p2c1Rgn;
	AMBIENT 0.6;
}
REGION FrontHall_1p2c2Rgn
{
	FLOOR_HGT 5.5;
	CEIL_HGT  10;
	FLOOR_TEX Ffb03aTex;
	CEIL_TEX Wpl05DarkTex;
	AMBIENT 0.7;
}
REGION FrontHall_1p1c2Rgn
{
	FLOOR_HGT 12;
	CEIL_HGT 30;
	FLOOR_TEX FCt01Tex;
	CEIL_TEX BackTex;
	BELOW FrontHall_1p2c2Rgn;
	AMBIENT 0.6;
}
REGION FrontHall_1p2c3Rgn
{
	FLOOR_HGT 4.5;
	CEIL_HGT  10;
	FLOOR_TEX Ffb03aTex;
	CEIL_TEX Wpl05DarkTex;
	AMBIENT 0.7;
}
REGION FrontHall_1p1c3Rgn
{
	FLOOR_HGT 12;
	CEIL_HGT 30;
	FLOOR_TEX FCt01Tex;
	CEIL_TEX BackTex;
	BELOW FrontHall_1p2c3Rgn;
	AMBIENT 0.6;
}
REGION FrontHall_1p2Rgn
{
	FLOOR_HGT 2;
	CEIL_HGT  10;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05DarkTex;
	AMBIENT 0.7;
	IF_ENTER  TrooperMadness;
}
REGION FrontHall_1p1Rgn
{
	FLOOR_HGT 12;
	CEIL_HGT 30;
	FLOOR_TEX FCt01Tex;
	CEIL_TEX BackTex;
	BELOW FrontHall_1p2Rgn;
	AMBIENT 0.6;
}
REGION Hall_1p2Rgn
{
	FLOOR_HGT 2;
	CEIL_HGT  10;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.5;
	IF_ENTER  TrooperMadness;
}
REGION Hall_1p1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT  19;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	BELOW Hall_1p2Rgn;
	AMBIENT 0.5;
}
REGION Hall_2Rgn
{
	FLOOR_HGT 2;
	CEIL_HGT  10;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.5;
}
REGION Hall_3Rgn
{
	FLOOR_HGT 4;
	CEIL_HGT  10;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.5;
}
REGION Hall_4Rgn
{
	FLOOR_HGT 4;
	CEIL_HGT  10;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.5;
}

//************* Doubles
REGION Double_3p2Rgn
{
	FLOOR_HGT 2;
	CEIL_HGT  10;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
	IF_ENTER CallLift01Down;
}
REGION Double_3p1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	BELOW Double_3p2Rgn;
	AMBIENT 0.6;
}
REGION Double_2p2Rgn
{
	FLOOR_HGT 2;
	CEIL_HGT  10;
	FLOOR_TEX Frb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.8;
}
REGION Double_2p1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX Frb01Tex;
	CEIL_TEX Wpl05Tex;
	BELOW Double_2p2Rgn;
	AMBIENT 0.6;
}
REGION Double_1p2Rgn
{
	FLOOR_HGT 2;
	CEIL_HGT  10;
	FLOOR_TEX Frb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Double_1p1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	BELOW Double_1p2Rgn;
	AMBIENT 0.7;
}
//**********Stair
REGION Stair_1Rgn
{
	FLOOR_HGT 6;
	CEIL_HGT  15;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Stair_2Rgn
{
	FLOOR_HGT 6;
	CEIL_HGT  15;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Stair_3Rgn
{
	FLOOR_HGT 6;
	CEIL_HGT  15;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}

REGION Stair_4Rgn
{
	FLOOR_HGT 6;
	CEIL_HGT  15;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}

REGION Stair_5Rgn
{
	FLOOR_HGT 6;
	CEIL_HGT  15;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}

//************* ROOM
REGION ROOM_1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION ROOM_2Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION ROOM_3Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION ROOM_4Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Escape_1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX Wpl05Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Escape_2Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX Wpl05Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Telhado_1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FBr02Tex;
	CEIL_TEX BackTex;
	FLAGS FLOOR_ASCEND;
	AMBIENT 0.8;
}
REGION Telhado_2Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 20;
	FLOOR_TEX FBr02Tex;
	CEIL_TEX BackTex;
	FLAGS FLOOR_ASCEND;
	AMBIENT 0.8;
}

//*********SACADA
REGION Sacadap2Rgn
{
	FLOOR_HGT 2.0;
	CEIL_HGT  10;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05DarkTex;
	AMBIENT 0.65;
}
REGION Sacadap1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05DarkTex;
	BELOW Sacadap2Rgn;
	AMBIENT 0.65;
}
REGION Sacadap0Rgn
{
	FLOOR_HGT 20;
	CEIL_HGT  30;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX BackTex;
	BELOW Sacadap1Rgn;
	AMBIENT 0.8;
}
REGION Sacada2p2Rgn
{
	FLOOR_HGT 1.5;
	CEIL_HGT  10;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05DarkTex;
	AMBIENT 0.65;
}
REGION Sacada2p1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05DarkTex;
	BELOW Sacada2p2Rgn;
	AMBIENT 0.65;
}
REGION Sacada2p0Rgn
{
	FLOOR_HGT 20;
	CEIL_HGT  30;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX BackTex;
	BELOW Sacada2p1Rgn;
	AMBIENT 0.8;
}
REGION Sacada3p2Rgn
{
	FLOOR_HGT 0.5;
	CEIL_HGT  10;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05DarkTex;
	AMBIENT 0.65;
}
REGION Sacada3p1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05DarkTex;
	BELOW Sacada3p2Rgn;
	AMBIENT 0.65;
}
REGION Sacada3p0Rgn
{
	FLOOR_HGT 20;
	CEIL_HGT  30;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX BackTex;
	BELOW Sacada3p1Rgn;
	AMBIENT 0.8;
}
REGION Parapetp2Rgn
{
	FLOOR_HGT 1;
	CEIL_HGT  10;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05DarkTex;
	AMBIENT 0.65;
}
REGION Parapetp1Rgn
{
	FLOOR_HGT 13.5;
	CEIL_HGT 19;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05DarkTex;
	BELOW Parapetp2Rgn;
	AMBIENT 0.65;
}
REGION Parapetp0Rgn
{
	FLOOR_HGT 20;
	CEIL_HGT  30;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX BackTex;
	FLAGS FLOOR_ASCEND;
	BELOW Parapetp1Rgn;
	AMBIENT 0.8;
}
REGION ColumnRgn
{
	FLOOR_HGT 20;
	CEIL_HGT  30;
	FLOOR_TEX Fct01Tex;
	CEIL_TEX BackTex;
	FLAGS FLOOR_ASCEND;
	AMBIENT 0.8;
}
REGION CrackRgn
{
	FLOOR_HGT 	2;
	CEIL_HGT  	22;
	FLOOR_TEX 	Fct01Tex;
	CEIL_TEX  	BackTex;
	AMBIENT 	0.65;
	FLAGS		BASE;
}
//**********UTI
REGION AnelUtip2Rgn
{
	FLOOR_HGT 4;
	CEIL_HGT  10;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.7;
}
REGION UtiDoorRgn
{
	FLOOR_HGT -5;
	CEIL_HGT  -4;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.7;
}

REGION AnelUtip1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX WCt10Tex;
	BELOW AnelUtip2Rgn;
	AMBIENT 0.3;
}
REGION ParapetUtip2Rgn
{
	FLOOR_HGT 4;
	CEIL_HGT  10;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.8;
}
REGION ParapetUtip1Rgn
{
	FLOOR_HGT 13.5;
	CEIL_HGT 19;
	FLOOR_TEX Wpl05Tex;
	CEIL_TEX WCt10Tex;
	BELOW ParapetUtip2Rgn;
	AMBIENT 0.8;
}
REGION UtipRgn
{
	FLOOR_HGT 	4;
	CEIL_HGT 	19;
	FLOOR_TEX 	FRb01Tex;
	CEIL_TEX 	CCt03Tex;
	AMBIENT 	0.9;
}
REGION UtiMonitorRgn
{
	FLOOR_HGT 	4;
	CEIL_HGT 	19;
	FLOOR_TEX 	CCt03Tex;
	CEIL_TEX 	CCt03Tex;
	AMBIENT 	0.9;
}
REGION UtiCamaRgn
{
	FLOOR_HGT 	6.5;
	CEIL_HGT 	19;
	FLOOR_TEX 	Ffb01Tex;
	CEIL_TEX 	CCt03Tex;
	AMBIENT 	0.9;
}
REGION UtiCamaB2Rgn
{
	FLOOR_HGT 	4;
	CEIL_HGT 	5.5;
	FLOOR_TEX 	FRb01Tex;
	CEIL_TEX 	CCt03Tex;
	AMBIENT 	0.6;
}
REGION UtiCamaB1Rgn
{
	FLOOR_HGT 	6;
	CEIL_HGT 	21;
	FLOOR_TEX 	Ffb01Tex;
	CEIL_TEX 	CCt03Tex;
	AMBIENT 	0.9;
	BELOW UtiCamaB2Rgn;
}

//***********Elevadores
REGION Lift1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT 19;
	FLOOR_TEX 	Fmt05Tex;
	CEIL_TEX 	Fmt05Tex;
	AMBIENT 0.6;
	FLAGS SAVE;
	SKILL3 2; //lower level
	SKILL4 11; //upper level
	SKILL6 0.3; // speed
	IF_ENTER lift_start;

}
REGION Lift2Rgn
{
	FLOOR_HGT 1.5;
	CEIL_HGT 19;
	FLOOR_TEX 	Fmt05Tex;
	CEIL_TEX 	Fmt05Tex;
	AMBIENT 0.6;
	FLAGS SAVE;
	SKILL3 -10; //lower level
	SKILL4 1.5; //upper level
	SKILL6 0.3; // speed
	IF_ENTER lift_start;
}
REGION Lift3Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT 19;
	FLOOR_TEX 	Fmt05Tex;
	CEIL_TEX 	Fmt05Tex;
	AMBIENT 0.6;
	FLAGS SAVE;
	SKILL3 -10; //lower level
	SKILL4 0; //upper level
	SKILL6 0.3; // speed
	IF_ENTER lift_start;

}

//***********Store
REGION Store_1Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT 8;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION StoreBoxRgn
{
	FLOOR_HGT 4;
	CEIL_HGT 8;
	FLOOR_TEX WWd05Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}

REGION Store_2Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT 8;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Store_3Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT 8;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
//***********Enfermaria
REGION EnfermariaRgn
{
	FLOOR_HGT 0;
	CEIL_HGT 7;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Enf_camaRgn
{
	FLOOR_HGT 2.5;
	CEIL_HGT 7;
	FLOOR_TEX Ffb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
//***********Lanchonete
REGION Mezanino2Rgn
{
	FLOOR_HGT -7.5;
	CEIL_HGT -0.5;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION Mezanino1Rgn
{
	FLOOR_HGT 	0;
	CEIL_HGT 	7;
	FLOOR_TEX 	FRb01Tex;
	CEIL_TEX 	Wpl05Tex;
	BELOW 	Mezanino2Rgn;
	AMBIENT 	0.6;
	FLAGS		FLAG1;
}
REGION LanchoneteRgn
{
	FLOOR_HGT -7.5;
	CEIL_HGT 8.5;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION LanchoBalcaoRgn
{
	FLOOR_HGT -5;
	CEIL_HGT -0.5;
	FLOOR_TEX WWd02Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION LanchoCirculaRgn
{
	FLOOR_HGT -7.5;
	CEIL_HGT -0.5;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
	IF_ENTER  TrooperMadness;
}
//***********Cozinha
REGION KitchenRgn
{
	FLOOR_HGT -7.5;
	CEIL_HGT -0.5;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
REGION FogaoRgn
{
	FLOOR_HGT -5;
	CEIL_HGT -0.5;
	FLOOR_TEX FMt02Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}

REGION LaundryRgn
{
	FLOOR_HGT -7.5;
	CEIL_HGT -0.5;
	FLOOR_TEX FRb01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.6;
}
//*********Window
REGION Window_1p2Rgn
{
	FLOOR_HGT 4.5;
	CEIL_HGT  9;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	AMBIENT 0.7;
}
REGION Window_1p1Rgn
{
	FLOOR_HGT 13.5;
	CEIL_HGT 18;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX Wpl05Tex;
	BELOW Window_1p2Rgn;
	AMBIENT 0.7;
}
REGION Window_1p0Rgn
{
	FLOOR_HGT 12;
	CEIL_HGT  22;
	FLOOR_TEX FWd01Tex;
	CEIL_TEX  BackTex;
	BELOW Window_1p2Rgn;
	AMBIENT 0.7;
}
////////////////////////////////////////////////////////////////
// Main Door
////////////////////////////////////////////////////////////////
REGION Door_1p2Rgn
{
	FLOOR_HGT 2.4;
	CEIL_HGT  7.0;
	FLOOR_TEX Wwd02Tex;
	CEIL_TEX  Wwd02Tex;
	AMBIENT 0.6;
}
REGION Door_1p1Rgn
{
	FLOOR_HGT 11.4;
	CEIL_HGT  16.2;
	FLOOR_TEX Wwd02Tex;
	CEIL_TEX  Wwd02Tex;
	BELOW Door_1p2Rgn;
	AMBIENT 0.6;
}

////////////////////////////////////////////////////////////////
// Actions
////////////////////////////////////////////////////////////////

ACTION CallLift01Down{
	SET Lift1Rgn.DO, call_lift_down;
}

ACTION CallLift02Down{
	SET Lift2Rgn.DO, call_lift_down;
}

ACTION CallLift03Down{
	SET Lift3Rgn.DO, call_lift_down;
}
