BMAP Key1Bmp    ,<Cardg.pcx>;
BMAP Key2Bmp    ,<Cardb.pcx>;
BMAP Key3Bmp    ,<Cardy.pcx>;
BMAP Key4Bmp    ,<Cardr.pcx>;
BMAP Pole02Bmp  ,<Pole02.pcx>;
BMAP Shu02Bmp   ,<shu02.pcx>;
BMAP Lamp01Bmp   ,<Lamp01.pcx>;
/////////////////////////////////////////////////////////////////
// MODELS
/////////////////////////////////////////////////////////////////
MODEL ChairMdl,   <chair.mdl>;
MODEL TableMdl,   <table.mdl>;
MODEL ReptMdl,  <rept.mdl>;
MODEL LampMdl,  <lamp00.mdl>;


TEXTURE Pole02Tex {
        SCALE_XY        24,32;
        BMAPS           Pole02Bmp;
        FLAGS     BEHIND,SHADOW,CLIP;
        AMBIENT         0.5;
}

TEXTURE ReptTex {
        SCALE_XY        12,8;
        MODEL           ReptMdl;
}
TEXTURE LampTex {
        SCALE_XY        8,8;
        MODEL           LampMdl;
	FLAGS CLIP;
}
TEXTURE Lamp01Tex {
        SCALE_XY        64,64;
	BMAPS	Lamp01Bmp;

}

TEXTURE ChairTex {
        SCALE_XY        16,16;
        MODEL           ChairMdl;
}
TEXTURE TableTex {
        SCALE_XY        16,16;
        MODEL           TableMdl;
}

TEXTURE Shu02Tex
{
        SCALE_XY        8,8;
        BMAPS           Shu02Bmp;
}

TEXTURE Key1Tex 
{
        SCALE_XY        96,96;
        BMAPS           Key1Bmp;
        AMBIENT         0.5;
      FLAGS   CLIP;
}
TEXTURE Key2Tex 
{
        SCALE_XY        96,96;
        BMAPS           Key2Bmp;
        AMBIENT         0.5;
      FLAGS   CLIP;
}
TEXTURE Key3Tex 
{
        SCALE_XY        96,96;
        BMAPS           Key3Bmp;
        AMBIENT         0.5;
      FLAGS   CLIP;
}
TEXTURE Key4Tex 
{
        SCALE_XY        96,96;
        BMAPS           Key4Bmp;
        AMBIENT         0.5;
      FLAGS   CLIP;
}
TEXTURE AlarmTex
{
	SCALE_XY	64,64;
	BMAPS		Lamp01Bmp;
	SOUND		Alarm03Snd;
	SDIST		200;
	SVOL		0.5;
	FLAGS		SLOOP;
}
ACTION PickKey1 
{
    SET MY.INVISIBLE, 1;
    PLAY_SOUND TicketSnd, .5;
    SET KEY1, 1;
    SET     MESSAGE_TEXT, Get14Str;
    BRANCH  DisplayMessage;
}

ACTION PickKey2 
{
	//SET_ALL TropBioAnelAct.INVISIBLE,0;
	//SET_ALL LnchBioAnelAct.INVISIBLE,0;
	//SET_ALL MibkBioAnelAct.INVISIBLE,0;
	//SET_ALL MibkBioAct.INVISIBLE,0;
	//SET_ALL TropBioAct.INVISIBLE,0;
	//SET_ALL DrklSdAct.INVISIBLE,0;
    SET MY.INVISIBLE, 1;
    PLAY_SOUND TicketSnd, .5;
    SET KEY2, 1;
    SET     MESSAGE_TEXT, Get12Str;
    BRANCH  DisplayMessage;
}
ACTION PickKey3 
{
    SET MY.INVISIBLE, 1;
    PLAY_SOUND TicketSnd, .5;
    SET KEY3, 1;
	//CALL setGrayLevel;
    SET     MESSAGE_TEXT, Get15Str;
    BRANCH  DisplayMessage;
}
ACTION PickKey4 
{
    SET MY.INVISIBLE, 1;
    PLAY_SOUND TicketSnd, .5;
    SET KEY4, 1;
    SET     MESSAGE_TEXT, Get13Str;
    BRANCH  DisplayMessage;
}


THING Key1Tng 
{
        TEXTURE         Key1Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey1;
}
THING Key2Tng 
{
        TEXTURE         Key2Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey2;
}
THING Key3Tng 
{
        TEXTURE         Key3Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey3;
}
THING Key4Tng 
{
        TEXTURE         Key4Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey4;
}
THING ChairTng {
    TEXTURE ChairTex;
    //HEIGHT  18;
    //FLAGS GROUND;
}
THING TableTng {
        TEXTURE TableTex;
        //HEIGHT  18;
        //FLAGS GROUND;
}
Thing ReptTng {
    TEXTURE     ReptTex;
    FLAGS       PASSABLE;
}
Thing LampTng {
    TEXTURE     LampTex;
    HEIGHT  -4;
    FLAGS       PASSABLE,CANDELABER;
}
Thing Lamp01Tng {
    TEXTURE     Lamp01Tex;
    FLAGS       PASSABLE,CANDELABER;
}

Thing Shu02Tng {
    TEXTURE     Shu02Tex;
}
Thing Pole02Tng {
    TEXTURE     Pole02Tex;
    HEIGHT  0.2;
    FLAGS       PASSABLE,CANDELABER;
}
THING DomusGeniusTng {
        TEXTURE         GeniusTex;
        FLAGS           INVISIBLE;
}
THING DomusGenius2Tng {
        TEXTURE         GeniusTex;
        FLAGS           INVISIBLE;
}
THING DomusGenius3Tng {
        TEXTURE         GeniusTex;
        FLAGS           INVISIBLE;
}

THING ShutleGeniusTng {
        TEXTURE         GeniusTex;
        FLAGS           INVISIBLE;
}
THING TowerTng 
{
        TEXTURE         TowerTex;
        HEIGHT          0;
        FLAGS           PASSABLE;
        
}
Thing AlarmLampTng {
    TEXTURE     AlarmTex;
    FLAGS       PASSABLE,CANDELABER,SAVE;
}
