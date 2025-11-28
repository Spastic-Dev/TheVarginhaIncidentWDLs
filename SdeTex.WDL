BMAP WBr03Bmp, <WBr03.pcx>; // parede sao tome

BMAP WCt01Bmp, <WCt10.pcx>; //concreto frisado
BMAP WCt06Bmp, <WCt06.pcx>; // reboque sujo
BMAP WCt50aBmp,<WCt50a.pcx>;//
BMAP WCt50bBmp,<WCt50b.pcx>;//
BMAP WSl01Bmp, <WSl01.pcx>; // barranco

BMAP WSt01Bmp, <WSt01.pcx>; // parede sao tome
BMAP WSt02Bmp, <WSt02.pcx>; // pedras em pilha

BMAP WMt11Bmp, <WMt11.pcx>; 
BMAP WWd01Bmp, <wwd01.pcx>; // madeira escura

BMAP FCt01Bmp, <FCt01.pcx>; //concreto liso
BMAP FSl01Bmp, <FSl01.pcx>;
BMAP Faf01bBmp,<Faf01.pcx>;// asfalto
BMAP FGr01Bmp, <FGr01.pcx>; //grama
BMAP FMt03Bmp, <FMt03.pcx>; // chapa expandida
BMAP FBr02Bmp, <FBr02.pcx>;// telhas
BMAP FSl03Bmp, <FSl03.pcx>; // solo sao tome cinza
BMAP FSl04Bmp, <FSl04.pcx>; // solo sao tome branco
BMAP FSl05Bmp, <FSl05.pcx>; // solo sao tome marron
BMAP FSt01Bmp, <FSt01.pcx>; // piso sao tome
BMAP FTl01Bmp, <FTl01.pcx>; // cacos vermelhos
BMAP FRb01Bmp, <FRb01.pcx>;

BMAP Sign06Bmp, <Sign06.pcx>; // pedreira caridoso
BMAP Sign07Bmp, <Sign07.pcx>; // pousada 7 cores


BMAP CCt01Bmp, <CCt01.pcx>; 

BMAP FMt04Bmp, <FMt04.pcx>;
BMAP Back01Bmp,<Back06.pcx>;


BMAP Mfn01Bmp, <Mfn02.PCX>;


BMAP Apnlg1Bmp, <Apnlg.pcx>,0  ,0 ,41, 41; // access panel
BMAP Apnlg2Bmp, <Apnlg.pcx>,41 ,0 ,41, 41;
BMAP Apnlg3Bmp, <Apnlg.pcx>,82 ,0 ,41, 41;
BMAP Apnlg4Bmp, <Apnlg.pcx>,123,0 ,41, 41;
BMAP Apnlg5Bmp, <Apnlg.pcx>,164,0 ,41, 41;
BMAP Apnlg6Bmp, <Apnlg.pcx>,0  ,41,41, 41;
BMAP Apnlg7Bmp, <Apnlg.pcx>,41 ,41,41, 41;
BMAP Apnlg8Bmp, <Apnlg.pcx>,82 ,41,41, 41;
BMAP Apnlg9Bmp, <Apnlg.pcx>,123,41,41, 41;
BMAP Apnlg0Bmp, <Apnlg.pcx>,164,41,41, 41;

BMAP DMt02Bmp, <DMt02.pcx>;

// ********************

TEXTURE DMT02Tex
{
	SCALE_XY 10.44,8.25;
	BMAPS DMt02Bmp;
	ALBEDO	0.5;
}

TEXTURE Sign06Tex // pedreira carridoso 
{
	SCALE_XY 72.5,72.5;
	BMAPS Sign06Bmp;
       POS_X 1200;
       POS_Y 192;
}
TEXTURE Sign06FSl05Tex // pedreira carridoso 
{
	SCALE_XY 16,16;
	BMAPS FSl05Bmp;
       ATTACH Sign06Tex;
	ALBEDO	0.5;
}

TEXTURE Sign07Tex // pousada
{
	SCALE_XY 64,64;
	BMAPS Sign07Bmp;
       POS_X 900;
       POS_Y 192;

}
TEXTURE Sign07FSl05Tex 
{
	SCALE_XY 16,16;
	BMAPS FSl05Bmp;
       ATTACH Sign07Tex;
	ALBEDO	0.5;
}

// ************ Painel de acesso
TEXTURE OffApnlgTex 
{
	SCALE_XY 82,82;
	BMAPS Apnlg0Bmp;
}
TEXTURE OpenApnlgTex 
{
	SCALE_XY 82,82;
	BMAPS Apnlg1Bmp;
}
TEXTURE OnApnlgTex 
{
	SCALE_XY 82,82;
       CYCLES 14;
	BMAPS Apnlg2Bmp,Apnlg3Bmp,Apnlg4Bmp,Apnlg5Bmp,Apnlg6Bmp,Apnlg7Bmp,Apnlg8Bmp,Apnlg9Bmp,Apnlg8Bmp,Apnlg7Bmp,Apnlg6Bmp,Apnlg5Bmp,Apnlg4Bmp,Apnlg3Bmp;
       DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
}
TEXTURE KeyOffFCt01Tex 
{
	SCALE_XY 32,32;
	BMAPS FCt01Bmp;
       ATTACH OffApnlgTex;
	ALBEDO	0.5;
}
TEXTURE KeyOpenFCt01Tex 
{
	SCALE_XY 32,32;
	BMAPS FCt01Bmp;
       ATTACH OpenApnlgTex;
	ALBEDO	0.5;
}
TEXTURE KeyOnFCt01Tex 
{
	SCALE_XY 32,32;
       CYCLES 14;
	BMAPS FCt01Bmp,FCt01Bmp,FCt01Bmp,FCt01Bmp,FCt01Bmp,FCt01Bmp,FCt01Bmp,FCt01Bmp,FCt01Bmp,FCt01Bmp,FCt01Bmp,FCt01Bmp,FCt01Bmp,FCt01Bmp;
       DELAY 2,2,2,2,2,2,2,2,2,2,2,2,2,2;
       ATTACH OnApnlgTex;
	ALBEDO	0.5;
}



TEXTURE NullTex
{
	SCALE_XY 1,1;
	BMAPS    NULL;
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

TEXTURE FSl01Tex 
{
	SCALE_XY 16,16;
	BMAPS FSl01Bmp;
	ALBEDO 0.5;
}

TEXTURE  back01Tex 
{
	SIDES           5;
	BMAPS      back01Bmp,back01Bmp,back01Bmp,back01Bmp,back01Bmp;
	FLAGS           SKY;

}

TEXTURE Mfn01Tex 
{
	SCALE_XY 16,24;
	BMAPS Mfn01Bmp;
	ALBEDO 0.3;
}

TEXTURE Faf01bTex 
{
	SCALE_XY 10,10;
	BMAPS Faf01bBmp;
	ALBEDO 0.3;
}

TEXTURE FBr02Tex 
{
	SCALE_XY 10,10;
	BMAPS FBr02Bmp;
	ALBEDO 0.3;
}

TEXTURE CCt01Tex 
{
	SCALE_XY 32,25;
	BMAPS CCt01Bmp;
	ALBEDO 0.5;
}

TEXTURE FGr01Tex 
{
	SCALE_XY 32,32;
	BMAPS FGr01Bmp;
	ALBEDO 0.5;
}

TEXTURE FMt03Tex
{
	SCALE_XY 32,28.44;
	BMAPS FMt03Bmp;
	ALBEDO	0.5;
}
TEXTURE WCt06Tex
{
	SCALE_XY 32,32;
	BMAPS WCt06Bmp;
	ALBEDO	0.5;
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
TEXTURE FSl03Tex
{
	SCALE_XY 16,16;
	BMAPS FSl03Bmp;
	ALBEDO	0.5;
}


TEXTURE FSl04Tex
{
	SCALE_XY 16,16;
	BMAPS FSl04Bmp;
	ALBEDO	0.5;
}

TEXTURE FSl05Tex
{
	SCALE_XY 16,16;
	BMAPS FSl05Bmp;
	ALBEDO	0.5;
}

TEXTURE WSl01Tex
{
	SCALE_XY 16,16;
	BMAPS WSl01Bmp;
	ALBEDO	0.5;
}

TEXTURE WSt02Tex
{
	SCALE_XY 32,32;
	BMAPS WSt02Bmp;
	ALBEDO	0.5;
}

TEXTURE WSt01Tex
{
	SCALE_XY 25.6,25.6;
	BMAPS WSt01Bmp;
	ALBEDO	0.5;
}

TEXTURE WBr03Tex
{
	SCALE_XY 32,32;
	BMAPS WBr03Bmp;
	ALBEDO	0.5;
}

TEXTURE FSt01Tex
{
	SCALE_XY 16,16;
	BMAPS FSt01Bmp;
	ALBEDO	0.5;
}

TEXTURE FMt04Tex
{
	SCALE_XY 18.286,10.667;
	BMAPS FMt04Bmp;

	ALBEDO	0.5;
}
TEXTURE FTl01Tex
{
	SCALE_XY 32,32;
	BMAPS FTl01Bmp;
	ALBEDO	0.5;
}
TEXTURE FRb01Tex
{
	SCALE_XY 32,32;
	BMAPS FRb01Bmp;
	ALBEDO	0.5;
}
TEXTURE WWd01Tex
{
	SCALE_XY 	32,32;
	BMAPS 	WWd01Bmp;
	ALBEDO	0.5;
}
TEXTURE WWd01aTex
{
	SCALE_XY 	32,32;
	SIDES		8;
	BMAPS 	WWd01Bmp,WWd01Bmp,WWd01Bmp,WWd01Bmp,
			FSl01Bmp,FSl01Bmp,FSl01Bmp,FSl01Bmp;
	ALBEDO	0.5;
}
// texturas escurecidas p/teto
TEXTURE DarkWSl01Tex
{
	SCALE_XY 16,16;
	BMAPS WSl01Bmp;
       AMBIENT -0.2;
	ALBEDO	0.5;
}
TEXTURE DarkWSt02Tex
{
	SCALE_XY 16,16;
	BMAPS WSt02Bmp;
       AMBIENT -0.2;
	ALBEDO	0.5;
}
TEXTURE DarkFSt01Tex
{
	SCALE_XY 16,16;
	BMAPS FSt01Bmp;
       AMBIENT -0.2;
	ALBEDO	0.5;
}
TEXTURE DarkWMt11Tex
{
	SCALE_XY 16,16;
	BMAPS WMt11Bmp;
       AMBIENT -0.1;
	ALBEDO	0.5;
}
// texturas c/ som
TEXTURE AlarmCCt01Tex 
{
	SCALE_XY 32,25;
	BMAPS CCt01Bmp;
	ALBEDO 0.5;
       SOUND Alarm03Snd;
       SVOL 0;
       FLAGS SLOOP;
       SDIST 150;
	ALBEDO	0.5;
}
TEXTURE WalkWSt02Tex
{
	SCALE_XY 32,25;
	BMAPS WSt02Bmp;
       SOUND FCt01Snd;
       SVOL 0.1;
	ALBEDO	0.5;
}

// Animadas

/* NOT USED
TEXTURE ControlOpenTex
{
	SCALE_XY 32,32;
	BMAPS WCt06Bmp;
       ATTACH Sign07Tex;
	ALBEDO	0.5;
}



TEXTURE ControlCloseTex
{
	SCALE_XY 32,32;
	BMAPS WCt06Bmp;
       ATTACH Sign06Tex;
	ALBEDO	0.5;
}

*/

