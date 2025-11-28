INCLUDE <MjBmp.WDL>;
TEXTURE DoorFMt03Tex
{
	SCALE_XY 32,21.33;
	BMAPS FMt03Bmp;
	ALBEDO	0.5;
}

TEXTURE DMt03bTex
{
	SCALE_XY 32,21.33;
	BMAPS DMt03bBmp;
	ALBEDO	0.5;
}
TEXTURE DMt03cTex
{
	SCALE_XY 32,21.33;
	BMAPS DMt03cBmp;
	ALBEDO	0.5;
}
TEXTURE WMt21Tex
{
	SCALE_XY  	32,13.913;
	BMAPS 	WMt21Bmp;
	ALBEDO	0.5;
}
TEXTURE WMt21aTex
{
	SCALE_XY  	21.333,42.667; // 64,64;
	BMAPS 	WMt21aBmp;
	ALBEDO	0.5;
}
TEXTURE WMt21bTex
{
	SCALE_XY 16,16;
	CYCLES 3;
	BMAPS WMt21b1Bmp,WMt21b2Bmp,WMt21b3Bmp;
	ALBEDO	0.5;
	DELAY 2,2,2;
	SOUND Humm01Snd;
	SVOL 0.6;
	FLAGS SLOOP,SAVE;
	SDIST 150;
	SVDIST 10;
}
TEXTURE WMt21cTex
{
	SCALE_XY 32,32;
	BMAPS WMt21cBmp;
	ALBEDO	0.5;
}
TEXTURE WMt22Tex
{
	SCALE_XY 32,32;
	CYCLES 3;
	BMAPS WMt22g1Bmp,WMt22g2Bmp,WMt22g3Bmp;
	ALBEDO	0.5;
	DELAY 2,2,2;
	SOUND Humm01Snd;
	SVOL 0.3;
	FLAGS SLOOP,SAVE;
	SDIST 30;
	SVDIST 10;

}

TEXTURE FMt01aTex
{
	SCALE_XY 16,16;
	BMAPS FMt01aBmp;
	ALBEDO	0.5;
}

TEXTURE WMt20Tex
{
	SCALE_XY 16,21.333;
	BMAPS WMt20Bmp;
	ALBEDO	0.5;
}

TEXTURE WMt20aTex
{
	SCALE_XY 16,21.333;
	BMAPS WMt20aBmp;
	ALBEDO	0.5;
}

TEXTURE WMt18Tex
{
	SCALE_XY 64,64;
	BMAPS WMt18Bmp;
	ALBEDO	0.5;
}
TEXTURE WMt18aTex
{
	SCALE_XY 64,64;
	BMAPS WMt18aBmp;
	ALBEDO	0.5;
}
TEXTURE CMt02Tex
{
	SCALE_XY 64,64;
	BMAPS CMt02Bmp;
	ALBEDO	0.5;
}
TEXTURE CMt02aTex
{
	SCALE_XY 64,64;
	BMAPS CMt02aBmp;
	ALBEDO	0.5;
}
TEXTURE CMt02bTex
{
	SCALE_XY 64,64;
	BMAPS CMt02bBmp;
	ALBEDO	0.5;
}
TEXTURE FMt05Tex
{
	SCALE_XY 16,16;
	BMAPS FMt05Bmp;
	ALBEDO	0.5;
}

TEXTURE WMt14aTex
{
	SCALE_XY 16,16;
	BMAPS WMt14aBmp;
	ALBEDO	0.5;
}
TEXTURE WMt17Tex
{
	SCALE_XY 32,32;
	BMAPS WMt17Bmp;
	ALBEDO	0.5;
	AMBIENT 0.2;
}
TEXTURE WMt17LiftTex
{
	SCALE_XY 51.2,32;
	BMAPS WMt17Bmp;
	ALBEDO	0.5;
	AMBIENT 1;
}
TEXTURE WMt17aLiftTex
{
	SCALE_XY 51.2,32;
	BMAPS WMt17aBmp;
	ALBEDO	0.5;
	AMBIENT 1;
}





 TEXTURE FMt05SoundTex 
 {  
    SCALE_XY 64,64;
    BMAPS FMt05Bmp;  
    AMBIENT 1;
	SOUND Lift01Snd;
	FLAGS SLOOP,SAVE;
	SVOL 0; 
}

TEXTURE SCrn03gTex  // *******Radar******* 
{  
    SCALE_XY 32,32;
    CYCLES 8;  
    BMAPS SCrn03g1Bmp,SCrn03g2Bmp,SCrn03g3Bmp,SCrn03g4Bmp,SCrn03g5Bmp,SCrn03g6Bmp,SCrn03g7Bmp,SCrn03g8Bmp;
	DELAY 3,3,3,3,3,3,3,3;
	POS_X 0;
	POS_Y 0;
}
TEXTURE WMt01RadarTex  // *******Radar******* 
{  
    	SCALE_XY 32,32;
    	CYCLES 8;  
    	BMAPS WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp;
	DELAY 3,3,3,3,3,3,3,3;
	ATTACH SCrn03gTex;
	ALBEDO	0.5;
} 
// ************ Painel de acesso
TEXTURE OffApnlgTex
{
	SCALE_XY 82,82;
	BMAPS Apnlg0Bmp;
	POS_X 0;
	POS_Y 152.4;
}
TEXTURE OpenApnlgTex
{
	SCALE_XY 82,82;
	BMAPS Apnlg1Bmp;
	POS_X 0;
	POS_Y 152.4;
}
TEXTURE OnApnlgTex
{
	SCALE_XY 82,82;
	CYCLES 14;
	BMAPS Apnlg2Bmp,Apnlg3Bmp,Apnlg4Bmp,Apnlg5Bmp,Apnlg6Bmp,Apnlg7Bmp,Apnlg8Bmp,Apnlg9Bmp,Apnlg8Bmp,Apnlg7Bmp,Apnlg6Bmp,Apnlg5Bmp,Apnlg4Bmp,Apnlg3Bmp;
	DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
	POS_X 0;
	POS_Y 152.4;
	FLAGS SAVE;
}
// -----------------------------------
/*
TEXTURE KeyOffWMt17aTex
{
	SCALE_XY 51.2,32;
	BMAPS WMt17aBmp;
	ATTACH OffApnlgTex;
}

TEXTURE KeyOffWMt03Tex
{
	SCALE_XY 16,25.4;
	BMAPS WMt03Bmp;
	ATTACH OffApnlgTex;
	ALBEDO	0.5;
}
*/
TEXTURE KeyOffWMt04Tex
{
	SCALE_XY 16,25.4;
	BMAPS WMt04Bmp;
	ATTACH OffApnlgTex;
	ALBEDO	0.5;
}
TEXTURE KeyOffWMt05Tex
{
	SCALE_XY 16,25.4;
	BMAPS WMt05Bmp;
	ATTACH OffApnlgTex;
	ALBEDO	0.5;
}
// -------------------------------------
TEXTURE KeyOpenWMt17aTex
{
	SCALE_XY 51.2,32;
	BMAPS WMt17aBmp;
	ATTACH OpenApnlgTex;
	ALBEDO	0.5;
	AMBIENT 1;
}
TEXTURE KeyOpenWMt03Tex
{
	SCALE_XY 16,25.4;
	BMAPS WMt03Bmp;
	ATTACH OpenApnlgTex;
	ALBEDO	0.5;
}
TEXTURE KeyOpenWMt04Tex
{
	SCALE_XY 16,25.4;
	BMAPS WMt04Bmp;
	ATTACH OpenApnlgTex;
	ALBEDO	0.5;
}
TEXTURE KeyOpenWMt05Tex
{
	SCALE_XY 16,25.4;
	BMAPS WMt05Bmp;
	ATTACH OpenApnlgTex;
	ALBEDO	0.5;
}
// ------------------------------------------
TEXTURE KeyOnWMt17aTex
{
	SCALE_XY 51.2,32;
	CYCLES 14;
	BMAPS WMt17aBmp,WMt17aBmp,WMt17aBmp,WMt17aBmp,WMt17aBmp,WMt17aBmp,WMt17aBmp,WMt17aBmp,WMt17aBmp,WMt17aBmp,WMt17aBmp,WMt17aBmp,WMt17aBmp,WMt17aBmp;
	DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
	ATTACH OnApnlgTex;
	ALBEDO	0.5;
	AMBIENT 1;
	FLAGS SAVE;
}
TEXTURE KeyOnWMt03Tex
{
	SCALE_XY 16,25.4;
	CYCLES 14;
	BMAPS WMt03Bmp,WMt03Bmp,WMt03Bmp,WMt03Bmp,WMt03Bmp,WMt03Bmp,WMt03Bmp,WMt03Bmp,WMt03Bmp,WMt03Bmp,WMt03Bmp,WMt03Bmp,WMt03Bmp,WMt03Bmp;
	DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
	ATTACH OnApnlgTex;
	ALBEDO	0.5;
	FLAGS SAVE;
}
TEXTURE KeyOnWMt04Tex
{
	SCALE_XY 16,25.4;
	CYCLES 14;
	BMAPS WMt04Bmp,WMt04Bmp,WMt04Bmp,WMt04Bmp,WMt04Bmp,WMt04Bmp,WMt04Bmp,WMt04Bmp,WMt04Bmp,WMt04Bmp,WMt04Bmp,WMt04Bmp,WMt04Bmp,WMt04Bmp;
	DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
	ATTACH OnApnlgTex;
	ALBEDO	0.5;
	FLAGS SAVE;
}
TEXTURE KeyOnWMt05Tex
{
	SCALE_XY 16,25.4;
	CYCLES 14;
	BMAPS WMt05Bmp,WMt05Bmp,WMt05Bmp,WMt05Bmp,WMt05Bmp,WMt05Bmp,WMt05Bmp,WMt05Bmp,WMt05Bmp,WMt05Bmp,WMt05Bmp,WMt05Bmp,WMt05Bmp,WMt05Bmp;
	DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
	ATTACH OnApnlgTex;
	ALBEDO	0.5;
	FLAGS SAVE;
}
// -------------------------------------------
TEXTURE WWd05Tex
{
	SCALE_XY 16,16;
	BMAPS WWd05Bmp;
	ALBEDO	0.5;
}
TEXTURE WWd05STex // boat botton with bubles sound
{
	SCALE_XY 16,16;
	BMAPS WWd05Bmp;
	SOUND CWt01Snd;
	FLAGS SLOOP,SAVE;
}
TEXTURE WMt01Tex
{
	SCALE_XY 32,32;
	BMAPS WMt01Bmp;
	ALBEDO	0.5;
}
TEXTURE WMt02Tex
{
	SCALE_XY 16,25.4;
	BMAPS WMt02Bmp;
	ALBEDO	0.5;
}
TEXTURE WMt02TTex
{
	SCALE_XY 16,25.4;
	BMAPS WMt02Bmp;
	ALBEDO	0.5;
	AMBIENT -0.2;
}

TEXTURE WMt03Tex
{
	SCALE_XY 16,25.4;
	BMAPS WMt03Bmp;
	ALBEDO	0.5;
}
TEXTURE WMt04Tex
{
	SCALE_XY 16,25.4;
	BMAPS WMt04Bmp;
	ALBEDO	0.5;
}
TEXTURE WMt05Tex
{
	SCALE_XY 16,25.4;
	BMAPS WMt05Bmp;
	ALBEDO	0.5;
}
TEXTURE WMt06ATex
{
	SCALE_XY 16,20.48;
	BMAPS WMt06ABmp;
	ALBEDO	0.5;
}
TEXTURE WMt06BTex
{
	SCALE_XY 16,20.48;
	BMAPS WMt06BBmp;
	ALBEDO	0.5;
}
TEXTURE WMt06dTex // ship botton with bubles sound
{
	SCALE_XY 16,16;
	BMAPS WMt06dBmp;
	SOUND            CWt01Snd;
	FLAGS SLOOP,SAVE;
	ALBEDO	0.5;
}
TEXTURE WMt07Tex
{
	SCALE_XY 16,32;
	BMAPS WMt07Bmp;
	ALBEDO	0.5;
}
TEXTURE WMt08Tex
{
	SCALE_XY 16,32;
	BMAPS WMt08Bmp;
	ALBEDO	0.5;
}
TEXTURE WMt09ATex
{
	SCALE_XY 30.933,23.925;
	BMAPS WMt09ABmp;
	ALBEDO	0.5;
}
TEXTURE WMt09BTex
{
	SCALE_XY 30.933,23.925;
	BMAPS WMt09BBmp;
	ALBEDO	0.5;
}
TEXTURE WMt10Tex
{
	SCALE_XY 16,12.8;
	BMAPS WMt10Bmp;
	ALBEDO	0.5;
}
TEXTURE WMt10aTex
{
	SCALE_XY 16,12.8;
	BMAPS WMt10aBmp;
	ALBEDO	0.5;
}
TEXTURE WMt11Tex
{
	SCALE_XY 16,16;
	BMAPS WMt11Bmp;
	ALBEDO	0.5;
}
TEXTURE WMt12Tex
{
	SCALE_XY 16,16;
	BMAPS WMt12Bmp;
	ALBEDO	0.5;
}
TEXTURE FMt03Tex
{
	SCALE_XY 128,128;
	BMAPS FMt03Bmp;
	ALBEDO	0.5;
}
TEXTURE FMt03ATex
{
	SCALE_XY 32,32;
	BMAPS FMt03Bmp;
	ALBEDO	0.5;
}

TEXTURE Fsl01Tex
{
	SCALE_XY 16,32;
	BMAPS Fsl01Bmp;
	ALBEDO	0.5;
}
//****Mapa
TEXTURE WAr51Tex
{
	SCALE_XY 25.6,25.6;
	BMAPS WAr51Bmp;
	ALBEDO	0.5;
}
//****************** Baía da guanabara
TEXTURE  back05Tex
{
	SIDES           6;
	BMAPS           Back05aBmp, Back05cBmp, Back05bBmp, Back05bBmp,Back05bBmp,Back05bBmp;
	FLAGS           SKY;
}
TEXTURE NullTex
{
	SCALE_XY 1,1;
	BMAPS    NULL;
}
TEXTURE FRb01Tex
{
	SCALE_XY 16,16;
	BMAPS FRb01Bmp;
	ALBEDO	0.5;
}
TEXTURE GeniusTex
{
	SCALE_XY 16,16;
	BMAPS FRb01Bmp;
	ALBEDO	0.5;
	AMBIENT 0.7;
}
