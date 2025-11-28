/////////////////////////////////////////////////////////////////
// General Things
/////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////
// MODELS
/////////////////////////////////////////////////////////////////
MODEL ChairMdl,   <chair.mdl>;
MODEL TableMdl,   <table.mdl>;
MODEL BigearMdl,  <bigear.mdl>;
MODEL BigeardtMdl,<bigeardt.mdl>;
/////////////////////////////////////////////////////////////////
// Bitmaps
/////////////////////////////////////////////////////////////////
BMAP Pole01Bmp  ,<pole01.pcx>;
BMAP Stal01Bmp  ,<stal01.pcx>;
BMAP Stal02Bmp  ,<stal02.pcx>;
BMAP Scul01Bmp  ,<scul01.pcx>;
BMAP Scul02Bmp  ,<scul02.pcx>;
BMAP Key1Bmp    ,<ticket.pcx>;
BMAP Key2Bmp    ,<key01.pcx>;
BMAP Key3Bmp    ,<key02.pcx>;

/////////////////////////////////////////////////////////////////
// Sounds
/////////////////////////////////////////////////////////////////
SOUND Key01Snd,<Key01.wav>;// Take ticket
SOUND Stal02Snd,<stal02.wav>;// crowd
SOUND Stal03Snd,<stal03.wav>;// crowd
SOUND Bigear01Snd, <Bigear01.wav>;// 
SOUND Bigear02Snd, <Bigear02.wav>;// 

/////////////////////////////////////////////////////////////////
// Textures
/////////////////////////////////////////////////////////////////
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
	  SOUND		Bigear02Snd;
	  SDIST		10;
	  SVOL		0.4;
	  FLAGS		SLOOP;
}
TEXTURE BigeardtTex {
        SCALE_XY        22,22;
        MODEL           BigeardtMdl;
	  AMBIENT		-0.2;
}
TEXTURE PoleTex {
        SCALE_XY        16,16;
        BMAPS           Pole01Bmp;
        AMBIENT         0.5;
}

TEXTURE Stal01Tex {
        SCALE_XY        35,35;
        BMAPS           Stal01Bmp;
        SOUND     Stal03Snd;
        SVOL      0.2;
        SDIST     100;
        FLAGS     SLOOP;
        AMBIENT         0.5;
}

TEXTURE Stal02Tex {
        SCALE_XY        18,18;
        BMAPS           Stal02Bmp;
        SOUND     Stal02Snd;
        SVOL      0.2;
        SDIST     100;
        FLAGS     SLOOP;
        AMBIENT         0.5;
}

TEXTURE Scul01Tex {
        SCALE_XY        24,24;
        BMAPS           Scul01Bmp;
        AMBIENT         0.8;
}

TEXTURE Scul02Tex {
        SCALE_XY        32,32;
        BMAPS           Scul02Bmp;
        AMBIENT         0.5;
      FLAGS   CLIP;
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
TEXTURE Key3Tex {
        SCALE_XY        96,96;
        BMAPS           Key3Bmp;
        AMBIENT         0.5;
      FLAGS   CLIP;
}

/////////////////////////////////////////////////////////////////
// Actions
/////////////////////////////////////////////////////////////////
ACTION PickKey1 {
        SET MY.INVISIBLE, 1;
        PLAY_SOUND Key01Snd, .5;
      SET KEY1, 1;
        SET     MESSAGE_TEXT, Get03Str;
        BRANCH  DisplayMessage;
}
ACTION PickKey2 {
        SET MY.INVISIBLE, 1;
        PLAY_SOUND Key01Snd, .5;
      SET KEY2, 1;
        SET     MESSAGE_TEXT, Get04Str;
        BRANCH  DisplayMessage;
}
ACTION PickKey3 {
        SET MY.INVISIBLE, 1;
        PLAY_SOUND Key01Snd, .5;
      SET KEY3, 1;
        SET     MESSAGE_TEXT, Get04Str;
        BRANCH  DisplayMessage;
}

ACTION  SetStalSound
{
    SET MY_TEX, MY.TEXTURE;
    SET MY_TEX.SOUND,NULL ;
}
ACTION ExplodeBigear {
	  IF_EQUAL SHOOT_FAC, 0;
		END;
        IF_EQUAL HIT, MY;
                GOTO hit;
	  IF_EQUAL EXPLOSION_ON, 0;
		END;
	  RULE distX = (MY.X - EXPLOSION_CENTER.X)*(MY.X - EXPLOSION_CENTER.X)+
			   (MY.Y - EXPLOSION_CENTER.Y)*(MY.Y - EXPLOSION_CENTER.Y);
  	  SQRT distX, distX;
	  IF_ABOVE distX, 15;
		END;
hit:
	IF_BELOW SHOOT_FAC, 9;
		END;
	SET MESSAGE_TEXT, Wrn08Str;
	CALL DisplayMessage;
	SET MY.TEXTURE, BigeardtTex;
	SET MY.FRAGILE, 0;
	SET MY.TARGET, NULL;
	SET MY.IF_HIT, NULL;
	PLAY_SOUND Bigear01Snd, 0.5, MY;
}
/////////////////////////////////////////////////////////////////
// Things
/////////////////////////////////////////////////////////////////
THING ChairTng {
    TEXTURE ChairTex;
    HEIGHT  0;
}
THING TableTng {
        TEXTURE TableTex;
        HEIGHT  0;
}
THING BigearTng {
        TEXTURE BigearTex;
        HEIGHT  2.2;
	  IF_HIT  ExplodeBigear;
	  FLAGS   FRAGILE;
}
THING PoleTng {
        TEXTURE         PoleTex;
        HEIGHT          -0.05;
}

THING Stal01Tng {
        TEXTURE         Stal01Tex;
        HEIGHT          -0.05;
        IF_HIT SetStalSound;
        FLAGS FRAGILE;
}

THING Stal02Tng {
        TEXTURE         Stal02Tex;
        HEIGHT          -0.05;
        IF_HIT SetStalSound;
        FLAGS FRAGILE;
}

THING Scul01Tng {
        TEXTURE         Scul01Tex;
        HEIGHT          -0.05;
}

THING Scul02Tng {
        TEXTURE         Scul02Tex;
        HEIGHT          -0.05;
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
THING Key3Tng {
        TEXTURE         Key3Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE,INVISIBLE;
        DIST            4;
        IF_NEAR         PickKey3;
}
/*
THING Box01Tng {
        TEXTURE         Box01Tex;
        HEIGHT          -0.05;
}
*/

THING DomusGeniusTng {
        TEXTURE         NullTex;
        FLAGS           INVISIBLE;
}

