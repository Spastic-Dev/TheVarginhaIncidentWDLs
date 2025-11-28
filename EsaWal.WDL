WALL NullWall 
{
    TEXTURE NullTex;
    FLAGS   PASSABLE,INVISIBLE;
}
WALL ToSoccerWall 
{
    	TEXTURE NullTex;
    	FLAGS   PASSABLE,INVISIBLE;
	IF_NEAR toSoccer;
}
WALL ToGasWall 
{
    	TEXTURE NullTex;
    	FLAGS   PASSABLE,INVISIBLE;
	IF_NEAR toGas;
}
WALL ToPoolWall 
{
    	TEXTURE NullTex;
    	FLAGS   PASSABLE,INVISIBLE;
	IF_NEAR toPool;
}
WALL fromSoccerWall 
{
    	TEXTURE NullTex;
    	FLAGS   PASSABLE,INVISIBLE;
	IF_NEAR fromSoccer;
}
WALL fromGasWall 
{
    	TEXTURE NullTex;
    	FLAGS   PASSABLE,INVISIBLE;
	IF_NEAR fromGas;
}
WALL fromPoolWall 
{
    	TEXTURE NullTex;
    	FLAGS   PASSABLE,INVISIBLE;
	IF_NEAR fromPool;
}
WALL SetRaloWall 
{
    	TEXTURE NullTex;
    	FLAGS   PASSABLE,INVISIBLE;
	IF_NEAR setRalo;
}
WALL SecretGateNWall 
{
    	TEXTURE WBr10Tex;
    	FLAGS   PASSABLE;
	IF_NEAR setNTroop;
}
WALL SecretGateSWall 
{
    	TEXTURE WBr10Tex;
    	FLAGS   PASSABLE;
	IF_NEAR setSTroop;
}
WALL SecretWeaponWall 
{
    	TEXTURE WBr10Tex;
    	FLAGS   PASSABLE;
	IF_NEAR setWeaponTroop;
}
WALL SecretKeyWall 
{
    	TEXTURE WBr10Tex;
    	FLAGS   PASSABLE;
	IF_NEAR setKeyTroop;
}
WALL MonsterWall 
{
    TEXTURE NullTex;
    FLAGS   PASSABLE,IMPASSABLE,INVISIBLE;
}
/*
WALL BunkerWall 
{
    TEXTURE BunkerTex; //WBr10Tex;
    //FLAGS   IMPASSABLE;
}
*/
WALL  Control1Wall
{
    TEXTURE KeyOnWBr10Tex;
    DIST 5;
    IF_NEAR setPass1;
    IF_FAR  resetPass;
}
WALL  Control2Wall
{
    TEXTURE KeyOnWBr10Tex;
    DIST 5;
    IF_NEAR setPass2;
    IF_FAR  resetPass;
}
Wall ImpassableWall
{
    TEXTURE NullTex;
    FLAGS   INVISIBLE;//IMPASSABLE;
}

// fluxo
Wall Passagem1Wall  //fence
{
    TEXTURE Wgr02Tex;
    FLAGS   FENCE,TRANSPARENT,IMMATERIAL;
       //POSITION 7;
}


Wall Passagem2Wall  //fence
{
    TEXTURE Wgr02Tex;
    FLAGS   FENCE,TRANSPARENT,IMMATERIAL;
       //POSITION 7;
}


//Wall
///////////////////////////////////
// Simple Wall
///////////////////////////////////
//**********************

Wall Wgr02Wall  //fence
{
    TEXTURE Wgr02Tex;
    FLAGS   TRANSPARENT,IMMATERIAL;
}

Wall Wgr02aWall  //fence
{
    TEXTURE Wgr02aTex;
    FLAGS   FENCE,TRANSPARENT,IMMATERIAL;
}

Wall WCt06Wall
{
    TEXTURE WCt06Tex;
}

Wall WSt01Wall
{
    TEXTURE WSt01Tex;
}

//**********************
Wall WMt01Wall
{
    TEXTURE WMt01Tex;
    
}
Wall Wfc03Wall
{
    TEXTURE Wfc03Tex;
}


Wall Wfc05Wall
{
    TEXTURE Wfc05Tex;
}

//**********************


Wall Wfc01Wall
{
    TEXTURE Wfc01Tex;
}
//********************
Wall Wbr02Wall  //white bricks
{
    TEXTURE Wbr02Tex;
    //IF_NEAR FinishPlayer;
}
Wall Wbr02ImpWall  //white bricks
{
    TEXTURE Wbr02Tex;
    FLAGS IMPASSABLE;
}
Wall Wbr02MonsterWall  //white bricks
{
    TEXTURE Wbr02Tex;
    FLAGS IMPASSABLE,PASSABLE;
}
//**********************

Wall WPl04ImpWall
{
    TEXTURE WPl04Tex;
    FLAGS IMPASSABLE;
}
Wall WPl04Wall
{
    TEXTURE WPl04Tex;
}
Wall WPl04aWall
{
    TEXTURE WPl04aTex;
}
Wall WPl04bWall
{
    TEXTURE WPl04bTex;
}
Wall WGl01Wall
{
    TEXTURE WGl01Tex;
}
//*******************



Wall WPl05Wall
{
    TEXTURE WPl05Tex;
}
Wall WPl05MonsterWall
{
    TEXTURE WPl05Tex;
    FLAGS PASSABLE,IMPASSABLE;
}
Wall WPl05ImpWall
{
    TEXTURE WPl05Tex;
    FLAGS IMPASSABLE;
}
Wall WPl03aWall
{
    TEXTURE WPl03aTex;
}
//*******************
Wall FGr01Wall
{
    TEXTURE FGr01Tex;
}
//*******************
Wall FTl03Wall
{
    TEXTURE FTl03Tex;
}
Wall TAr29Wall // a ser substituida
{
    TEXTURE FTl03Tex;
}
//******************



Wall BackWall
{
    	TEXTURE back01Tex;
}
//*******************

Wall WBr13Wall
{
    	TEXTURE WBr13Tex;
}
//*****************
Wall WBr10Wall
{
    	TEXTURE WBr10Tex;
}
Wall WBr10MonsterWall
{
    	TEXTURE WBr10Tex;
	FLAGS PASSABLE,IMPASSABLE;
}
//*******************
Wall WBr01Wall
{
    TEXTURE WBr01Tex;
}

//***********************

Wall FBr03Wall
{
    TEXTURE FBr03Tex;
}

//******************

Wall FSl01Wall
{
    TEXTURE FSl01Tex;
}
//********************
Wall WWd02Wall //wood
{
    TEXTURE WWd02Tex;
    FLAGS IMPASSABLE;
}
//**********************
Wall FCt01Wall
{
    TEXTURE FCt01Tex;

}
//****************

Wall TBr01Wall
{
    TEXTURE TBr01Tex;
}

//******************
//*****Especiais
Wall GuaritaWall
{
    TEXTURE GuaritaTex;
}
//*****************

WALL WFb02Wall
{
 TEXTURE WFb02bTex;
}

WALL WFb02bWall
{
 TEXTURE WFb02bTex;
}

WALL WFb02aWall
{
 TEXTURE WFb02aTex;
}
