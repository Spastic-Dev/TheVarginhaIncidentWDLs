INCLUDE <SdBmp.Wdl>;
TEXTURE WMt12Tex 
{
	SCALE_XY 32,32;
	BMAPS WMt12Bmp;
	ALBEDO 0.5;
}
TEXTURE CMt02Tex 
{
	SCALE_XY 32,32;
	BMAPS CMt02Bmp;
	ALBEDO 0.5;
}
TEXTURE CMt02aTex 
{
	SCALE_XY 32,32;
	BMAPS CMt02aBmp;
	ALBEDO 0.5;
}
TEXTURE CMt02bTex 
{
	SCALE_XY 32,32;
	BMAPS CMt02bBmp;
	ALBEDO 0.5;
}

TEXTURE WMt18dBed4Tex 
{
	SCALE_XY 51.2,42.66;
	BMAPS WMt18dBmp;
	ALBEDO 0.5;
	AMBIENT -0.3;
}
TEXTURE WMt18dBed2Tex 
{
	SCALE_XY 128,42.66;
	BMAPS WMt18dBmp;
	ALBEDO 0.5;
	AMBIENT -0.3;
}
TEXTURE WWd02Tex 
{
	SCALE_XY 32,18.280;
	BMAPS WWd02Bmp;
	ALBEDO 0.5;
}
TEXTURE WWd02bTex 
{
	SCALE_XY 32,18.280;
	BMAPS WWd02bBmp;
	ALBEDO 0.5;
}
TEXTURE WMt20Tex 
{
	SCALE_XY 32,18.280;
	BMAPS WMt20Bmp;
	ALBEDO 0.5;
}
TEXTURE WMt20aTex 
{
	SCALE_XY 32,18.280;
	BMAPS WMt20aBmp;
	ALBEDO 0.5;
}
TEXTURE Sign09Tex 
{
	SCALE_XY 64,64;
	BMAPS Sign09Bmp;
	ALBEDO 0.5;
	POS_X 128;
	POS_Y 25;
}

TEXTURE WMt20aGrayTex 
{
	SCALE_XY 32,18.280;
	BMAPS WMt20aBmp;
	ALBEDO 0.5;
	ATTACH Sign09Tex;
}
TEXTURE Sign08Tex 
{
	SCALE_XY 48,48;
	BMAPS Sign08Bmp;
	ALBEDO 0.5;
	POS_X 64;
	POS_Y 25;
}

TEXTURE WMt20aMj3Tex 
{
	SCALE_XY 32,18.280;
	BMAPS WMt20aBmp;
	ALBEDO 0.5;
	ATTACH Sign08Tex;
}

TEXTURE FMt04Tex
{
	SCALE_XY 18.286,10.667;
	BMAPS FMt04Bmp;
	ALBEDO 0.5;
}
TEXTURE WMt16bTex
{
	SCALE_XY 9.6969,12.8;
	BMAPS WMt16bBmp;
	ALBEDO 0.4;
}
TEXTURE WMt16b1Tex
{
	SCALE_XY 9.6969,36.57;
	BMAPS WMt16bBmp;
	ALBEDO 0.4;
}
TEXTURE WMt16cTex
{
	SCALE_XY 16,16;
	BMAPS WMt16cBmp;
	ALBEDO 0.4;
	AMBIENT -0.2;
}

TEXTURE LTargetTex {
        SCALE_XY        32,32;
      CYCLES    2;
        BMAPS           LTargetBmp, LTargetBmp;
      DELAY     32, 32;
        RANDOM  0.9;
}

TEXTURE LiftTex {
        SCALE_XY        32,32;
        BMAPS           LiftBmp;
}
TEXTURE TowerTex
{
	SCALE_XY 18,18;
	CYCLES 2;
	BMAPS Towerg1Bmp,Towerg2Bmp;
	DELAY 6,6;
	RANDOM 0.9;
}
TEXTURE FMt05Tex
{
	SCALE_XY 32,32;
	BMAPS FMt05Bmp;
	ALBEDO 0.4;
}

TEXTURE FMt06ShuTex
{
	SCALE_XY 32,32;
	BMAPS FMt06Bmp;
	ALBEDO 0.5;
	SVOL 0.5;
	FLAGS SLOOP;
}
TEXTURE FMt06Tex
{
	SCALE_XY 32,32;
	BMAPS FMt06Bmp;
	ALBEDO 0.5;
}
TEXTURE FMt06bTex
{
	SCALE_XY 16,16;
	BMAPS FMt06Bmp;
	ALBEDO 0.5;
}
TEXTURE FMt06cTex
{
	SCALE_XY 4,4;
	BMAPS FMt06Bmp;
	ALBEDO 0.5;
}
TEXTURE FMt06aTex
{
	SCALE_XY 32,32;
	BMAPS FMt06Bmp;
	ALBEDO 0.4;
}
TEXTURE WMt14aTex //clara
{
	SCALE_XY 16,16;
	BMAPS WMt14aBmp;
	ALBEDO 0.4;
}

TEXTURE WMt16Tex //clara
{
	SCALE_XY 32,32;
	BMAPS WMt16Bmp;
	ALBEDO 0.4;
}
TEXTURE WMt16aTex //escura
{
	SCALE_XY 32,32;
	BMAPS WMt16aBmp;
	ALBEDO 0.4;
}
TEXTURE WMt16aBioTex 
{
	SCALE_XY 32,36.57;
	BMAPS WMt16aBmp;
	ALBEDO 0.5;
	AMBIENT 0.2;
}
TEXTURE WMt17BioTex //escura
{
	SCALE_XY 32,36.57;
	BMAPS WMt17Bmp;
	ALBEDO 0.5;
}

TEXTURE DMt01x1Tex
{
	SCALE_XY 44.912,39.384;//22.456,19.692;
	BMAPS DMt01x1Bmp;
	ALBEDO 0.4;
}
TEXTURE DMt18Tex //clara
{
	SCALE_XY 42.6666,39.384;
	BMAPS WMt18Bmp;
	ALBEDO 0.4;
}
TEXTURE DMt18aTex //escura
{
	SCALE_XY 42.6666,39.384;
	BMAPS WMt18aBmp;
	ALBEDO 0.4;
}

TEXTURE WMt18Tex //clara
{
	SCALE_XY 42.6666,36.5714;
	BMAPS WMt18Bmp;
	ALBEDO 0.4;
}
TEXTURE WMt18aTex //escura
{
	SCALE_XY 42.6666,36.5714;
	BMAPS WMt18aBmp;
	ALBEDO 0.4;
}
TEXTURE WMt18dTex //window clara
{
	SCALE_XY 42.6666,27.429;
	BMAPS WMt18dBmp;
	ALBEDO 0.4;
}
TEXTURE WMt18eTex //window escura
{
	SCALE_XY 42.6666,27.429;
	BMAPS WMt18dBmp;
	ALBEDO 0.4;
	AMBIENT -0.2;
}
TEXTURE WMt18dBioIntTex 
{
	SCALE_XY 46.74,27.429;
	BMAPS WMt18dBmp;
	ALBEDO 0.4;
}
TEXTURE WMt18dBioExtTex 
{
	SCALE_XY 43.83,27.429;
	BMAPS WMt18dBmp;
	ALBEDO 0.4;
}

TEXTURE WMt18aCat15Tex //escura
{
	SCALE_XY 17.066,6.564;
	BMAPS WMt18aBmp;
	ALBEDO 0.4;
	AMBIENT -0.1;
}
TEXTURE WMt18aCat5Tex //escura
{
	SCALE_XY 51.2,11.1304;
	BMAPS WMt18aBmp;
	ALBEDO 0.4;
	AMBIENT -0.1;
}
TEXTURE WMt18aCat95Tex //escura
{
	SCALE_XY 26.947,11.1304;
	BMAPS WMt18aBmp;
	ALBEDO 0.4;
	AMBIENT 0.2;
}
TEXTURE WMt18aCat95BTex //escura
{
	SCALE_XY 26.947,19.692;
	BMAPS WMt18aBmp;
	ALBEDO 0.4;
	AMBIENT 0.2;
}

TEXTURE CMt03Tex
{
	SCALE_XY 42.6666,42.6666;
	BMAPS CMt03Bmp;
	ALBEDO 0.4;
}
TEXTURE CMt03S1Tex
{
	SCALE_XY 16,16;
	BMAPS CMt03Bmp;
	ALBEDO 0.4;
	AMBIENT -0.1;
}
TEXTURE CMt03S2Tex
{
	SCALE_XY 8,8;
	BMAPS CMt03Bmp;
	ALBEDO 0.4;
	AMBIENT -0.1;
}
TEXTURE CMt03S3Tex
{
	SCALE_XY 4,4;
	BMAPS CMt03Bmp;
	ALBEDO 0.4;
	AMBIENT -0.1;
}
TEXTURE FMt07S1Tex
{
	SCALE_XY 16,16;
	BMAPS FMt07Bmp;
	ALBEDO 0.4;
	AMBIENT 0.1;
}
TEXTURE FMt07S2Tex
{
	SCALE_XY 8,8;
	BMAPS FMt07Bmp;
	ALBEDO 0.4;
	AMBIENT 0.1;
}
TEXTURE FMt07S3Tex
{
	SCALE_XY 4,4;
	BMAPS FMt07Bmp;
	ALBEDO 0.4;
	AMBIENT 0.1;
}

TEXTURE WMt19Tex
{
	SCALE_XY 43,43;
	BMAPS WMt19Bmp;
	ALBEDO 0.4;
}
TEXTURE WMt19aTex
{
	SCALE_XY 24.62,25.6;
	BMAPS WMt19Bmp;
	ALBEDO 0.4;
}

TEXTURE GPnl01g1Tex
{
	SCALE_XY 128,128;
	BMAPS GPnl01g1Bmp;
	ALBEDO 0.4;
	POS_X 966;
	POS_Y 85;
}
TEXTURE GPnl01g2Tex
{
	SCALE_XY 128,128;
	BMAPS GPnl01g2Bmp;
	ALBEDO 0.4;
	POS_X 966;
	POS_Y 85;
}
TEXTURE WMt19OnTex
{
	SCALE_XY 43,43;
	BMAPS WMt19Bmp;
	ALBEDO 0.4;
	ATTACH GPnl01g1Tex;
}
TEXTURE WMt19OffTex
{
	SCALE_XY 43,43;
	BMAPS WMt19Bmp;
	ALBEDO 0.4;
	ATTACH GPnl01g2Tex;
}

TEXTURE GPnl02g1Tex
{
	SCALE_XY 128,128;
	BMAPS GPnl02g1Bmp;
	ALBEDO 0.4;
	POS_X 140;
	POS_Y 85;
}
TEXTURE GPnl02g2Tex
{
	SCALE_XY 128,128;
	BMAPS GPnl02g2Bmp;
	ALBEDO 0.4;
	POS_X 140;
	POS_Y 85;
}
TEXTURE GPnl02g3Tex
{
	SCALE_XY 128,128;
	BMAPS GPnl02g3Bmp;
	ALBEDO 0.4;
	POS_X 140;
	POS_Y 85;
}

TEXTURE WMt19Way1Tex
{
	SCALE_XY 43,43;
	BMAPS WMt19Bmp;
	ALBEDO 0.4;
	ATTACH GPnl02g1Tex;
}
TEXTURE WMt19Way2Tex
{
	SCALE_XY 43,43;
	BMAPS WMt19Bmp;
	ALBEDO 0.4;
	ATTACH GPnl02g2Tex;
}
TEXTURE WMt19Way3Tex
{
	SCALE_XY 43,43;
	BMAPS WMt19Bmp;
	ALBEDO 0.4;
	ATTACH GPnl02g3Tex;
}


TEXTURE GShuTex {
        SCALE_XY        4,4;
        MODEL           GShuMdl;
          SOUND         GShu02Snd;
          SVOL          0.2;
          SDIST         200;
          FLAGS         SLOOP;
}

TEXTURE GeniusTex
{
	SCALE_XY 2,2;
	BMAPS  LTargetBmp;
	ALBEDO 0.5;
	AMBIENT 0.5;
}
TEXTURE GeniusRotorTex
{
	SCALE_XY 2,2;
	BMAPS  LTargetBmp;
	ALBEDO 0.5;
	AMBIENT 0.5;
	}

TEXTURE WCt07Tex
{
	SCALE_XY 4,4;
	BMAPS WCt07Bmp;
	ALBEDO 0.5;
}
TEXTURE WCt07aTex
{
	SCALE_XY 4,4;
	BMAPS WCt07aBmp;
	ALBEDO 0.5;
}

TEXTURE FVg03Tex
{
	SCALE_XY 32,32;
	BMAPS FVg03Bmp;
	ALBEDO 0.5;
}
TEXTURE WSl01Tex
{
	SCALE_XY 4,4;
	BMAPS WSl01Bmp;
	ALBEDO 0.2;
	
}

TEXTURE DMT02Tex
{
	SCALE_XY 10.44,8.25;
	BMAPS DMt02Bmp;
	ALBEDO 0.5;
}

TEXTURE NullTex
{
	SCALE_XY 1,1;
	BMAPS    NULL;
}
TEXTURE AlarmCCt01Tex 
{
	SCALE_XY 32,25;
	BMAPS CCt01Bmp;
	ALBEDO 0.5;
       SOUND Alarm03Snd;
      // SVOL 0.5;
       FLAGS SLOOP;
       SDIST 150;
}
TEXTURE WMt01Tex
{
	SCALE_XY 32,32;
	BMAPS WMt01Bmp;
	ALBEDO 0.5;
}


TEXTURE WMt08Tex
{
	SCALE_XY 32,32;
	BMAPS WMt08Bmp;
	ALBEDO 0.5;
}

TEXTURE WMt15Tex
{
	SCALE_XY 64,51.2;//32,25.6;
	BMAPS WMt15Bmp;
	ALBEDO 0.5;
}
TEXTURE OpenApnlgTex 
 {
     SCALE_XY 82,82;
     BMAPS Apnlg1Bmp;
        POS_X 0;
        POS_Y 128;
 }
TEXTURE OnApnlgTex 
 {
     SCALE_XY 82,82;
     CYCLES 14;
     BMAPS Apnlg2Bmp,Apnlg3Bmp,Apnlg4Bmp,Apnlg5Bmp,Apnlg6Bmp,Apnlg7Bmp,Apnlg8Bmp,Apnlg9Bmp,Apnlg8Bmp,Apnlg7Bmp,Apnlg6Bmp,Apnlg5Bmp,Apnlg4Bmp,Apnlg3Bmp;
        DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
        POS_X 0;
        POS_Y 128;
 }

TEXTURE KeyOpenWMt02Tex 
 {
     SCALE_XY 32,32;
     BMAPS WMt02Bmp;
        ATTACH OpenApnlgTex;
 }
 TEXTURE KeyOnWMt02Tex 
 {
     SCALE_XY 32,32;
        CYCLES 14;
     BMAPS WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp;
        DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
        ATTACH OnApnlgTex;
 }

 
TEXTURE WCt50bTex 
{
	SCALE_XY 25.6,25.6;
	BMAPS WCt50bBmp;
	ALBEDO 0.5;
}
TEXTURE WCt50aTex 
{
	SCALE_XY 16,16;
	BMAPS WCt50aBmp;
	ALBEDO 0.5;
}


TEXTURE CCt01Tex 
{
	SCALE_XY 32,25;
	BMAPS CCt01Bmp;
	ALBEDO 0.5;
}
TEXTURE FFb01Tex 
{
	SCALE_XY 32,32;
	BMAPS FFb01Bmp;
	ALBEDO 0.5;
}





TEXTURE WCt01Tex 
{
	SCALE_XY 32,32;
	BMAPS WCt01Bmp;
	ALBEDO 0.5;
}

TEXTURE FCt01Tex 
{
	SCALE_XY 32,32;
	BMAPS FCt01Bmp;
	
	ALBEDO 0.5;
}

TEXTURE WMt02Tex
{
	SCALE_XY 16,16;
	BMAPS WMt02Bmp;
	ALBEDO 0.5;
	AMBIENT -0.1;
}
TEXTURE GhostWMt02Tex
{
	SCALE_XY 32,25.4;
	BMAPS WMt02Bmp;
//      FLAGS GHOST;
	FLAGS		DIAPHANOUS;
	ALBEDO 0.5;
}

TEXTURE FRb01Tex
{
	SCALE_XY 32,32;
	BMAPS FRb01Bmp;

}


TEXTURE Scrn01gTex
{
	SCALE_XY 32,32;
       CYCLES 10;
	BMAPS Scrn01g01Bmp,Scrn01g02Bmp,Scrn01g03Bmp,Scrn01g04Bmp,Scrn01g05Bmp,Scrn01g06Bmp,Scrn01g07Bmp,Scrn01g08Bmp,Scrn01g09Bmp,Scrn01g10Bmp;
       DELAY 2,2,2,2,2,2,2,2,2,2;
       POS_X 0;
       POS_Y 0;
}
TEXTURE Scrn02gTex
{
	SCALE_XY 32,32;
       CYCLES 18;
	BMAPS Scrn02g01Bmp,Scrn02g02Bmp,Scrn02g03Bmp,Scrn02g04Bmp,Scrn02g05Bmp,Scrn02g06Bmp,Scrn02g07Bmp,Scrn02g08Bmp,Scrn02g09Bmp,Scrn02g10Bmp,Scrn02g09Bmp,Scrn02g08Bmp,Scrn02g07Bmp,Scrn02g06Bmp,Scrn02g05Bmp,Scrn02g04Bmp,Scrn02g03Bmp,Scrn02g02Bmp;
       DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2;
       POS_X 0;
       POS_Y 0;
}

TEXTURE Scrn02Tex
{
	SCALE_XY 32,32;
       CYCLES 18;
	BMAPS WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp;
       DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2;
       ATTACH Scrn02gTex;
}

TEXTURE Scrn01Tex
{
	SCALE_XY 32,32;
       CYCLES 10;
	BMAPS WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp,WMt01Bmp;
       DELAY 2,2,2,2,2,2,2,2,2,2;
       ATTACH Scrn01gTex;
}


TEXTURE Scrn04gTex
{
	SCALE_XY 21.333,24;
      CYCLES 4;
	BMAPS Scrn04g01Bmp,Scrn04g02Bmp,Scrn04g03Bmp,Scrn04g04Bmp;
      DELAY 53,81,96,120;
	POS_X 0;
      POS_Y -650;
}

TEXTURE Scrn04Tex
{
	SCALE_XY 25.6,25.6;
	CYCLES 4;
	BMAPS WCt50bBmp,WCt50bBmp,WCt50bBmp,WCt50bBmp;
	DELAY 143,181,136,251;
	ATTACH Scrn04gTex;
      AMBIENT -0.2;
}
TEXTURE OpenMibTex 
 {
     SCALE_XY 82,82;
     BMAPS Apnlg1Bmp;
        POS_X 10;
        POS_Y -512;
 }
TEXTURE OnMibTex 
 {
     SCALE_XY 82,82;
     CYCLES 14;
     BMAPS Apnlg2Bmp,Apnlg3Bmp,Apnlg4Bmp,Apnlg5Bmp,Apnlg6Bmp,Apnlg7Bmp,Apnlg8Bmp,Apnlg9Bmp,Apnlg8Bmp,Apnlg7Bmp,Apnlg6Bmp,Apnlg5Bmp,Apnlg4Bmp,Apnlg3Bmp;
        DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
        POS_X 10;
        POS_Y -512;
 }
TEXTURE KeyOpenMibTex 
 {
     SCALE_XY 32,32;
     BMAPS WCt50bBmp;
        ATTACH OpenMibTex;
 }
 TEXTURE KeyOnMibTex 
 {
     SCALE_XY 32,32;
        CYCLES 14;
     BMAPS WCt50bBmp,WCt50bBmp,WCt50bBmp,WCt50bBmp,WCt50bBmp,WCt50bBmp,WCt50bBmp,WCt50bBmp,WCt50bBmp,WCt50bBmp,WCt50bBmp,WCt50bBmp,WCt50bBmp,WCt50bBmp;
        DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
        ATTACH OnMibTex;
 }
TEXTURE OpenLabTex 
 {
     SCALE_XY 82,82;
     BMAPS Apnlg1Bmp;
        POS_X 10;
        POS_Y -192;
 }
TEXTURE OnLabTex 
 {
     SCALE_XY 82,82;
     CYCLES 14;
     BMAPS Apnlg2Bmp,Apnlg3Bmp,Apnlg4Bmp,Apnlg5Bmp,Apnlg6Bmp,Apnlg7Bmp,Apnlg8Bmp,Apnlg9Bmp,Apnlg8Bmp,Apnlg7Bmp,Apnlg6Bmp,Apnlg5Bmp,Apnlg4Bmp,Apnlg3Bmp;
        DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
        POS_X 10;
        POS_Y -192;
 }
TEXTURE KeyOpenLabTex 
 {
     SCALE_XY 32,32;
     BMAPS WMt16aBmp;
        ATTACH OpenLabTex;
 }
 TEXTURE KeyOnLabTex 
 {
     SCALE_XY 32,32;
        CYCLES 14;
     BMAPS WMt16aBmp,WMt16aBmp,WMt16aBmp,WMt16aBmp,WMt16aBmp,WMt16aBmp,WMt16aBmp,WMt16aBmp,WMt16aBmp,WMt16aBmp,WMt16aBmp,WMt16aBmp,WMt16aBmp,WMt16aBmp;
        DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
        ATTACH OnLabTex;
 }
TEXTURE OpenGrayTex 
 {
     SCALE_XY 82,82;
     BMAPS Apnlg1Bmp;
        POS_X 0;
        POS_Y 128;
 }
TEXTURE OnMibGray 
 {
     SCALE_XY 82,82;
     CYCLES 14;
     BMAPS Apnlg2Bmp,Apnlg3Bmp,Apnlg4Bmp,Apnlg5Bmp,Apnlg6Bmp,Apnlg7Bmp,Apnlg8Bmp,Apnlg9Bmp,Apnlg8Bmp,Apnlg7Bmp,Apnlg6Bmp,Apnlg5Bmp,Apnlg4Bmp,Apnlg3Bmp;
        DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
        POS_X 0;
        POS_Y 128;
 }
TEXTURE KeyOpenGrayTex 
 {
     SCALE_XY 32,32;
     BMAPS WMt02Bmp;
        ATTACH OpenGrayTex;

 }
TEXTURE WMt02GrayTex 
 {
     	SCALE_XY 32,32;
     	BMAPS WMt02Bmp;

 }

 TEXTURE KeyOnGrayTex 
 {
     SCALE_XY 32,32;
        CYCLES 14;
     BMAPS WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp,WMt02Bmp;
        DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
        ATTACH OnMibGray;
 }
TEXTURE GeratorTex
{
	BMAPS NULL;
	SOUND         Gen01Snd;
      SVOL          0.5;
      SDIST		150;
      FLAGS         SLOOP;
}

/* NOT USED
TEXTURE Faf01bTex
{
	SCALE_XY 10,10;
	BMAPS Faf01bBmp;
}
TEXTURE CMt02cTex 
{
	SCALE_XY 16,16;
	BMAPS CMt02cBmp;
	ALBEDO 0.5;
}
*/