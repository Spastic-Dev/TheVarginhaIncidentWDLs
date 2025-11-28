INCLUDE <EsaBmp.Wdl>;

TEXTURE NullTex
{
    SCALE_XY 1,1;
    BMAPS    NULL;
}

TEXTURE WCt06Tex // reboque rústico bege
{
    SCALE_XY 	16,16;
    BMAPS 		WCt06Bmp;
    ALBEDO 0.6;
}

TEXTURE WMt01Tex // chapa brilhante
{
    SCALE_XY 16,16;
    BMAPS WMt01Bmp;
    ALBEDO 0.6;
}

TEXTURE FCt01Tex // concreto liso
{
    SCALE_XY 12,12;
    BMAPS FCt01Bmp;
    ALBEDO 0.6;
}
TEXTURE CCt01Tex // concreto liso (teto)
{
    SCALE_XY 12,12;
    BMAPS FCt01Bmp;
    ALBEDO 0.6;
    AMBIENT		-0.2;
}
TEXTURE Wgr02Tex 
{
    SCALE_XY 32,32;
    BMAPS Wgr02Bmp;
    ALBEDO 0.6;
}
TEXTURE Wgr02aTex 
{
    SCALE_XY 32,32;
    SIDES 8;
    BMAPS NULL,NULL,NULL,NULL,Wgr02Bmp,Wgr02Bmp,Wgr02Bmp,Wgr02Bmp;
    ALBEDO 0.6;
}
/*
TEXTURE BunkerTex 
{
    SCALE_XY 32,32;
    SIDES 8;
    BMAPS FGr01Bmp,FGr01Bmp,FGr01Bmp,FGr01Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp;
    ALBEDO 0.6;
}
*/
TEXTURE OpenApnlgTex 
 {
     SCALE_XY 82,82;
     BMAPS Apnlg1Bmp;
        POS_X 50;
        POS_Y 100;
 }
TEXTURE OnApnlgTex 
 {
     SCALE_XY 82,82;
     CYCLES 14;
     BMAPS Apnlg2Bmp,Apnlg3Bmp,Apnlg4Bmp,Apnlg5Bmp,Apnlg6Bmp,Apnlg7Bmp,Apnlg8Bmp,Apnlg9Bmp,Apnlg8Bmp,Apnlg7Bmp,Apnlg6Bmp,Apnlg5Bmp,Apnlg4Bmp,Apnlg3Bmp;
        DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
        POS_X 50;
        POS_Y 100;
 }
TEXTURE KeyOpenWBr10Tex 
 {
     SCALE_XY 32,32;
     BMAPS WBr10Bmp;
        ATTACH OpenApnlgTex;
//    ALBEDO 0.6;
 }
 TEXTURE KeyOnWBr10Tex 
 {
     SCALE_XY 32,32;
        CYCLES 14;
     BMAPS WBr10Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp,WBr10Bmp;
        DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
        ATTACH OnApnlgTex;
//    ALBEDO 0.6;
 }

 TEXTURE Wfc03Tex 
{
    SCALE_XY 8,3.2;
    BMAPS Wfc03Bmp;
    ALBEDO 0.6;
}
TEXTURE WFc05Tex 
{
    SCALE_XY 8,5.333;
    BMAPS Wfc05Bmp;
    ALBEDO 0.6;
}
TEXTURE Wfc01Tex 
{
    SCALE_XY 8,4.571;
    BMAPS Wfc01Bmp;
    ALBEDO 0.6;
}
TEXTURE Wbr02Tex 
{
    SCALE_XY 64,64;
    BMAPS Wbr02Bmp;
    ALBEDO 0.6;
}
TEXTURE WPl04Tex 
{
    SCALE_XY 16,8.5;
    BMAPS WPl04Bmp;
    ALBEDO 0.6;
}
TEXTURE WPl04aTex 
{
    SCALE_XY 16,8.5;
    BMAPS WPl04aBmp;
    ALBEDO 0.6;
}
TEXTURE WPl04bTex 
{
    SCALE_XY 11.885,12.8;
    BMAPS WPl04bBmp;
    ALBEDO 0.6;
}
TEXTURE WGl01Tex 
{
    	SCALE_XY 56.889,56.889;
    	BMAPS 	WGl01Bmp;
    	ALBEDO	0.3;
}

TEXTURE WPl05Tex 
{
    SCALE_XY 16,16;
    BMAPS WPl05Bmp;
    ALBEDO 0.6;
}
TEXTURE WPl03aTex 
{
    SCALE_XY 12.8,12.8;
    BMAPS WPl03aBmp;
    ALBEDO 0.6;
}
TEXTURE FGr01Tex 
{
    SCALE_XY 32,32;
    BMAPS FGr01Bmp;
    ALBEDO 0.6;
}

TEXTURE WWd04Tex 
{
    SCALE_XY 32,32;
    BMAPS WWd04Bmp;
    ALBEDO 0.6;
}
//******************

TEXTURE FTl03Tex 
{
    SCALE_XY 32,32;
    BMAPS FTl03Bmp;
    ALBEDO 0.6;
}
TEXTURE  back01Tex 
{
    SIDES           6;
    BMAPS           Back03Bmp,Back03Bmp,Back03Bmp,
			  Back03Bmp,Back03Bmp,Back03Bmp;
    FLAGS           SKY;
}
//TEXTURE FundoTex 
//{
//    SCALE_XY 16,16;
//    BMAPS WBr18Bmp;
//    ALBEDO 0.6;
//}

//********************

TEXTURE WBr13Tex 
{
    SCALE_XY 16,32;
    BMAPS WBr13Bmp;
    ALBEDO 0.6;
}
TEXTURE WBr01Tex 
{
    SCALE_XY 32,32;
    BMAPS WBr01Bmp;
    ALBEDO 0.6;
}
TEXTURE FBr03Tex 
{
    SCALE_XY 32,32;
    BMAPS FBr03Bmp;
    ALBEDO 0.6;
}
TEXTURE WWd02Tex 
{
    SCALE_XY 32,32;
    BMAPS WWd02Bmp;
    ALBEDO 0.6;
}
TEXTURE FSt31Tex 
{
    SCALE_XY 32,32;
    BMAPS FAf01Bmp;
    ALBEDO 0.6;
}

//****************
TEXTURE TBr01Tex 
{
    SCALE_XY 32,32;
    BMAPS TBr01Bmp;
    ALBEDO 0.6;
}
TEXTURE TBr01aTex 
{
    SCALE_XY 32,32;
    BMAPS TBr01Bmp;
    ALBEDO 0.6;
    AMBIENT		-0.2;
    SOUND		Cwt01Snd;
    FLAGS		SLOOP;
}
TEXTURE  GuaritaTex
 {
    SCALE_XY 32,32;
    SIDES           8;
    BMAPS           WPl05Bmp,WPl05Bmp,WPl05Bmp,WPl05Bmp,
            Back03Bmp,Back03Bmp,Back03Bmp,Back03Bmp;
    
    ALBEDO 0.6;
}

TEXTURE FSl01Tex 
{
    SCALE_XY 32,32;
    BMAPS FSl01Bmp;
    ALBEDO 0.6;
}
TEXTURE WBr10Tex 
{
    SCALE_XY 32,32;
    BMAPS WBr10Bmp;
    ALBEDO 0.6;
}
TEXTURE WSt01Tex 
{
    SCALE_XY 8,8;
    BMAPS WBr10Bmp;
    ALBEDO 0.6;
}

TEXTURE WBr18Tex 
{
    SCALE_XY 32,32;
    BMAPS WBr18Bmp;
    ALBEDO 0.6;
}

TEXTURE WFb02bTex 
{
    SCALE_XY 24,24;
    BMAPS 		WFb02bBmp;
    ALBEDO 0.4;
}
TEXTURE WFb02bDarkTex 
{
    SCALE_XY 24,24;
    BMAPS WFb02bBmp;
    AMBIENT -0.1;
}
TEXTURE WFb02aTex 
{
    SCALE_XY 24,24;
    BMAPS WFb02aBmp;
    ALBEDO 0.4;
}
