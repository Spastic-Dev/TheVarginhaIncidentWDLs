//Wall
///////////////////////////////////
// Simple Wall
///////////////////////////////////

WALL NullWall 
{
	TEXTURE NullTex;
	FLAGS   PASSABLE,INVISIBLE;
}
Wall ImpassableWall
{
	TEXTURE NullTex;
	FLAGS   INVISIBLE;//IMPASSABLE;
}
Wall WMt23Wall  
{
	TEXTURE WMt23Tex;
}

Wall DMt01Wall  
{
	TEXTURE DMt01Tex;
}
Wall UtiDoorWall  
{
	TEXTURE DMt01Tex;
	DIST 3;
	IF_NEAR openUTIDoor;
}
Wall WCt10Wall  
{
	TEXTURE WCt10Tex;
}

Wall Wbr04Wall  //white bricks
{
	TEXTURE Wbr04Tex;
}
Wall Wgr02Wall  //fence
{
	TEXTURE Wgr02Tex;
	FLAGS   FENCE,TRANSPARENT;
}
Wall WWd02Wall  //wood
{
	TEXTURE WWd02Tex;
}
Wall WWd02aWall  //gaveta
{
	TEXTURE WWd02aTex;
}
Wall WWd02bWall  //armario
{
	TEXTURE WWd02bTex;
}
Wall WWd02a1Wall  //gaveta
{
	TEXTURE WWd02a1Tex;
}
Wall WWd02b1Wall  //armario
{
	TEXTURE WWd02b1Tex;
}

Wall WCt01Wall
{
	TEXTURE WCt01Tex;
	FLAGS   PORTCULLIS;
}
Wall WCt01ImpWall
{
	TEXTURE WCt01Tex;
	FLAGS   PORTCULLIS,IMPASSABLE;
}

Wall WCt05Wall
{
	TEXTURE Wpl05Tex;
}
Wall WCt05ImpWall
{
	TEXTURE Wpl05Tex;
       	FLAGS IMPASSABLE;
}

Wall WCt05aWall
{
	TEXTURE Wpl05aTex;
}
Wall WCt05bWall
{
	TEXTURE Wpl05bTex;
}
Wall WCt05dWall
{
	TEXTURE Wpl05dTex;
}
Wall WAr01Wall
{
	TEXTURE WAr01Tex;
}

Wall TAr26Wall
{
	TEXTURE TAr26Tex;
	FLAGS CURTAIN,PASSABLE;
}
Wall WUTIWall
{
	TEXTURE WUTITex;
	
}
Wall WCtWdWall
{
	TEXTURE WCtWDTex;
	FLAGS PORTCULLIS;
	
}
Wall CMt01Wall
{
	TEXTURE CMt01Tex;
	FLAGS   PORTCULLIS;
}

Wall BackWall
{
	TEXTURE BackTex;
}
Wall Wfc01Wall
{
	TEXTURE Wfc01Tex;
	
}
Wall Wfc02Wall
{
	TEXTURE Wfc02Tex;
	
}
Wall Wfc03Wall
{
	TEXTURE Wfc03Tex;
	
}
Wall Wfc04Wall
{
	TEXTURE Wfc04Tex;
	
}
Wall Wfc05Wall
{
	TEXTURE Wfc05Tex;
	
}
WALL WMt10Wall
{
	TEXTURE Wmt10Tex;
}

WALL WMt18dWall
{
	TEXTURE Wmt18dTex;
}
WALL WMt18d1Wall
{
	TEXTURE Wmt18d1Tex;
}
WALL WMt01Wall
{
	TEXTURE Wmt01Tex;
}
WALL Scrn01Wall
{
	TEXTURE Scrn01Tex;
}

WALL Scrn02Wall
{
	TEXTURE Scrn02Tex;
}

WALL DAl02AWall
{
	TEXTURE 	DAl02OpenTex;
	FLAGS 	SAVE,PORTCULLIS,IMMATERIAL;
	DIST 		1;
	IF_NEAR 	OpenUtiLift; // somente p/ debug uma chave vai controlar a porta
	IF_FAR	CloseUtiLift;
}
WALL DAl02BWall
{
	TEXTURE 	DAl02OpenTex;
	FLAGS 	SAVE,PORTCULLIS,IMMATERIAL;
	DIST 		2;
	IF_NEAR 	OpenUtiLift; // somente p/ debug uma chave vai controlar a porta
	IF_FAR	CloseUtiLift;
}

Wall Wfb03Wall
{
	TEXTURE 	Ffb03Tex;
	FLAGS		PORTCULLIS;
}
Wall Wfb03aWall
{
	TEXTURE 	Ffb03aTex;
}
Wall Wmt05Wall
{
	TEXTURE	Fmt05Tex;
	POSITION	1;
	FLAGS		PORTCULLIS;
}