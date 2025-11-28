WALL DMt02Wall
{
	TEXTURE DMt02Tex;
       FLAGS PORTCULLIS;
}
 WALL AlarmCCt01Wall
{
	TEXTURE AlarmCCt01Tex;
}

WALL FSt01Wall
{
	TEXTURE FSt01Tex;
}
WALL WBr03Wall
{
	TEXTURE WBr03Tex;
}
 WALL WSt01Wall
{
	TEXTURE WSt01Tex;
}
 WALL WSt02Wall
{
	TEXTURE WSt02Tex;
}

 WALL WSl01Wall
{
	TEXTURE WSl01Tex;
}

 WALL FSl05Wall
{
	TEXTURE FSl05Tex;
}
 WALL FSl05ImpWall
{
	TEXTURE FSl05Tex;
	FLAGS	  IMPASSABLE;
}
 WALL FSl04Wall
{
	TEXTURE FSl04Tex;
}

 WALL FSl03Wall
{
	TEXTURE FSl03Tex;
}

WALL WCt06Wall
{
	TEXTURE WCt06Tex;
	FLAGS PORTCULLIS;
}

Wall WCt50bWall
{
	TEXTURE WCt50bTex;
	
}


 WALL FMt03Wall
{
	TEXTURE FMt03Tex;
	FLAGS PORTCULLIS;
}

Wall FGr01Wall
{
	TEXTURE FGr01Tex;
}

Wall CCt01Wall
{
	TEXTURE CCt01Tex;
}
Wall Mfn01Wall
{
	TEXTURE 	Mfn01Tex;
	FLAGS   	FENCE,TRANSPARENT,IMPASSABLE,IMMATERIAL;
	POSITION	0;
}

Wall BackWall
{
	TEXTURE back01Tex;
       // OFFSET_Y 50;
}


Wall FSl01Wall
{
	TEXTURE FSl01Tex;
}

Wall FCt01Wall
{
	TEXTURE FCt01Tex;
	FLAGS   PORTCULLIS;
}
Wall FCt01ImpWall
{
	TEXTURE FCt01Tex;
	FLAGS   IMPASSABLE;
}

Wall WCt01Wall
{
	TEXTURE WCt01Tex;
	FLAGS   PORTCULLIS;
}

Wall WWd01Wall
{
	TEXTURE WWd01Tex;
	FLAGS   IMPASSABLE;
}
Wall WWd01aWall
{
	TEXTURE WWd01aTex;
	FLAGS   IMPASSABLE;
}

WALL NullWall 
{
	TEXTURE NullTex;
	FLAGS   PASSABLE,INVISIBLE;
}
Wall ImpassableWall
{
	TEXTURE NullTex;
	FLAGS   INVISIBLE,IMPASSABLE;
}
Wall DeathWall
{
	TEXTURE NullTex;
	FLAGS   INVISIBLE,PASSABLE;
	IF_NEAR FinishPlayer;
}

// door 1

Wall Door01Wall
{
	TEXTURE FMt03Tex;
	FLAGS PORTCULLIS;
}
WALL Lock01Wall
{
       TEXTURE KeyOffFCt01Tex;
	FLAGS PORTCULLIS;
       DIST 3;
       IF_NEAR SetTouch1;
       IF_FAR  ResetTouch;
}
Wall Door02Wall
{
	TEXTURE FMt03Tex;
	FLAGS PORTCULLIS;
       
}
WALL Lock02Wall
{
       TEXTURE KeyOffFCt01Tex;
	FLAGS PORTCULLIS;
       DIST 3;
       IF_NEAR SetTouch2;
       IF_FAR  ResetTouch;
}

Wall Door03Wall
{
	TEXTURE FMt03Tex;
	FLAGS PORTCULLIS;
       
}
WALL Lock03Wall
{
       TEXTURE KeyOnFCt01Tex;
	FLAGS PORTCULLIS;
       DIST 3;
       IF_NEAR SetTouch3;
       IF_FAR  ResetTouch;
}

Wall Pos01Wall
{
	TEXTURE FMt03Tex;
	FLAGS PORTCULLIS;
}
Wall Pos02Wall
{
	TEXTURE FMt03Tex;
	FLAGS PORTCULLIS;
}
Wall Pos03Wall
{
	TEXTURE FMt03Tex;
	FLAGS PORTCULLIS;
}





Wall Control1Wall
{
	TEXTURE KeyOnFCt01Tex;
	FLAGS PORTCULLIS;
       DIST 3;
       IF_NEAR SetTouch11;
       IF_FAR  ResetTouch;
}
Wall Control2Wall
{
	TEXTURE KeyOnFCt01Tex;
	FLAGS PORTCULLIS;
       DIST 3;
       IF_NEAR SetTouch12;
       IF_FAR  ResetTouch;
}
// ********* Big Gate
//****************************

Wall BatenteWall
{
	TEXTURE WCt01Tex;
	FLAGS   PORTCULLIS;
}
Wall Batente2Wall
{
	TEXTURE WCt01Tex;
	FLAGS   PORTCULLIS;
}

Wall CloseWall
{
	TEXTURE WCt01Tex;
	FLAGS   PORTCULLIS;
	IF_NEAR ReverseGate;
}
Wall OpenBigGateWall
{
	TEXTURE KeyOnFCt01Tex;
	DIST 3;
	IF_NEAR EnableGate;
	IF_FAR  DisableGate;
	FLAGS   PORTCULLIS;
}
Wall Sign07FSl05Wall
{
	TEXTURE Sign07FSl05Tex;
	//FLAGS   PORTCULLIS;
}
Wall Sign06FSl05Wall
{
	TEXTURE Sign06FSl05Tex;
	//FLAGS   PORTCULLIS;
}

