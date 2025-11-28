INCLUDE <RegioBmp.Wdl>;
/////////////////////////////////////////////////////////////////
// Textures
/////////////////////////////////////////////////////////////////
TEXTURE NullTex
{
	SCALE_XY 1,1;
	BMAPS    NULL;
}
TEXTURE BackTex
{
	SIDES 6;
	BMAPS Csk01Bmp,Csk01Bmp,Csk01Bmp,Csk01Bmp,Csk01Bmp,Csk01Bmp;
	FLAGS SKY;
}
TEXTURE WMt23Tex 
{
	SCALE_XY 42.667,51.2;
	BMAPS WMt23Bmp;
	ALBEDO 0.2;
}

TEXTURE CCt03Tex 
{
	SCALE_XY 16,16;
	BMAPS CCt03Bmp;
	ALBEDO 0.2;
}
TEXTURE DMt01Tex 
{
	SCALE_XY 32,21.333;
	BMAPS		DMt01Bmp;
	ALBEDO 0.2;                      
}

TEXTURE WWd05Tex 
{
	SCALE_XY 32,32;
	BMAPS WWd05Bmp;
	ALBEDO 0.2;
}
TEXTURE WWd02aTex 
{
	SCALE_XY 16,16;
	BMAPS WWd02aBmp;
	ALBEDO 0.2;
}
TEXTURE WWd02a1Tex 
{
	SCALE_XY 32,32;
	BMAPS WWd02aBmp;
	ALBEDO 0.2;
}

TEXTURE WWd02bTex 
{
	SCALE_XY 16,16;
	BMAPS WWd02bBmp;
	ALBEDO 0.2;
}
TEXTURE WWd02b1Tex 
{
	SCALE_XY 32,32;
	BMAPS WWd02bBmp;
	ALBEDO 0.2;
}

TEXTURE Wbr04Tex 
{
	SCALE_XY 48,48;
	BMAPS Wbr04Bmp;
	ALBEDO 0.5;
}
TEXTURE Wgr02Tex 
{
	SCALE_XY 32,32;
	BMAPS Wgr02Bmp;
	ALBEDO 0.5;
}
TEXTURE FAF01aTex 
{
	SCALE_XY 32,32;
	BMAPS FAF01aBmp;
	ALBEDO 0.5;
}
TEXTURE FAF01Tex 
{
	SCALE_XY 32,32;
	BMAPS FAF01Bmp;
	ALBEDO 0.5;
}
TEXTURE FSt25Tex 
{
	SCALE_XY 16,16;
	BMAPS Fct01Bmp;
	ALBEDO 0.5;
}
TEXTURE Fvg01Tex 
{
    SCALE_XY 32,32;
    BMAPS Fvg01Bmp;
    ALBEDO 0.5;
}
TEXTURE Fct01Tex
{
	SCALE_XY 12,12;
	BMAPS Fct01Bmp;
	ALBEDO 0.5;
}
TEXTURE FWd01Tex 
{
	SCALE_XY 48,48;
	BMAPS FWd01Bmp;
	ALBEDO 0.5;
}
TEXTURE WWd02Tex 
{
	SCALE_XY 32,32;
	BMAPS WWd02Bmp;
	ALBEDO 0.5;
}
TEXTURE WCt01Tex 
{
	SCALE_XY 32,32;
	BMAPS WCt10Bmp;
	
	ALBEDO 0.5;
}
TEXTURE Wpl05Tex 
{
	SCALE_XY 12.8,12.8;
	BMAPS Wpl05Bmp;
	ALBEDO 0.8;
}
TEXTURE Wpl05aTex 
{
	SCALE_XY 12.8,12.8;
	BMAPS Wpl05aBmp;
	ALBEDO 0.8;
}
TEXTURE Wpl05bTex 
{
	SCALE_XY 12.8,12.8;
	BMAPS Wpl05bBmp;
	ALBEDO 0.8;
}
TEXTURE Wpl05dTex 
{
	SCALE_XY 12.8,12.8;
	BMAPS  Wpl05dBmp;
	ALBEDO 0.8;
}
TEXTURE Wpl05DarkTex 
{
	SCALE_XY 	12.8,12.8;
	BMAPS 	Wpl05Bmp;
	ALBEDO 	0.8;
	AMBIENT	-0.3;
}
TEXTURE Wfc01Tex
{
	SCALE_XY 6,6.4;
	BMAPS Wfc01Bmp;
	ALBEDO 0.5;
}
TEXTURE Wfc02Tex
{
	SCALE_XY 12,12.8;
	BMAPS Wfc02Bmp;
	ALBEDO 0.5;
}
TEXTURE Wfc03Tex
{
	SCALE_XY 3,2.909;
	BMAPS Wfc03Bmp;
	ALBEDO 0.5;
}
TEXTURE Wfc04Tex
{
	SCALE_XY 6,6.4;
	BMAPS Wfc04Bmp;
	ALBEDO 0.5;
}
TEXTURE Wfc05Tex
{
	SCALE_XY 6,5.333;
	BMAPS Wfc05Bmp;
	ALBEDO 0.5;
}
TEXTURE FRb01Tex 
{
	SCALE_XY 32,32;
	BMAPS FRb01Bmp;
	ALBEDO 0.5;
}
TEXTURE Ffb01Tex 
{
	SCALE_XY 16,16;
	BMAPS Ffb01Bmp;
	ALBEDO 0.5;
}
TEXTURE Ffb03Tex 
{
	SCALE_XY 32,32;
	BMAPS Ffb03Bmp;
	ALBEDO 0.5;
}
TEXTURE Ffb03aTex 
{
	SCALE_XY 32,32;
	BMAPS Ffb03aBmp;
	ALBEDO 0.5;
}
TEXTURE WAr01Tex 
{
	SCALE_XY 32,32;
	BMAPS WAr01Bmp;
	ALBEDO 0.5;
	AMBIENT 1;
}

TEXTURE TAr26Tex 
{
	SCALE_XY 32,32;
	BMAPS TAr26Bmp;
	ALBEDO 0.5;
}

TEXTURE WCtWdTex 
{
	SCALE_XY 32,32;
	BMAPS WCtWdBmp;
	
	ALBEDO 0.5;
}

TEXTURE WCt10Tex 
{
	SCALE_XY 16,16;
	BMAPS WCt10Bmp;
	ALBEDO 0.5;
}

TEXTURE WUTITex 
{
	SCALE_XY 16,16;
	SIDES           8;
	BMAPS           WCt10Bmp,WCt10Bmp,WCt10Bmp,WCt10Bmp,
				CMt01Bmp,CMt01Bmp,CMt01Bmp,CMt01Bmp	;                        
}
TEXTURE FBr02Tex 
{
	SCALE_XY 32,32;
	BMAPS FBr02Bmp;
	ALBEDO 0.5;
}

TEXTURE CMt01Tex
{
	SCALE_XY 32,24;
	BMAPS CMt01Bmp;
	ALBEDO 0.5;
}
TEXTURE WMt10Tex
{
	SCALE_XY 32, 32;
	BMAPS WMt10Bmp;
	ALBEDO 0.6;
}
TEXTURE WMt18dTex
{
	SCALE_XY 51.2, 42.666;
	BMAPS WMt18dBmp;
	ALBEDO 0.6;
}
TEXTURE WMt18d1Tex
{
	SCALE_XY 128, 42.666;
	BMAPS WMt18dBmp;
	ALBEDO 0.6;
}
//**********
// animated textures
TEXTURE DAl02OpenTex 
{
	SCALE_XY 64,32;
	CYCLES         4;
	BMAPS		DAl02x1Bmp,DAl02x2Bmp,DAl02x3Bmp,DAl02x4Bmp;                        
	DELAY		4,3,3,4;
	FLAGS ONESHOT;
	ALBEDO	0.5;
}
TEXTURE DAl02CloseTex 
{
	SCALE_XY 64,32;
	CYCLES         4;
	BMAPS		DAl02x4Bmp,DAl02x3Bmp,DAl02x2Bmp,DAl02x1Bmp;                        
	DELAY		4,3,3,4;
	FLAGS ONESHOT;
	ALBEDO	0.5;
}

TEXTURE Scrn01gTex
{
	SCALE_XY 32,32;
      CYCLES 10;
	BMAPS Scrn01g01Bmp,Scrn01g02Bmp,Scrn01g03Bmp,Scrn01g04Bmp,Scrn01g05Bmp,Scrn01g06Bmp,Scrn01g07Bmp,Scrn01g08Bmp,Scrn01g09Bmp,Scrn01g10Bmp;
      DELAY 2,2,2,2,2,2,2,2,2,2;
      POS_X 16;
      POS_Y -120;
}
TEXTURE Scrn02gTex
{
	SCALE_XY 32,32;
      CYCLES 18;
	BMAPS Scrn02g01Bmp,Scrn02g02Bmp,Scrn02g03Bmp,Scrn02g04Bmp,Scrn02g05Bmp,Scrn02g06Bmp,Scrn02g07Bmp,Scrn02g08Bmp,Scrn02g09Bmp,Scrn02g10Bmp,Scrn02g09Bmp,Scrn02g08Bmp,Scrn02g07Bmp,Scrn02g06Bmp,Scrn02g05Bmp,Scrn02g04Bmp,Scrn02g03Bmp,Scrn02g02Bmp;
      DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2;
      POS_X 16;
      POS_Y -120;
}

TEXTURE Scrn02Tex
{
	SCALE_XY 32,32;
	CYCLES 18;
	BMAPS WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp;
    	DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2;
      ATTACH Scrn02gTex;
	ALBEDO	0.5;
}
TEXTURE Scrn01Tex
{
	SCALE_XY 32,32;
      CYCLES 10;
	BMAPS WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp;
      DELAY 2,2,2,2,2,2,2,2,2,2;
      ATTACH Scrn01gTex;
	SOUND Bip02Snd;
	SDIST 25;
	SVOL  0.5;
	SCYCLES 0,0,0,0,0,0,1,0,0,0;
	ALBEDO	0.5;
}
TEXTURE FMt02Tex
{
	SCALE_XY 85,85;
	BMAPS FMt02Bmp;
	ALBEDO	0.5;
}

TEXTURE FMt05Tex
{
	SCALE_XY 	32,32;
	BMAPS 	FMt05Bmp;
	ALBEDO	0.5;
}

TEXTURE WMt01Tex
{
	SCALE_XY 32,32;
	BMAPS WMt01Bmp;
	ALBEDO	0.5;
}
