/////////////////////////////////////////////////////////////////
// Water Textures
// Excerpts copyrighted by Conitec Gmbh used under permission
/////////////////////////////////////////////////////////////////
BMAP  FWt01G01Bmp, 	<FWt02.pcx>,   0,   0, 128, 128;
BMAP  FWt01G02Bmp, 	<FWt02.pcx>, 128,   0, 128, 128;
BMAP  FWt01G03Bmp, 	<FWt02.pcx>, 256,   0, 128, 128;
BMAP  FWt01G04Bmp, 	<FWt02.pcx>, 384,   0, 128, 128;
BMAP  FWt01G05Bmp, 	<FWt02.pcx>, 512,   0, 128, 128;
BMAP  FWt01G06Bmp, 	<FWt02.pcx>,   0, 128, 128, 128;
BMAP  FWt01G07Bmp, 	<FWt02.pcx>, 128, 128, 128, 128;
BMAP  FWt01G08Bmp, 	<FWt02.pcx>, 256, 128, 128, 128;
BMAP  FWt01G09Bmp, 	<FWt02.pcx>, 384, 128, 128, 128;
BMAP  FWt01G10Bmp,	<FWt02.pcx>, 512, 128, 128, 128;
BMAP  CWt01G01Bmp, 	<CWt02.pcx>,   0,   0,  64,  64;
BMAP  CWt01G02Bmp, 	<CWt02.pcx>,  64,   0,  64,  64;
BMAP  CWt01G03Bmp, 	<CWt02.pcx>, 128,   0,  64,  64;
BMAP  CWt01G04Bmp, 	<CWt02.pcx>, 192,   0,  64,  64;
BMAP  CWt01G05Bmp, 	<CWt02.pcx>, 256,   0,  64,  64;
BMAP  CWt01G06Bmp, 	<CWt02.pcx>,   0,  64,  64,  64;
BMAP  CWt01G07Bmp, 	<CWt02.pcx>,  64,  64,  64,  64;
BMAP  CWt01G08Bmp, 	<CWt02.pcx>, 128,  64,  64,  64;
BMAP  CWt01G09Bmp, 	<CWt02.pcx>, 192,  64,  64,  64;
BMAP  CWt01G10Bmp, 	<CWt02.pcx>, 256,  64,  64,  64;
BMAP  FSl01G01Bmp, 	<FSl01a.pcx>,  0,   0,  64,  64;
BMAP  FSl01G02Bmp, 	<FSl01a.pcx>, 64,   0,  64,  64;
BMAP  FSl01G03Bmp, 	<FSl01a.pcx>,128,   0,  64,  64;
BMAP  FSl01G04Bmp, 	<FSl01a.pcx>,192,   0,  64,  64;
BMAP  FSl01G05Bmp, 	<FSl01a.pcx>,256,   0,  64,  64;
BMAP  FSl01G06Bmp, 	<FSl01a.pcx>,  0,  64,  64,  64;
BMAP  FSl01G07Bmp, 	<FSl01a.pcx>, 64,  64,  64,  64;
BMAP  FSl01G08Bmp, 	<FSl01a.pcx>,128,  64,  64,  64;
BMAP  FSl01G09Bmp, 	<FSl01a.pcx>,192,  64,  64,  64;
BMAP  FSl01G10Bmp,	<FSl01a.pcx>,256,  64,  64,  64;
TEXTURE  FWt01Tex {
	SCALE_XY	10,10;
	CYCLES	10;
	BMAPS 	FWt01G01Bmp,FWt01G02Bmp,FWt01G03Bmp,FWt01G04Bmp,FWt01G05Bmp,FWt01G06Bmp,FWt01G07Bmp,FWt01G08Bmp,FWt01G09Bmp,FWt01G10Bmp;
	DELAY		2,2,2,2,2,2,2,2,2,2;
	SOUND		FWt01Snd;
}
TEXTURE  CWt01Tex {
	SCALE_XY	10,10;
	CYCLES	10;
	BMAPS 	CWt01G01Bmp,CWt01G02Bmp,CWt01G03Bmp,CWt01G04Bmp,CWt01G05Bmp,CWt01G06Bmp,CWt01G07Bmp,CWt01G08Bmp,CWt01G09Bmp,CWt01G10Bmp;
	DELAY		3,3,3,3,3,3,3,3,3,3;
	AMBIENT	1;
	SOUND		CWt01Snd;
	FLAGS		SLOOP;
}
TEXTURE  FSl01aTex {
	SCALE_XY	8,8;
	CYCLES	10;
	BMAPS 	FSl01G01Bmp,FSl01G02Bmp,FSl01G03Bmp,FSl01G04Bmp,FSl01G05Bmp,FSl01G06Bmp,FSl01G07Bmp,FSl01G08Bmp,FSl01G09Bmp,FSl01G10Bmp;
	DELAY		3,3,3,3,3,3,3,3,3,3;
	AMBIENT	0.3;
}
