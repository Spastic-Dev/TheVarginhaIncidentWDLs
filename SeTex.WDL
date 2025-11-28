/////////////////////////////////////////////////////////////////
// Textures
/////////////////////////////////////////////////////////////////
SOUND Humm01Snd  ,<Humm01.wav>;
TEXTURE NullTex
{
	SCALE_XY 1,1;
	BMAPS    NULL;
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
TEXTURE WMt22Tex // ventilador
{
	SCALE_XY 32,32;
	CYCLES 3;
	BMAPS WMt22g1Bmp,WMt22g2Bmp,WMt22g3Bmp;
	ALBEDO	0.5;
	DELAY 2,2,2;
	SOUND Humm01Snd;
	SVOL 0.4;
	FLAGS SLOOP,SAVE;
	SDIST 30;
	SVDIST 10;

}
TEXTURE CMt02Tex
{
	SCALE_XY 64,64;
	BMAPS CMt02Bmp;
	ALBEDO	0.5;
}
TEXTURE  Cce01Tex 
{
	SIDES           8;
	BMAPS           Bakg02Bmp,Bakg02Bmp,Bakg02Bmp,Bakg02Bmp,
			    Bakg02Bmp,Bakg02Bmp,Bakg01Bmp,Bakg02Bmp;
	FLAGS           SKY;
}
TEXTURE FossoTex
{
	SCALE_XY 32,32;
	BMAPS   Wct01Map;
	ALBEDO	0.5;
}
TEXTURE StripTex
{
	SCALE_XY 32,32;
	BMAPS   Fct02aBmp;
	ALBEDO	0.5;
}
TEXTURE CenterDomusTex
{
	SCALE_XY 32,32;
	BMAPS   CenterDomusMap;
	ALBEDO	0.5;
}
TEXTURE StepSpcTex // escadaria textura de cima vão ,debaixo degrau
{
	SIDES           8;
	BMAPS                   Wct01Map,Wct01Map,Wct01Map,Wct01Map,
				Wct10Map,Wct10Map,Wct10Map,Wct10Map;                        
	ALBEDO	0.5;
}
TEXTURE StepSpcInvTex // escadaria textura de cima vão ,debaixo degrau
{
	SIDES           8;
	BMAPS                   Wct10Map,Wct10Map,Wct10Map,Wct10Map,
				Wct01Map,Wct01Map,Wct01Map,Wct01Map;
	ALBEDO	0.5;
}

TEXTURE Mmt01Tex
{
	SCALE_XY 32, 32;
	BMAPS    Mmt01Bmp;
	ALBEDO	0.5;
}
TEXTURE Wct01Tex 
{
	SCALE_XY 24,24;
	BMAPS Wct01Map;
	ALBEDO 0.5;
}
TEXTURE Wct02Tex 
{
	SCALE_XY 16,16;
	BMAPS Wct02Map;
	ALBEDO 0.5;
}

TEXTURE Wct10Tex 
{
	SCALE_XY 32,32;
	BMAPS    Wct10Map;
	ALBEDO   0.5;
}
TEXTURE Cct01Tex 
{
	SCALE_XY 8,8;
	BMAPS    Cct01Map;
	ALBEDO   0.5;
}
TEXTURE Cmt01Tex 
{
	SCALE_XY 16,16;
	BMAPS Cmt01Bmp;
	ALBEDO  0.5;
}
TEXTURE Clp01Tex // with lamps W-E
{
	SCALE_XY 16,16;
	BMAPS    Clp01Bmp;
	ALBEDO   0.5;
	AMBIENT  0.4;
}
/*
TEXTURE Clp02Tex // with lamps N-S
{
	SCALE_XY 16, 16;
	BMAPS    Clp02Bmp;
	ALBEDO   0.5;
	AMBIENT  0.4;
}
*/
TEXTURE Fct01Tex 
{
	SCALE_XY 16,16;
	BMAPS Fct01Map;
	ALBEDO 0.5;
}

TEXTURE Fvg01Tex 
{
	SCALE_XY 32,32;
	BMAPS Fvg01Map;
	ALBEDO 0.5;
}
TEXTURE Frb01Tex 
{
	SCALE_XY 32,32;
	BMAPS Frb01Map;
	ALBEDO 0.5;
}
TEXTURE Wmt01Tex
{
	SCALE_XY 32,32;
	BMAPS Wmt01Map;
	ALBEDO 0.5;
}
TEXTURE Wmt13Tex
{
	SCALE_XY 32,32;
	BMAPS Wmt13Bmp;
	ALBEDO 0.5;
}
/////////////////////////////////////////////////////////////////
// Signs
/////////////////////////////////////////////////////////////////
TEXTURE Sign02Tex
{
	SCALE_XY 16,16;
	BMAPS	   Sign02Bmp;
	AMBIENT  0.3;		// Luminous sign
}
TEXTURE Sign02aTex
{
	SCALE_XY 16,16;
	BMAPS	   Sign02aBmp;
	AMBIENT  0.3;		// Luminous sign
}
TEXTURE Sign02bTex
{
	SCALE_XY 16,16;
	BMAPS	   Sign02bBmp;
	AMBIENT  0.3;		// Luminous sign
}
TEXTURE Sign02cTex
{
	SCALE_XY 16,16;
	BMAPS	   Sign02cBmp;
	AMBIENT  0.3;		// Luminous sign
}
TEXTURE Sign03Tex			// Decoration / Don't Smoke
{
	SCALE_XY 24,21;
	BMAPS	   Sign03Bmp;
	ALBEDO   0.5;
	POS_Y	   378;
}
TEXTURE Sign04Tex			// Emergency
{
	SCALE_XY 24,21;
	BMAPS	   Sign04Bmp;
	ALBEDO   0.5;
	POS_Y	   378;
}
TEXTURE Sign05Tex			// Information
{
	SCALE_XY 24,21;
	BMAPS	   Sign05Bmp;
	ALBEDO   0.7;
	POS_Y	   378;
}

TEXTURE Wct51Tex 
{
	SCALE_XY 24,21;
	BMAPS Wct51Bmp;
	ALBEDO 0.5;
}

TEXTURE Wct51aTex 
{
	SCALE_XY 24,21;
	BMAPS Wct51Bmp;
	ALBEDO 0.5;
	ATTACH Sign03Tex;
}
TEXTURE Wct51bTex 
{
	SCALE_XY 24,21;
	BMAPS Wct51Bmp;
	ALBEDO 0.5;
	ATTACH Sign04Tex;
}
TEXTURE Wct51cTex 
{
	SCALE_XY 24,21;
	BMAPS Wct51Bmp;
	ALBEDO 0.5;
	ATTACH Sign05Tex;
}

/////////////////////////////////////////////////////////////////
// Train
/////////////////////////////////////////////////////////////////
TEXTURE TrainFrontTex 
{
	SCALE_XY 14.222, 15.059;
	BMAPS TrainFrontMap;
	ALBEDO 0.5;
        AMBIENT 0.3;
}
TEXTURE TrainSideTex 
{
	SIDES 8;
	SCALE_XY 12.962, 22.588;
	BMAPS		Frb01Map,Frb01Map,Frb01Map,Frb01Map, 
			TrainSideMap,TrainSideMap,TrainSideMap,TrainSideMap;
	ALBEDO 0.5;
        AMBIENT 0.3;
}
TEXTURE TrainSideDblTex 
{
	SCALE_XY 12.962, 22.588;
	BMAPS TrainSideMap;
	ALBEDO 0.5;
        AMBIENT 0.3;
}

TEXTURE TrainTopTex 
{
	SCALE_XY 7.111,7.111;
	BMAPS TrainTopMap;
	ALBEDO 0.5;
}
TEXTURE TrackTex 
{
	SCALE_XY 8,8;
	BMAPS TrackMap;
	ALBEDO 0.5;
}

/////////////////////////////////////////////////////////////////
// Ticket Desks
/////////////////////////////////////////////////////////////////
TEXTURE TiketSideTex 
{
	SCALE_XY 42.660,42.660;
	BMAPS TicketSideMap;
	ALBEDO 0.5;
}
TEXTURE TiketFrontTex 
{
	SCALE_XY 42.660,42.660;
	BMAPS TicketFrontMap;
	ALBEDO 0.5;
}
TEXTURE TiketTopTex 
{
	SCALE_XY 32,32;
	BMAPS TicketTopMap;
	ALBEDO 0.5;
}

/////////////////////////////////////////////////////////////////
// Catracas
/////////////////////////////////////////////////////////////////
TEXTURE CatracaTex 
{
	SCALE_XY 32,32;
	BMAPS CatracaSideMap;
	ALBEDO 0.2;
}
TEXTURE CatracaTopTex 
{
	SCALE_XY 32,32;
	BMAPS CatracaTopMap;
	ALBEDO 0.2;
}
TEXTURE Wmt01aTex
{
	SCALE_XY 32,32;
	BMAPS Wmt01aBmp;
	ALBEDO 0.2;
}
TEXTURE Wmt01bTex
{
	SCALE_XY 32,32;
	BMAPS Wmt01bBmp;
	ALBEDO 0.2;
}
TEXTURE Fmt01aTex
{
	SCALE_XY 16,16;
	BMAPS Fmt01aBmp;
	ALBEDO 0.2;
}


TEXTURE GapTex 
{
	SCALE_XY 32,32;
	SIDES 8;
	BMAPS Frb01Map,Frb01Map,Frb01Map,Frb01Map,
		Wct01Map,Wct01Map,Wct01Map,Wct01Map;
	ALBEDO 0.5;
}
/////////////////////////////////////////////////////////////////////
// Bullet holes (max 10 per wall)
/////////////////////////////////////////////////////////////////////
/*
TEXTURE Mhl01Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl02Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl03Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl04Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl05Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl06Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl07Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl08Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl09Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl10Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
*/
/////////////////////////////////////////////////////////////////////
// Actions
/////////////////////////////////////////////////////////////////////

