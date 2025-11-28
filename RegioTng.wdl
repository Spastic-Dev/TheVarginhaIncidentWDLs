/////////////////////////////////////////////////////////////////
// General Things
/////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////
// Bitmaps
/////////////////////////////////////////////////////////////////
BMAP Shu01Bmp, <shu01.pcx>;
BMAP ShuShdBmp,<shu01shd.pcx>;
BMAP Tre01Bmp, <Tree01.pcx>;
BMAP Tre02Bmp, <tree02.pcx>;
BMAP Tre03Bmp, <Tree03.pcx>;
BMAP Vege01Bmp,<vege01.pcx>;
BMAP Pole02Bmp,<Pole02.pcx>;
BMAP Pole03Bmp,<Pole03.pcx>;
BMAP Key01Bmp ,<key01.pcx>;
BMAP Key02Bmp ,<key02.pcx>;

/////////////////////////////////////////////////////////////////
// MODELS
/////////////////////////////////////////////////////////////////
MODEL ChairMdl,   <chair.mdl>;
MODEL TableMdl,   <table.mdl>;
MODEL BigearMdl,  <bigear.mdl>;
MODEL BigeardtMdl,<bigeardt.mdl>;
MODEL GolMdl,	<gol.mdl>;
MODEL Gol01Mdl,	<gol01.mdl>;
MODEL Gol02Mdl,	<gol02.mdl>;
MODEL ReptMdl,	<rept.mdl>;
MODEL LampMdl,	<lamp00.mdl>;
MODEL WreckMdl,	<wreck.mdl>;

/////////////////////////////////////////////////////////////////
// Sounds
/////////////////////////////////////////////////////////////////
SOUND Key01Snd, <key01.wav>;// Get key
SOUND Gol01Snd, <Gol01.wav>;// 
SOUND Gol02Snd, <Gol02.wav>;// 
SOUND Bigear01Snd, <Bigear01.wav>;// 
SOUND Bigear02Snd, <Bigear02.wav>;// 
/////////////////////////////////////////////////////////////////
// Textures
/////////////////////////////////////////////////////////////////

TEXTURE Key01Tex {
        SCALE_XY        96,96;
        BMAPS           Key01Bmp;
        AMBIENT         0.5;
}
TEXTURE Key02Tex {
        SCALE_XY        96,96;
        BMAPS           Key02Bmp;
        AMBIENT         0.5;
}

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
TEXTURE Tre02Tex {
        SCALE_XY        16,16;
        BMAPS           Tre02Bmp;
        AMBIENT         0.5;
}
TEXTURE Tre03Tex {
        SCALE_XY        16,16;
        BMAPS           Tre03Bmp;
        AMBIENT         0.5;
}
TEXTURE Vege01Tex {
        SCALE_XY        16,16;
        BMAPS           Vege01Bmp;
        AMBIENT         0.5;
}
TEXTURE ChairTex {
        SCALE_XY        14,14;
        MODEL           ChairMdl;
}
TEXTURE TableTex {
        SCALE_XY        14,14;
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
TEXTURE GolTex {
        SCALE_XY        8,8;
        MODEL           GolMdl;
	  SOUND		Gol02Snd;
	  SVOL		0.2;
	  SDIST		200;
	  FLAGS		SLOOP;
}
TEXTURE Gol01Tex {
        SCALE_XY        8,8;
        MODEL           Gol01Mdl;
}
TEXTURE Gol02Tex {
        SCALE_XY        8,8;
        MODEL           Gol02Mdl;
}
TEXTURE WreckTex {
        SCALE_XY        8,8;
        MODEL           WreckMdl;
}
TEXTURE ReptTex {
        SCALE_XY        12,8;
        MODEL           ReptMdl;
}
TEXTURE LampTex {
        SCALE_XY        8,8;
        MODEL           LampMdl;
}
TEXTURE Pole02Tex {
        SCALE_XY        24,32;
        BMAPS           Pole02Bmp;
	  FLAGS		BEHIND,SHADOW;
        AMBIENT         0.5;
}
TEXTURE Pole03Tex {
        SCALE_XY        32,32;
        BMAPS           Pole03Bmp;
        AMBIENT         0.5;
}
/////////////////////////////////////////////////////////////////
// Actions
/////////////////////////////////////////////////////////////////
ACTION ExplodeCar {
	  IF_EQUAL SHOOT_FAC, 0;
		END;
        IF_EQUAL HIT, MY;
                GOTO hit;
	  IF_EQUAL EXPLOSION_ON, 0;
		END;
	  RULE distX = (MY.X - EXPLOSION_CENTER.X)*(MY.X - EXPLOSION_CENTER.X)+
			   (MY.Y - EXPLOSION_CENTER.Y)*(MY.Y - EXPLOSION_CENTER.Y);
  	  SQRT distX, distX;
	  IF_ABOVE distX, 25;
		END;
hit:
	IF_BELOW SHOOT_FAC, 9;
		END;
	SET MY.TEXTURE, WreckTex;
	SET MY.IF_ARRIVED, NULL;
	SET MY.TARGET, BULLET;
	SET MY.IF_HIT, NULL;
	PLAY_SOUND Gol01Snd, 0.5, MY;
slowdown:
	ADDT golCounter, 1;
	RULE MY.SPEED  = MY.SPEED  * 0.95;
	LOCATE MY;
	IF_BELOW MY.HEIGHT, -0.05;
		SET MY.HEIGHT, -0.05;
	WAITT 1;
	IF_BELOW golCounter, 16;
		GOTO slowdown;
	SET MY.SPEED,  0;
	SET MY.HEIGHT, -0.05;
	SET MY.CAREFULLY, 0;
	SET MY.TARGET, NULL;
	SET golCounter, 0;
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
THING Tre02Tng {
	TEXTURE	Tre02Tex;
	HEIGHT	-1;
	FLAGS		PASSABLE;
}
THING Tre03Tng {
	TEXTURE	Tre03Tex;
	HEIGHT	-1;
	FLAGS		PASSABLE;
}
THING Vege01Tng {
	TEXTURE	Vege01Tex;
	HEIGHT	-0.05;
	FLAGS		PASSABLE;
}
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
THING GolTng {
	TEXTURE Gol01Tex;
	IF_HIT  ExplodeCar;
	FLAGS	  FRAGILE;
}
THING GolBlkTng {
	TEXTURE Gol02Tex;
	IF_HIT  ExplodeCar;
	FLAGS	  FRAGILE;
}
THING GolRedTng {
	TEXTURE Gol01Tex;
	IF_HIT  ExplodeCar;
	FLAGS	  FRAGILE;
}
ACTOR Gol00Tng {
	TEXTURE GolTex;
	SPEED	  2;
	ASPEED  0.2;
	TARGET  Gol00Way;
	IF_HIT  ExplodeCar;
	FLAGS	  FRAGILE;
}
ACTOR Gol01Tng {
	TEXTURE GolTex;
	SPEED	  2;
	ASPEED  0.2;
	TARGET  Gol01Way;
	IF_HIT  ExplodeCar;
	FLAGS	  FRAGILE;
}
ACTOR Gol02Tng {
	TEXTURE Gol02Tex;
	SPEED	  2;
	ASPEED  0.2;
	TARGET  Gol00Way;
	IF_HIT  ExplodeCar;
	FLAGS	  FRAGILE;
}
ACTOR Gol03Tng {
	TEXTURE Gol01Tex;
	SPEED	  2;
	ASPEED  0.2;
	TARGET  Gol01Way;
	IF_HIT  ExplodeCar;
	FLAGS	  FRAGILE;
}
Thing ReptTng {
	TEXTURE 	ReptTex;
	FLAGS		PASSABLE;
	DIST		4;
	IF_NEAR	EndPhase;
}
Thing LampTng {
	TEXTURE 	LampTex;
	HEIGHT	-4;
	FLAGS		PASSABLE,CANDELABER;
}
Thing Lamp01Tng {
	TEXTURE 	LampTex;
	HEIGHT	9.5;
	FLAGS		PASSABLE,GROUND;
}
Thing Pole02Tng {
	TEXTURE 	Pole02Tex;
	HEIGHT	0.2;
	FLAGS		PASSABLE,CANDELABER;
}
Thing Pole03Tng {
	TEXTURE 	Pole03Tex;
	HEIGHT	0.2;
}
THING EscapeTng {
	TEXTURE	NullTex;
	FLAGS		INVISIBLE;
}

ACTION PickKey1 {
        SET MY.INVISIBLE, 1;
        PLAY_SOUND Key01Snd, .5;
	  SET KEY1, 1;
	
        SET     MESSAGE_TEXT, Get04Str;
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

ACTION PickKey4 {
        SET MY.INVISIBLE, 1;
        PLAY_SOUND Key01Snd, .5;
	  SET KEY4, 1;
	
        SET     MESSAGE_TEXT, Get04Str;
        BRANCH  DisplayMessage;
}

THING Key1Tng {
        TEXTURE         Key02Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey1;
}
THING Key2Tng {
        TEXTURE         Key01Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey2;
}
THING Key3Tng {
        TEXTURE         Key02Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey3;
}
THING Key4Tng {
        TEXTURE         Key01Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey4;
}

