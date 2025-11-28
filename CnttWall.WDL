///////////////////////////////////
// Contato Wall
///////////////////////////////////
WALL NullWall 
{
    TEXTURE NullTex;
    FLAGS   PASSABLE,INVISIBLE;
}
Wall ImpassableWall
{
    TEXTURE NullTex;
    FLAGS   INVISIBLE;//,IMPASSABLE;
}
Wall GateWall
{
    TEXTURE	Fsl01Tex;
    FLAGS	INVISIBLE;
    IF_NEAR FinishPlayer;
}
Wall GateWarnWall
{
    TEXTURE	NullTex;
    DIST	10;
    FLAGS	INVISIBLE;
    IF_NEAR WarnPlayer;
}
Wall MonsterWall
{
    TEXTURE NullTex;
    DIST      0;
    FLAGS   INVISIBLE,PASSABLE;
}

Wall Mfn01Wall
{
    TEXTURE     Mfn01Tex;
    FLAGS       FENCE,TRANSPARENT,IMPASSABLE,IMMATERIAL;
    POSITION    0;
}
Wall Wsl01Wall
{
    TEXTURE     Fsl01Tex;
}

Wall Wbr01Wall
{
    TEXTURE Wbr01Tex;
//        FLAGS   IMPASSABLE,PASSABLE;

}
Wall Wbr01ImpWall
{
    TEXTURE Wbr01Tex;
    FLAGS   IMPASSABLE;

}
Wall Wbr01ReptWall
{
    TEXTURE Wbr01Tex;
    FLAGS   IMPASSABLE;

}
Wall Wct01Wall
{
    TEXTURE Fct01Tex;
}
Wall Wbr02Wall
{
    TEXTURE Wbr02Tex;
}
Wall Wbr03Wall
{
    TEXTURE Wbr03Tex;
}

Wall Wwd04Wall
{
    TEXTURE Wwd04Tex;
}


Wall BackWall
{
    TEXTURE back01Tex;
}
//********HOUSE
Wall WHouseFrontWall
{
    TEXTURE Wbr03Tex;
}
Wall WHouseBackWall
{
    TEXTURE Wbr03Tex;
}
Wall WHouseLeftWall
{
    TEXTURE Wbr03WindowTex;
}
Wall WHouseRigthWall
{
    TEXTURE Wbr03WindowTex;
}
Wall WHouseUpWall
{
    TEXTURE Wbr03Tex;
}

//******************END HOUSE

//////////////////////////////////////////////////////////////
// Actions
//////////////////////////////////////////////////////////////

ACTION WarnPlayer {
	SET	MY.DIST, 20;
	SET	MESSAGE_TEXT, Wrn22Str;
	CALL	DisplayMessage;
}
ACTION ResetWarn {
	SET MY.DIST, 5;
}
