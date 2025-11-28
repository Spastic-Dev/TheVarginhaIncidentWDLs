BMAP Key1Bmp    ,<CardG.pcx>;
BMAP Key2Bmp    ,<CardB.pcx>;
BMAP Key3Bmp    ,<CardY.pcx>;
BMAP Key4Bmp    ,<CardR.pcx>;
BMAP HeliTngBmp ,<helitng.pcx>;
SOUND TicketSnd,<Key01.wav>;// Take ticket

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
TEXTURE Key3Tex {
        SCALE_XY        96,96;
        BMAPS           Key3Bmp;
        AMBIENT         0.5;
	  FLAGS   CLIP;
}
TEXTURE Key4Tex {
        	SCALE_XY        96,96;
        	BMAPS           Key4Bmp;
        	AMBIENT         0.5;
	  	FLAGS   CLIP;
}
TEXTURE HeliTngTex {
        SCALE_XY        10,10;
        BMAPS           HeliTngBmp;
	  FLAGS   CLIP;
	AMBIENT 0.2;
}

ACTION PickKey1 {
        SET MY.INVISIBLE, 1;
        PLAY_SOUND TicketSnd, .5;
	  SET KEY1, 1;
        SET     MESSAGE_TEXT, Get14Str;
        BRANCH  DisplayMessage;
}
ACTION PickKey2 {
	  SET MY.INVISIBLE, 1;
        PLAY_SOUND TicketSnd, .5;
	  SET KEY2, 1;
        SET     MESSAGE_TEXT, Get12Str;
        BRANCH  DisplayMessage;
}
ACTION PickKey3 {
        SET MY.INVISIBLE, 1;
        PLAY_SOUND TicketSnd, .5;
	  SET KEY3, 1;
	CALL yellowTrap;
        SET     MESSAGE_TEXT, Get15Str;
        BRANCH  DisplayMessage;
}
ACTION PickKey4 {
        SET MY.INVISIBLE, 1;
        PLAY_SOUND TicketSnd, .5;
	  SET KEY4, 1;
        SET     MESSAGE_TEXT, Get13Str;
        BRANCH  DisplayMessage;
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
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey2;
}
THING Key3Tng {
        TEXTURE         Key3Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey3;
}
THING Key4Tng {
        TEXTURE         Key4Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE,INVISIBLE;
        DIST            4;
        IF_NEAR         PickKey4;
}
THING HeliTng {
        TEXTURE         HeliTngTex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
}
THING DomusUDeckTng {
        TEXTURE         GeniusTex;
        FLAGS           INVISIBLE;
}
THING MedKit10Tng {
        TEXTURE MedKitTex;
	  IF_NEAR PickUpMedKit;
	  HEIGHT  10;
        DIST    4;
	  FLAGS   PASSABLE,GROUND;
}

THING Armo10Tng {
        TEXTURE ArmoTex;
	  IF_NEAR PickUpArmour;
	  HEIGHT  10;
        DIST    4;
	  FLAGS   PASSABLE,GROUND;
}

THING LightGenius {
	Texture 	NullTexture;
	FLAGS		INVISIBLE;
}