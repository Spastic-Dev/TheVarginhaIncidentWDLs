REGION BorderRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  0;
	FLOOR_TEX Fct01Tex;
	CEIL_TEX Fct01Tex;
	CLIP_DIST 0;
	IF_ENTER	FinishPlayer;
}
REGION WallRgn
{
	FLOOR_HGT 14;
	CEIL_HGT  30;
	FLOOR_TEX Fct01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
}
REGION WallSlopedRgn
{
	FLOOR_HGT 14;
	CEIL_HGT  30;
	FLOOR_TEX Fct01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
}
REGION StartRgn
{
	FLOOR_HGT 8;
	CEIL_HGT  30;
	FLOOR_TEX Fvg01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
}

//**************Landing Zone
REGION LandingRgn
{
	FLOOR_HGT 10;
	CEIL_HGT  30;
	FLOOR_TEX Fvg01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
}
REGION GrassRgn
{
	FLOOR_HGT 10;
	CEIL_HGT  30;
	FLOOR_TEX Fvg01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;

}
REGION GrassPlaneRgn
{
	FLOOR_HGT 10;
	CEIL_HGT  30;
	FLOOR_TEX Fvg51Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
}

REGION GrassTunel2Rgn
{
	FLOOR_HGT -2;
	CEIL_HGT  2;
	FLOOR_TEX Wbr01Tex;
	CEIL_TEX  Cbr01Tex;
	AMBIENT 0.2;
}
REGION GrassTunel1Rgn
{
	FLOOR_HGT 10;
	CEIL_HGT  30;
	FLOOR_TEX Fvg01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	BELOW GrassTunel2Rgn;
}
REGION GrassTunelSide2Rgn
{
	FLOOR_HGT -2;
	CEIL_HGT  2;
	FLOOR_TEX Wbr01Tex;
	CEIL_TEX  Cbr01Tex;
	AMBIENT 0.2;
	FLAGS FLOOR_LIFTED, CEIL_LIFTED;
}
REGION GrassTunelSide1Rgn
{
	FLOOR_HGT 10;
	CEIL_HGT  30;
	FLOOR_TEX Fvg01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	BELOW GrassTunelSide2Rgn;
}

REGION CisternRgn
{
	FLOOR_HGT 12;
	CEIL_HGT  30;
	FLOOR_TEX Wbr03Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
}
REGION CochoRgn
{
	FLOOR_HGT 10.3;
	CEIL_HGT  17;
	FLOOR_TEX Fct01Tex;
	CEIL_TEX Wwd04Tex;
	AMBIENT 0.6;
}
REGION TelhaCochoRgn
{
	FLOOR_HGT 17.1;
	CEIL_HGT  30;
	FLOOR_TEX Fbr02Tex;
	CEIL_TEX back01Tex;
	BELOW CochoRgn;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
}
REGION PillarRgn
{
	FLOOR_HGT 17.1;
	CEIL_HGT  30;
	FLOOR_TEX Fbr02Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
}

REGION TunelBlRgn
{
	FLOOR_HGT -2;
	CEIL_HGT  2;
	FLOOR_TEX Wbr01Tex;
	CEIL_TEX Cbr01Tex;
	AMBIENT 0.2;
}
REGION TunelRgn
{
	FLOOR_HGT 10;
	CEIL_HGT  30;
	FLOOR_TEX Fvg01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	BELOW TunelBlRgn;
}
REGION TunelSdBlRgn
{
	FLOOR_HGT -2;
	CEIL_HGT  2;
	FLOOR_TEX Wbr01Tex;
	CEIL_TEX  Cbr01Tex;
	AMBIENT 0.2;
	FLAGS FLOOR_LIFTED, CEIL_LIFTED;
}
REGION TunelSdRgn
{
	FLOOR_HGT 10;
	CEIL_HGT  30;
	FLOOR_TEX Fvg01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	BELOW TunelSdBlRgn;
}
REGION TunelBorderBlRgn
{
	FLOOR_HGT -2;
	CEIL_HGT  2;
	FLOOR_TEX Wbr01Tex;
	CEIL_TEX  Cbr01Tex;
	AMBIENT 0.2;
}
REGION TunelBorderRgn
{
	FLOOR_HGT 12;
	CEIL_HGT  30;
	FLOOR_TEX Wbr03Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	BELOW TunelBorderBlRgn;
}
REGION TunelBorderSdBlRgn
{
	FLOOR_HGT -2;
	CEIL_HGT  2;
	FLOOR_TEX Cbr01Tex;
	CEIL_TEX  Cbr01Tex;
	AMBIENT 0.2;
	FLAGS FLOOR_LIFTED, CEIL_LIFTED;
}
REGION TunelBorderSdRgn
{
	FLOOR_HGT 12;
	CEIL_HGT  30;
	FLOOR_TEX Wbr03Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	BELOW TunelBorderSdBlRgn;
}

//************************************* End Landing
//**************** Road
REGION RoadRgn
{
	FLOOR_HGT 9.5;
	CEIL_HGT  30;
	FLOOR_TEX Fsl02Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
}

//************************************* End Road
//**************** Lake
REGION LakeWallBackRgn
{
	FLOOR_HGT 11;
	CEIL_HGT  30;
	FLOOR_TEX Wbr03Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
}
REGION LakeWallSideRgn
{
	FLOOR_HGT 11;
	CEIL_HGT  30;
	FLOOR_TEX Wbr03Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
}
REGION LakeWallFrontRgn
{
	FLOOR_HGT 4;
	CEIL_HGT  30;
	FLOOR_TEX Wbr03Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
}
REGION LakeTunel2Rgn
{
	FLOOR_HGT -2;
	CEIL_HGT  2;
	FLOOR_TEX Wbr01Tex;
	CEIL_TEX Cbr01Tex;
	AMBIENT 0.2;
}
REGION LakeTunel1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT  30;
	FLOOR_TEX Wbr03Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	BELOW LakeTunel2Rgn;
}
REGION LakeTunelSide2Rgn
{
	FLOOR_HGT -2;
	CEIL_HGT  2;
	FLOOR_TEX Wbr01Tex;
	CEIL_TEX Cbr01Tex;
	AMBIENT 0.2;
	FLAGS FLOOR_LIFTED, CEIL_LIFTED;
}
REGION LakeTunelSide1Rgn
{
	FLOOR_HGT 11;
	CEIL_HGT  30;
	FLOOR_TEX Wbr03Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	BELOW LakeTunelSide2Rgn;
}

//************************************* End Lake
//**************** Store
REGION StoreRgn
{
	FLOOR_HGT 9;
	CEIL_HGT  30;
	FLOOR_TEX Wbr03Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	
}



REGION StoreWallRgn
{
	FLOOR_HGT 11;
	CEIL_HGT  30;
	FLOOR_TEX Fct01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
}
REGION StoreHouse2Rgn
{
	FLOOR_HGT 10.25;
	CEIL_HGT  16.9;
	FLOOR_TEX Ftl01Tex;
	CEIL_TEX Wwd04Tex;
	AMBIENT 0.5;
	
}
REGION StoreHouse1Rgn
{
	FLOOR_HGT 17;
	CEIL_HGT  30;
	FLOOR_TEX Fbr02Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
	BELOW StoreHouse2Rgn;
}
REGION StoreTable2Rgn
{
	FLOOR_HGT 12.0;
	CEIL_HGT  16.9;
	FLOOR_TEX Wwd04Tex;
	CEIL_TEX Wwd04Tex;
	AMBIENT 0.5;
	
}
REGION StoreTable1Rgn
{
	FLOOR_HGT 17;
	CEIL_HGT  30;
	FLOOR_TEX Fbr02Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
	BELOW StoreTable2Rgn;
}
REGION StoreBorderHouseRgn
{
	FLOOR_HGT 17;
	CEIL_HGT  30;
	FLOOR_TEX Fbr02Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
}
REGION StoreWindow2Rgn
{
	FLOOR_HGT 13;
	CEIL_HGT  15;
	FLOOR_TEX Fct01Tex;
	CEIL_TEX Fct01Tex;
	AMBIENT 0.7;
}
REGION StoreWindow1Rgn
{
	FLOOR_HGT 17;
	CEIL_HGT  30;
	FLOOR_TEX Fbr02Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
	BELOW StoreWindow2Rgn;
}

//**************************************  End Store
//**************** Caixa dágua
REGION BoxColumnRgn
{
	FLOOR_HGT 25;
	CEIL_HGT  30;
	FLOOR_TEX Fct01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
}
REGION Box2Rgn
{
	FLOOR_HGT 10;
	CEIL_HGT  20;
	FLOOR_TEX Fsl02Tex;
	CEIL_TEX Fct01Tex;
	AMBIENT 0.6;
	
}
REGION Box1Rgn
{
	FLOOR_HGT 25;
	CEIL_HGT  30;
	FLOOR_TEX Fct01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
	BELOW Box2Rgn;
}

//************************************* End Caixa dágua
//**************** Houses
REGION TerreiroRgn
{
	FLOOR_HGT 10; 
	CEIL_HGT  30;
	FLOOR_TEX Fsl02Tex;
	CEIL_TEX back01Tex;
	IF_LEAVE	StartAssault;
	AMBIENT 0.8;
}
REGION Terreiro1Rgn
{
	FLOOR_HGT 10; 
	CEIL_HGT  30;
	FLOOR_TEX Fsl02Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
}
REGION HouseRgn
{
	FLOOR_HGT 16; 
	CEIL_HGT  30;
	FLOOR_TEX Fbr02Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
}
REGION HouseBorder2Rgn
{
	FLOOR_HGT 10; 
	CEIL_HGT  15.9; 
	FLOOR_TEX Fsl02Tex;
	CEIL_TEX Wwd04Tex;
	AMBIENT 0.6;
	
}
REGION HouseBorder1Rgn
{
	FLOOR_HGT 16; 
	CEIL_HGT  30;
	FLOOR_TEX Fbr02Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
	FLAGS FLOOR_LIFTED;
	BELOW HouseBorder2Rgn;
}
//************************************* End Houses
//*****************Woodland
REGION RiverRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  30;
	FLOOR_TEX Fsl01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
}
REGION WoodRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  9;
	FLOOR_TEX Fsl01Tex;
	CEIL_TEX back01Tex;
	AMBIENT 0.8;
}

//************************************* End Woodland

REGION Water2Rgn {
   	FLOOR_HGT   -7;
      CEIL_HGT	3;
	FLOOR_TEX	Fsl01aTex;
	CEIL_TEX	CWt01Tex;
	IF_ARISE 	regio_arise;
	AMBIENT 	0.05;
}

REGION Water1Rgn{
   	FLOOR_HGT	3;
   	CEIL_HGT	100;
	FLOOR_TEX	FWt01Tex;
	CEIL_TEX	back01Tex;
	AMBIENT 	0.7;
	BELOW		Water2Rgn;
	IF_DIVE 	regio_dive;
}

