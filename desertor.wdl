/////////////////////////////////////////////////////////////////
// Deserter Actor
// Copyright © 1997 Perceptum Informática Ltda
// All Rights Reserved
/////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////
// Bitmaps
/////////////////////////////////////////////////////////////////

BMAP Dsrt0001, <Dsrt0g.pcx>,  40,  13,  41,  99;
BMAP Dsrt0101, <Dsrt0g.pcx>, 163,  13,  35,  99;
BMAP Dsrt0201, <Dsrt0g.pcx>, 281,  13,  39,  99;
BMAP Dsrt0301, <Dsrt0g.pcx>,  43, 133,  35,  99;
BMAP Dsrt0401, <Dsrt0g.pcx>, 143, 133,  75,  99;
BMAP Dsrt0501, <Dsrt0g.pcx>, 281, 122,  39, 110;
BMAP Dsrt0601, <Dsrt0g.pcx>,  24, 250,  73, 102;
BMAP Dsrt0701, <Dsrt0g.pcx>, 137, 254,  87,  98;
BMAP Dsrt0801, <Dsrt0g.pcx>, 266, 254,  69,  98;

/////////////////////////////////////////////////////////////////
// Sounds
/////////////////////////////////////////////////////////////////
SOUND Dsrt01Snd, <Dsrt01.wav>;	// "Hey! Obrigado man!"
SOUND Dsrt02Snd, <Trop06.wav>;	// "Help me over here!"

/////////////////////////////////////////////////////////////////
// Animated Textures
/////////////////////////////////////////////////////////////////
TEXTURE Dsrt0Tex {
        SCALE_XY        22,22;
        SIDES           1;
        CYCLES          4;
        BMAPS   Dsrt0001, Dsrt0101, Dsrt0201, Dsrt0301;
        DELAY   8, 8, 8, 8;
	  RANDOM  0.7;
	  FLAGS   CLIP;
}
TEXTURE Dsrt0aTex {
        SCALE_XY        22,22;
        SIDES           1;
        CYCLES          5;
        BMAPS   Dsrt0401, Dsrt0501, Dsrt0601, Dsrt0701, Dsrt0801;
        DELAY   4, 4, 4, 4, 4;
	  SDIST   100;
	  SVDIST  25;
	  SCYCLES 0, 1, 0, 0, 0;
	  FLAGS   CLIP;
}
/////////////////////////////////////////////////////////////////
// Actions
/////////////////////////////////////////////////////////////////

ACTION DsrtWait {
        SET MY.EACH_TICK,       NULL;
        SET MY.IF_NEAR,         DsrtNear;
        SET MY.IF_FAR,          NULL;
	  SET MY.EACH_CYCLE,	  CycleDsrt;
	  SET MY.IF_HIT,		  DsrtHit;
	  SET MY.CAREFULLY,	  0;
	  SET MY.GROUND,		  0;

	  SET MY.SKILL4, 1;				// skill4 = state
        SET MY.TEXTURE, Dsrt0Tex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, NULL;
}
ACTION DsrtCall {
        SET MY.EACH_TICK,       NULL;
        SET MY.IF_NEAR,         DsrtNear;
        SET MY.IF_FAR,          NULL;
	  SET MY.EACH_CYCLE,	  DsrtWait;
	  SET MY.IF_HIT,		  DsrtHit;
	  SET MY.CAREFULLY,	  0;
	  SET MY.GROUND,		  0;

	  SET MY.SKILL4, 1;				// skill4 = state
        SET MY.TEXTURE, Dsrt0aTex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, NULL;
	  IF_ABOVE RANDOM, 0.52;
	  	PLAY_SOUND   Dsrt02Snd, 0.7, MY;

}
ACTION DsrtNear {
        SET MY.EACH_TICK,       NULL;
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          NULL;
	  SET MY.EACH_CYCLE,	  NULL;
	  SET MY.IF_HIT,		  DsrtHit;
	  SET MY.CAREFULLY,	  0;
	  SET MY.GROUND,		  0;

        SET MY.TEXTURE, Dsrt0Tex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, NULL;
	  PLAY_SOUND Dsrt01Snd, 0.5, MY;
}
ACTION DsrtHit { 
	  IF_EQUAL SHOOT_FAC, 0;
		    END;
        IF_EQUAL HIT, MY;
                GOTO hit;
	  IF_EQUAL EXPLOSION_ON, 0;
		    END;
	  RULE distX = (MY.X - EXPLOSION_CENTER.X)*(MY.X - EXPLOSION_CENTER.X)+
			   (MY.Y - EXPLOSION_CENTER.Y)*(MY.Y - EXPLOSION_CENTER.Y);
  	  SQRT distX, distX;
	  IF_ABOVE distX, 20;
		END;
hit:
	  IF_NEQUAL EXPLOSION_ON, 2;
		    GOTO cont;
	  IF_NEQUAL MY.VISIBLE, 1;
		    END;
cont:
	SET MY.IF_HIT, NULL;
	SET GAMEOVER_TEXT, End02Str;
	CALL ShowPDAGameOver;
}

ACTION CycleDsrt {
	IF_ABOVE RANDOM, 0.7;
		END;
	IF_BELOW RANDOM, 0.2;
		END;
	BRANCH DsrtCall;
}
/////////////////////////////////////////////////////////////////
// Actor
/////////////////////////////////////////////////////////////////

ACTOR DsrtAct {
      TEXTURE 	Dsrt0Tex;
      HEIGHT 	-0.05;
	DIST		5;
      SPEED 	0.3;
	FLAGS		FRAGILE, BERKELEY;
	IF_HIT	DsrtHit;
	EACH_TICK	DsrtWait;
}
