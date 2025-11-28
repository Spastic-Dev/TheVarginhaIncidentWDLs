/////////////////////////////////////////////////////////////////
// Bitmaps
/////////////////////////////////////////////////////////////////
BMAP Tre01Bmp, <Tree01.pcx>;
BMAP Tre03Bmp, <Tree03.pcx>;
BMAP Key2Bmp,  <memmod.pcx>;  
/////////////////////////////////////////////////////////////////
// MODELS
/////////////////////////////////////////////////////////////////
MODEL ChairMdl,   <chair.mdl>;
MODEL TableMdl,   <table.mdl>;
MODEL BigearMdl,  <bigear.mdl>;
BMAP 	Gas01Bmp,	<gas01.pcx>;
/////////////////////////////////////////////////////////////////
// Sounds
/////////////////////////////////////////////////////////////////
//SOUND Gol02Snd, <Gol02.wav>;// 
SOUND TicketSnd,<Key01.wav>;// Take ticket
/////////////////////////////////////////////////////////////////
// Textures
/////////////////////////////////////////////////////////////////

TEXTURE Gas01Tex 
{
        SCALE_XY		64,64;
        BMAPS		gas01Bmp;
        FLAGS		CLIP;
}
TEXTURE Tre01Tex {
        SCALE_XY        8,8;
        BMAPS           Tre01Bmp;
        AMBIENT         0.5;
}
TEXTURE Tre03Tex {
        SCALE_XY        16,16;
        BMAPS           Tre03Bmp;
        AMBIENT         0.5;
}
TEXTURE ChairTex {
        SCALE_XY        16,16;
        MODEL           ChairMdl;
}
TEXTURE TableTex {
        SCALE_XY        16,16;
        MODEL           TableMdl;
}
TEXTURE BigearTex {
        SCALE_XY        22,22;
        MODEL           BigearMdl;
}
TEXTURE Key2Tex {
        SCALE_XY        128,128;
        BMAPS           Key2Bmp;
        AMBIENT         0.5;
      FLAGS   CLIP;
}

/////////////////////////////////////////////////////////////////
// Actions
/////////////////////////////////////////////////////////////////
ACTION EndPhase {
	IF_EQUAL EACH_SEC.3, EndPhase;
		GOTO cont;
	SET MY.IF_NEAR, NULL;
	SET EACH_SEC.3, EndPhase;
cont:
	IF_ABOVE SHOT_SOUND_ON, 0;
		END;
	CALL ShowPDABriefing;
	SET EACH_SEC.3, NULL;
}

ACTION PickKey2 {
        SET MY.INVISIBLE, 1;
	  SET KEY1, 1;
	  SET MESSAGE_TEXT, Get16Str;
	  CALL DisplayMessage;
        PLAY_SOUND TicketSnd, .5;
        BRANCH EndPhase;
}

ACTION ExplodeGas {
	WAITT		4;
	BRANCH ExplodeMissile;
}

/////////////////////////////////////////////////////////////////
// Things
/////////////////////////////////////////////////////////////////
THING Tre01Tng {
    TEXTURE Tre01Tex;
    HEIGHT  -1;
    FLAGS       PASSABLE;
}
THING Tre02Tng {
    TEXTURE Tre03Tex;
    HEIGHT  -1;
    FLAGS       PASSABLE;
}
THING ChairTng {
    TEXTURE ChairTex;
    HEIGHT  18;
    FLAGS GROUND;
}
THING TableTng {
        TEXTURE TableTex;
        HEIGHT  18;
        FLAGS GROUND;
}
THING Chair3Tng {
    TEXTURE ChairTex;
    HEIGHT  0;
    FLAGS GROUND;
}
THING Table3Tng {
        TEXTURE TableTex;
        HEIGHT  0;
    FLAGS GROUND;
}
THING BigearTng {
        TEXTURE BigearTex;
        HEIGHT  2.2;
}
THING Key2Tng {				//in this phase, the memory module
        TEXTURE         Key2Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey2;
}

THING Gas01Tng {
        TEXTURE                 Gas01Tex;
        HEIGHT                  -0.05;
        IF_HIT                  ExplodeGas;
        FLAGS                   FRAGILE;
}