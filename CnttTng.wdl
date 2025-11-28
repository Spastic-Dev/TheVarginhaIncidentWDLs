/////////////////////////////////////////////////////////////////
// General Things
/////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////
// Bitmaps
/////////////////////////////////////////////////////////////////
BMAP Shu01Bmp, <shu01.pcx>;
BMAP ShuShdBmp,<shu01shd.pcx>;
BMAP Tre01Bmp, <Tree01.pcx>;
BMAP Tre03Bmp, <Tree03.pcx>;
BMAP Key1Bmp,  <ticket.pcx>;
BMAP Key2Bmp,  <key01.pcx>;

/////////////////////////////////////////////////////////////////
// MODELS
/////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////
// Sounds
/////////////////////////////////////////////////////////////////
SOUND TicketSnd,	<card01.wav>;	// Take ticket
SOUND KeySnd,	<key01.wav>;	// Take key

/////////////////////////////////////////////////////////////////
// Textures
/////////////////////////////////////////////////////////////////
TEXTURE ShuShdTex {
        SCALE_XY        12,12;
        BMAPS           ShuShdBmp;
	  FLAGS		BEHIND,SHADOW,DIAPHANOUS;
}
TEXTURE Shu01Tex {
        SCALE_XY        12,12;
        BMAPS           Shu01Bmp;
        AMBIENT         0.5;
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
TEXTURE Key1Tex {
        SCALE_XY        96,96;
        BMAPS           Key1Bmp;
        AMBIENT         0.5;
	  FLAGS   CLIP;
}
TEXTURE Key2Tex {
        SCALE_XY        96,96;
        BMAPS           Key2Bmp;
        AMBIENT         0.5;
	  FLAGS   CLIP;
}
/////////////////////////////////////////////////////////////////
// Actions
/////////////////////////////////////////////////////////////////
ACTION PickKey1 {
        SET MY.INVISIBLE, 1;
        PLAY_SOUND TicketSnd, .5;
	  SET KEY1, 1;
        SET     MESSAGE_TEXT, Get03Str;
        BRANCH  DisplayMessage;
}
ACTION PickKey2 {
        SET MY.INVISIBLE, 1;
        PLAY_SOUND KeySnd, .5;
	  SET KEY2, 1;
        SET     MESSAGE_TEXT, Get04Str;
        BRANCH  DisplayMessage;
}
ACTION PickUpLocalMp5 {
	CALL PickUpMp5;
	SAVE_INFO	"FLAG", 1;
	SAVE_INFO   "INFO", 1;
	WAITT	32;
	EXIT " ";
}

/////////////////////////////////////////////////////////////////
// Things
/////////////////////////////////////////////////////////////////

THING Shu01Tng {
	TEXTURE 	Shu01Tex;
	HEIGHT 	1;
	ATTACH	ShuShdTex;
}
THING Tre01Tng {
	TEXTURE	Tre01Tex;
	HEIGHT	-1;
	FLAGS		PASSABLE;
}
THING Tre03Tng {
	TEXTURE	Tre03Tex;
	HEIGHT	-1;
	FLAGS		PASSABLE;
}
THING Key1Tng {
        TEXTURE         Key1Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey1;
}
THING Key2Tng {
        TEXTURE         Key2Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE,INVISIBLE;
        DIST            4;
        IF_NEAR         PickKey2;
}
THING Mp5LocalTng {
	TEXTURE 	Mp5Tex;
	IF_NEAR 	PickUpLocalMp5;
	HEIGHT	12;
	FLAGS		GROUND,PASSABLE;
	DIST		2;
}
THING EscapeTng {
	TEXTURE	NullTex;
	FLAGS		INVISIBLE;
}
