
/////////////////////////////////////////////////////////////////
// Se Walls
/////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////
// Sounds
/////////////////////////////////////////////////////////////////
SOUND	Catr01Snd, <catr01.wav>;
SOUND	Catr02Snd, <catr02.wav>;
/////////////////////////////////////////////////////////////////
// Walls
/////////////////////////////////////////////////////////////////
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

WALL FenceWall 
{
    TEXTURE         Mmt01Tex;
    POSITION        0.0;
    FLAGS           FENCE, TRANSPARENT;
    DIST 1.5;
    IF_NEAR         PlayPassSound;
}
Wall Wct01Wall
{
    TEXTURE Wct01Tex;
    IF_HIT  DrillHole;
}
Wall Wct01ImpWall
{
    TEXTURE Wct01Tex;
    FLAGS   IMPASSABLE;
    //IF_HIT  DrillHole;
}
Wall Wct01MonsterWall
{
    TEXTURE Wct01Tex;
    FLAGS   IMPASSABLE,PASSABLE;
    IF_HIT  DrillHole;
}
WALL WMt22Wall 
{
    TEXTURE WMt22Tex; 
}
WALL WMt20Wall 
{
    TEXTURE WMt20Tex; 
}
WALL WMt20aWall 
{
    TEXTURE WMt20aTex; 
}
Wall Wct51Wall
{
    TEXTURE Wct51Tex;
    IF_HIT  DrillHole;
}
Wall Wct51aWall
{
    TEXTURE Wct51aTex;
//  IF_HIT  DrillHole;
}
Wall Wct51bWall
{
    TEXTURE Wct51bTex;
//  IF_HIT  DrillHole;
}
Wall Wct51cWall
{
    TEXTURE Wct51cTex;
//  IF_HIT  DrillHole;
}
Wall Wct10ImpWall
{
    TEXTURE         Wct10Tex;
    POSITION        1;
    FLAGS           PORTCULLIS,IMPASSABLE;
}
Wall Wct10NoPorticullisWall
{
    TEXTURE         Wct10Tex;
}
Wall Wct10Wall
{
    TEXTURE         Wct10Tex;
    POSITION        1;
    FLAGS           PORTCULLIS;
}
Wall Wct10aWall
{
    TEXTURE         Wct10Tex;
    POSITION        0;
    FLAGS           PORTCULLIS;
}
Wall StepSpcWall
{
    TEXTURE         StepSpcTex;
    POSITION        1;
    FLAGS           PORTCULLIS;
}
Wall StepSpcInvWall
{
    TEXTURE         StepSpcInvTex;
    POSITION        1;
    FLAGS           PORTCULLIS;
}

Wall Sign02Wall
{
    TEXTURE         Sign02Tex;
    POSITION        0;
    FLAGS           PORTCULLIS;
}
Wall Sign02aWall
{
    TEXTURE         Sign02aTex;
    POSITION        0;
    FLAGS           PORTCULLIS;
}
Wall Sign02bWall
{
    TEXTURE         Sign02bTex;
    POSITION        0;
    FLAGS           PORTCULLIS;
}
Wall Sign02cWall
{
    TEXTURE         Sign02cTex;
    POSITION        0;
    FLAGS           PORTCULLIS;
}
Wall BackGndWall
{
    TEXTURE Cce01Tex;
    
}

Wall Wmt01Wall
{
    TEXTURE CatracaTex;
    // FLAGS   IMPASSABLE;
    
}
Wall Wmt13Wall
{
    TEXTURE Wmt13Tex;
    
}
Wall Wvg01Wall
{
    TEXTURE Fvg01Tex;
    
}

Wall GapWall
{
    TEXTURE GapTex;
//  FLAGS   IMPASSABLE,PASSABLE;
}

/////////////////////////////////////////////////////////////////
// Train
/////////////////////////////////////////////////////////////////
Wall FossoWall
{
    TEXTURE   FossoTex;
//    FLAGS   IMPASSABLE,PASSABLE;

}

Wall TrainFrontWall
{
    TEXTURE   TrainFrontTex;
    OFFSET_Y    15;
}

Wall TrainSideWall
{
    TEXTURE   TrainSideTex ;
    OFFSET_Y    82;
}
Wall TrainSideDblWall
{
    TEXTURE   TrainSideDblTex ;
    OFFSET_Y    68;
}

/////////////////////////////////////////////////////////////////
// Ticket Desks
/////////////////////////////////////////////////////////////////
Wall TiketSideWall
{
    TEXTURE   TiketSideTex ;
    IF_HIT  DrillHole;
}
Wall TiketFrontWall
{
    TEXTURE   TiketFrontTex ;
    IF_HIT  DrillHole;
}
/////////////////////////////////////////////////////////////////
// Catracas
/////////////////////////////////////////////////////////////////
Wall CatracaWall
{
    TEXTURE   CatracaTex;
    FLAGS       IMMATERIAL;//IMPASSABLE,
}
Wall CatracaGoWall
{
    TEXTURE   Wmt01aTex;
    FLAGS       IMMATERIAL;//IMPASSABLE,
}
Wall CatracaStopWall
{
    TEXTURE   Wmt01bTex;
    FLAGS       IMMATERIAL;//IMPASSABLE,
}
WALL FreePassWall
{
    TEXTURE  NullTex;
    FLAGS    PASSABLE,INVISIBLE,IMMATERIAL;
    IF_NEAR  FreePass;
}
WALL UnlockPassWall
{
    TEXTURE  NullTex;
    FLAGS    PASSABLE,INVISIBLE,IMMATERIAL;
    IF_NEAR  UnlockPass;
}
WALL LockPassWall
{
    TEXTURE  NullTex;
    FLAGS    PASSABLE,INVISIBLE,IMMATERIAL;
    IF_NEAR  LockPass;
}
Wall TrapWallWall
{
    TEXTURE Wct01Tex;
    IF_HIT  DrillHole;
    IF_NEAR  SetMadMib;
}

/////////////////////////////////////////////////////////////////
// Actions
/////////////////////////////////////////////////////////////////
ACTION SetMadMib
{
    	IF_EQUAL KEY1,1;
		END;
	SET_ALL TrapWallWall.IF_NEAR,NULL;
	SET_ALL MibkBerkeleyAct.FLAG2,1;
	SET_ALL MibkAct.FLAG2,1;
	SET MESSAGE_TEXT, Wrn05Str;
   	BRANCH DisplayMessage;
}
ACTION PlayPassSound
{
   IF_BELOW passFlag, 0; GOTO noWay;
   IF_EQUAL passFlag, 0; GOTO noPass;
   SET MESSAGE_TEXT, BlankStr;
   CALL DisplayMessage;
   PLAY_SOUND Catr01Snd, 0.6, MY;
   GOTO cont;
noPass:
   SET MESSAGE_TEXT, Wrn05Str;
   CALL DisplayMessage;
   PLAY_SOUND Catr02Snd, 0.6, MY;
   GOTO cont;
noWay:
   SET MESSAGE_TEXT, Wrn06Str;
   CALL DisplayMessage;
   PLAY_SOUND Catr02Snd, 0.6, MY;
cont:
   SET MY.DIST, 4;
   SET MY.IF_FAR, ResetPassSound;
}
ACTION ResetPassSound {
  SET MY.IF_FAR, NULL;
  SET MY.DIST, 0;
}
ACTION FreePass
{   
    SET_ALL FenceWall.PASSABLE, 1;
    SET passFlag, 1;
}
ACTION LockPass
{   
    SET_ALL FenceWall.PASSABLE, 0;
    SET passFlag, -1;
}
ACTION UnlockPass
{   
    SET passFlag, 0;
    IF_NEQUAL KEY1,1;
	END;
    SET_ALL FenceWall.PASSABLE,1;
    SET passFlag, 1;
}
