/////////////////////////////////////////////////////////////////
// Reptilian Actor
// Copyright © 1997 Perceptum Informática Ltda
// All Rights Reserved
/////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////
// Bitmaps
/////////////////////////////////////////////////////////////////
BMAP Rept1001, <Rept1g.pcx>,  12,   2,  23,  73;
BMAP Rept1002, <Rept1g.pcx>,  61,   2,  19,  75;
BMAP Rept1003, <Rept1g.pcx>, 107,   2,  21,  76;
BMAP Rept1004, <Rept1g.pcx>, 152,   2,  25,  75;
BMAP Rept1005, <Rept1g.pcx>, 199,   2,  25,  74;
BMAP Rept1101, <Rept1g.pcx>,  12,  84,  23,  75;
BMAP Rept1102, <Rept1g.pcx>,  52,  84,  37,  72;
BMAP Rept1103, <Rept1g.pcx>,  94,  84,  47,  73;
BMAP Rept1104, <Rept1g.pcx>, 148,  84,  33,  75;
BMAP Rept1105, <Rept1g.pcx>, 199,  84,  25,  74;
BMAP Rept1201, <Rept1g.pcx>,  11, 162,  25,  74;
BMAP Rept1202, <Rept1g.pcx>,  58, 162,  25,  72;
BMAP Rept1203, <Rept1g.pcx>, 107, 162,  21,  73;
BMAP Rept1204, <Rept1g.pcx>, 154, 162,  21,  73;
BMAP Rept1205, <Rept1g.pcx>, 200, 162,  23,  75;
BMAP Rept1301, <Rept1g.pcx>,  11, 244,  25,  74;
BMAP Rept1302, <Rept1g.pcx>,  50, 244,  41,  74;
BMAP Rept1303, <Rept1g.pcx>,  95, 244,  45,  70;
BMAP Rept1304, <Rept1g.pcx>, 144, 244,  41,  74;
BMAP Rept1305, <Rept1g.pcx>, 200, 244,  23,  75;

BMAP Rept0001, <Rept0g.pcx>,  13,   2,  21,  75;
BMAP Rept0002, <Rept0g.pcx>,  49,   2,  43,  76;
BMAP Rept0003, <Rept0g.pcx>, 107,   2,  21,  73;
BMAP Rept0101, <Rept0g.pcx>,  13,  82,  21,  75;
BMAP Rept0102, <Rept0g.pcx>,  49,  82,  43,  76;
BMAP Rept0103, <Rept0g.pcx>, 107,  82,  21,  73;
BMAP Rept0201, <Rept0g.pcx>,  13, 162,  21,  75;
BMAP Rept0202, <Rept0g.pcx>,  49, 162,  43,  76;
BMAP Rept0203, <Rept0g.pcx>, 107, 162,  21,  73;
BMAP Rept0301, <Rept0g.pcx>,  13, 242,  21,  75;
BMAP Rept0302, <Rept0g.pcx>,  49, 242,  43,  76;
BMAP Rept0303, <Rept0g.pcx>, 107, 242,  21,  73;

BMAP Rept8001, <Rept8g.pcx>,  50,   2,  23,  75;
BMAP Rept8101, <Rept8g.pcx>, 172,   5,  25,  74;
BMAP Rept8201, <Rept8g.pcx>,  48, 100,  27,  70;
BMAP Rept8301, <Rept8g.pcx>, 172, 101,  25,  72;
BMAP Rept8401, <Rept8g.pcx>,  45, 199,  33,  66;
BMAP Rept8501, <Rept8g.pcx>, 165, 210,  39,  56;
BMAP Rept8601, <Rept8g.pcx>,  41, 315,  41,  44;
BMAP Rept8701, <Rept8g.pcx>, 166, 324,  37,  39;

BMAP Rept9001, <Rept8g.pcx>,  44, 424,  35,  32;

BMAP ReptA001, <ReptAg.pcx>,  14,   1,  21,  62;
BMAP ReptA002, <ReptAg.pcx>,  49,   1,  47,  64;
BMAP ReptA003, <ReptAg.pcx>, 110,   1,  21,  65;
BMAP ReptA101, <ReptAg.pcx>,  14,  83,  21,  50;
BMAP ReptA102, <ReptAg.pcx>,  50,  83,  45,  49;
BMAP ReptA103, <ReptAg.pcx>, 111,  83,  19,  51;

/////////////////////////////////////////////////////////////////
// Sounds
/////////////////////////////////////////////////////////////////
SOUND   Rept01Snd, <rept01.wav>;
SOUND   Rept02Snd, <rept02.wav>;

/////////////////////////////////////////////////////////////////
// Animated Textures
/////////////////////////////////////////////////////////////////
TEXTURE Rept0Tex {
        SCALE_XY        24,24;
        SIDES           4;
        CYCLES          4;
        BMAPS   Rept0001, Rept0101, Rept0201, Rept0301,
                Rept0002, Rept0102, Rept0202, Rept0302,
                Rept0003, Rept0103, Rept0203, Rept0303,
                Rept0002, Rept0102, Rept0202, Rept0302;
        DELAY   10, 7, 15, 12;
        MIRROR  0,0,0,1;
	  SDIST   200;
}

TEXTURE Rept0aTex {
        SCALE_XY        24,24;
        SIDES           4;
        CYCLES          4;
        BMAPS   Rept0001, Rept0101, Rept0201, Rept0301,
                Rept0002, Rept0102, Rept0202, Rept0302,
                Rept0003, Rept0103, Rept0203, Rept0303,
                Rept0002, Rept0102, Rept0202, Rept0302;
        DELAY   10, 7, 15, 12;
        MIRROR  0,0,0,1;
	  SDIST   200;
}

TEXTURE Rept1Tex {
        SCALE_XY        24,24;
        SIDES           8;
        CYCLES          4;
        BMAPS   Rept1001, Rept1101, Rept1201, Rept1301,
                Rept1002, Rept1102, Rept1202, Rept1302,
                Rept1003, Rept1103, Rept1203, Rept1303,
                Rept1004, Rept1104, Rept1204, Rept1304,
                Rept1005, Rept1105, Rept1205, Rept1305,
                Rept1204, Rept1304, Rept1004, Rept1104,
                Rept1203, Rept1303, Rept1003, Rept1103,
                Rept1202, Rept1302, Rept1002, Rept1102;
        DELAY   4, 5, 4, 5;
        MIRROR  1,1,1,1,1,0,0,0;
//        FLAGS   SLOOP;
	  SDIST   200;
}

TEXTURE Rept5Tex {
        SCALE_XY        24,24;
        SIDES           1;
        CYCLES          2;
        BMAPS   Rept8001, Rept8101;
        DELAY   4, 4;
	  SDIST   200;
}

TEXTURE Rept8Tex {
        SCALE_XY        24,24;
        SIDES           1;
        CYCLES          8;
        BMAPS   Rept8001, Rept8101, Rept8201, Rept8301,
                Rept8401, Rept8501, Rept8601, Rept8701;
        DELAY   3, 2, 2, 2, 2, 2, 2, 2;
	  SDIST   200;
}

TEXTURE Rept9Tex {
        SCALE_XY        24,24;
        SIDES           1;
        CYCLES          1;
        BMAPS   Rept9001;
}

TEXTURE ReptADnTex {
        SCALE_XY        24,24;
        SIDES           4;
        CYCLES          2;
        BMAPS   ReptA001, ReptA101,
                ReptA002, ReptA102,
                ReptA003, ReptA103,
                ReptA002, ReptA102;
        DELAY   5, 5;
        MIRROR  0,0,0,1;
        FLAGS   ONESHOT;
	  SDIST   200;
}

TEXTURE ReptAUpTex {
        SCALE_XY        24,24;
        SIDES           4;
        CYCLES          2;
        BMAPS   ReptA101, ReptA001,
                ReptA102, ReptA002,
                ReptA103, ReptA003,
                ReptA102, ReptA002;
        DELAY   5, 5;
        MIRROR  0,0,0,1;
        FLAGS   ONESHOT;
	  SDIST   200;
}

/////////////////////////////////////////////////////////////////
// Actions
/////////////////////////////////////////////////////////////////

ACTION ReptTurn {
   RULE waitTime = 64 * RANDOM + 16;
   IF_BELOW RANDOM, 0.07; 
      BRANCH ReptListen;
   IF_ABOVE RANDOM, 0.95;
      RULE rightTurnRept = (rightTurnRept-1)*(rightTurnRept-1);
   IF_MAX rightTurnRept;
      BRANCH TurnRight;
   BRANCH TurnLeft;
}

ACTION ReptWait {
        SET MY.EACH_TICK,       NULL;
        SET MY.IF_NEAR,         ReptJump;
        SET MY.IF_FAR,          ReptFollowAttack;
        SET MY.EACH_CYCLE,      CycleReptAttack;
	  SET MY.IF_HIT,		  ReptHit;
	  SET MY.GROUND,		  0;
	  SET MY.HEIGHT,		  -0.05;

	  SET MY.SKILL4, 0;				// skill4 = state
        SET MY.TEXTURE, Rept0Tex;
        SET MY.SPEED, 0;
        SET MY.TARGET, NULL;
}
ACTION ReptWander {
        SET MY.EACH_TICK,       NULL;
        SET MY.IF_NEAR,         ReptJump;
        SET MY.IF_FAR,          ReptFollowAttack;
        SET MY.EACH_CYCLE,      CycleReptAttack;
	  SET MY.IF_HIT,		  ReptHit;

	  SET MY.SKILL4, 1;				// skill4 = state
        SET MY.TEXTURE, Rept1Tex;
        SET MY.SPEED, 0.3;
        SET MY.TARGET, BULLET;
}
ACTION ReptSearch {
	SET MY.EACH_TICK,       NULL;
	SET MY.IF_NEAR,         NULL;
	SET MY.IF_FAR,          NULL;
	SET MY.IF_HIT,		ReptHit;
	CALL LookPlayer;
	IF_EQUAL MY.FLAG1, 0;
		BRANCH ReptWait;
	BRANCH ReptFollowAttack;
}
ACTION ReptHide {
	  SET MY.CAREFULLY,	  1;
        SET MY.EACH_TICK,       NULL;
        SET MY.IF_NEAR,         ReptEscape;
        SET MY.IF_FAR,          NULL;
	  SET MY.EACH_CYCLE,	  NULL;
        SET MY.IF_HIT,		  ReptHit;

	  SET MY.SKILL4, 4;				// skill4 = state
	  CALL RepelAngle;
        RULE MY.ANGLE = MY.ANGLE + (RANDOM-0.5) * 2.4;
        SET MY.TEXTURE, Rept1Tex;
	  SET MY.DIST, 	20;
        SET MY.SPEED, 0.5;
        SET MY.TARGET, BULLET;
	  WAITT 384;
	  IF_ABOVE MY.SKILL1, 5;
		END;
	  ADD MY.SKILL1, -2;
	  BRANCH ReptWander; 
}

ACTION ReptListen {
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          NULL;
        SET MY.EACH_CYCLE,      CycleReptAttack;
	  SET MY.IF_HIT,		  ReptHit;

	  SET MY.SKILL4, 0;				// skill4 = state
        SET MY.TEXTURE, Rept0Tex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, NULL;
	  WAITT 120;
	  IF_BELOW MY.SKILL1, 9;
	  	BRANCH ReptWander; 
}

ACTION ReptJump {
	IF_EQUAL MY.FLAG2, 1;
		GOTO bloodsmell;
	CALL LookPlayer;
	IF_EQUAL MY.FLAG1, 0;
		END;
bloodsmell:
	BRANCH ReptTalk;
}

ACTION ReptLookFor {
	  IF_EQUAL MY.SKILL4, 0;
		END;
	  IF_EQUAL MY.SKILL4, 4;
		END;
	  IF_ABOVE MY.DISTANCE, 100;
		END;
	  IF_EQUAL MY.SKILL4, 10;
		END;
	  IF_EQUAL MY.TARGET, FOLLOW;
		END;
	  IF_ABOVE MY.SKILL1, 5;
		END;
        SET MY.IF_NEAR,         ReptJump;
        SET MY.IF_FAR,          ReptFollowAttack;
        SET MY.EACH_CYCLE,      ReptHear;
	  SET MY.IF_HIT,		  ReptHit;

	  SET MY.SKILL4, 0;				// skill4 = state
        SET MY.TEXTURE, ReptADnTex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, BULLET;
}

ACTION ReptHear {
        SET MY.IF_NEAR,         ReptJump;
        SET MY.IF_FAR,          ReptFollowAttack;
        SET MY.EACH_CYCLE,      ReptDown;

	  SET MY.SKILL4, 0;				// skill4 = state
        SET MY.TEXTURE, Rept0Tex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, FOLLOW;
}

ACTION ReptDown {
        SET MY.IF_NEAR,         ReptJump;
        SET MY.IF_FAR,          NULL;
        SET MY.EACH_CYCLE,      ReptSearch;

	  SET MY.SKILL4, 0;				// skill4 = state
        SET MY.TEXTURE, ReptAUpTex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, BULLET;
}

ACTION ReptFollowAttack {
        SET MY.IF_NEAR,         ReptJump;
        SET MY.IF_FAR,          NULL;
        SET MY.EACH_CYCLE,      CycleReptShoot;
	  SET MY.IF_HIT,		  ReptHit;

	  SET MY.SKILL4, 2;				// skill4 = state
        SET MY.TEXTURE, Rept1Tex;
        SET MY.SPEED, 0.4;
        SET MY.TARGET, FOLLOW;
}

ACTION ReptShoot {
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          ReptFollowAttack;
        SET MY.EACH_CYCLE,      ReptHide;
	  SET MY.IF_HIT,		  ReptHit;

	  SET MY.SKILL4, 3;				// skill4 = state
        SET MY.TEXTURE, Rept0Tex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, FOLLOW;
}
ACTION ReptEscape {
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          ReptHide;
        SET MY.EACH_CYCLE,      CycleReptHide;
	  SET MY.IF_HIT,		  ReptHit;

	  SET MY.SKILL4, 4;				// skill4 = state
        SET MY.TEXTURE, Rept1Tex;
	  SET MY.DIST, 	30;
        SET MY.SPEED, 0.4;
        SET MY.TARGET, REPEL;
}
ACTION ReptDead {
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          NULL;
        SET MY.IF_HIT,          NULL;
        SET MY.EACH_CYCLE,      NULL;

	  SET MY.SKILL4, 9;				// skill4 = state
        SET MY.TEXTURE, Rept9Tex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, NULL;
        SET MY.PASSABLE, 1;
        SET MY.CAREFULLY, 0;
}
ACTION ReptDie {
	  SET MY.SKILL1, 		  10;			// certify actor is dead
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          NULL;
        SET MY.IF_HIT,          NULL;
        SET MY.EACH_CYCLE,      ReptDead;

	  SET MY.SKILL4, 8;				// skill4 = state
        SET MY.TEXTURE, Rept8Tex;
        SET MY.SPEED, 0.0;
	  SET MY.GROUND,  0;
	  SET MY.HEIGHT,  -0.05;
        SET MY.TARGET, NULL;
}
ACTION ReptImplode {
	  RULE distX = (MY.X - EXPLOSION_CENTER.X)*(MY.X - EXPLOSION_CENTER.X)+
			   (MY.Y - EXPLOSION_CENTER.Y)*(MY.Y - EXPLOSION_CENTER.Y);
	  SQRT distX, distX;
	  RULE distZ = MY.HEIGHT - EXPLOSION_CENTER.HEIGHT;
	  IF_ABOVE distX, 10;
		BRANCH BeamReact;
        SET MY.PASSABLE, 1;
        SET MY.CAREFULLY, 0;
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          NULL;
        SET MY.IF_HIT,          NULL;
        SET MY.EACH_CYCLE,      VanishForGood;

	  SET MY.SKILL4, 9;				// skill4 = state
        SET MY.TEXTURE, Rept0aTex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, NULL;
}

ACTION ReptHit { 
	  IF_EQUAL SHOOT_FAC, 0;
		    GOTO obstacle;
        IF_EQUAL HIT, MY;
                GOTO hit;
	  IF_EQUAL EXPLOSION_ON, 0;
		    GOTO obstacle;
hit:
	  IF_NEQUAL EXPLOSION_ON, 2;
		    GOTO cont;
	  IF_EQUAL MY.VISIBLE, 1;
		    BRANCH ReptImplode;
cont:
	  ADD MY.SKILL1, SHOOT_FAC;
        IF_ABOVE MY.SKILL1, 5;
                GOTO die;
        IF_BELOW RANDOM, 0.05;
                GOTO die;
        SET REPT_TEX, 	MY.TEXTURE;
        SET MY.TEXTURE,	Rept5Tex;
        SET MY.IF_NEAR,	NULL;
        SET MY.IF_FAR,	NULL;
        SET MY.IF_HIT,	NULL;
        WAITT 6;
        SET MY.IF_HIT,	ReptHit;
        SET MY.TEXTURE, REPT_TEX;
	  PLAY_SOUND Rept02Snd, 0.7, MY;
        BRANCH ReptHide;
die:
	  SET MY.SKILL1, 10;
        BRANCH ReptDie;
        END;
obstacle:
	  CALL ReptTalk;
        BRANCH ReptTurn;
}

ACTION CycleReptAttack {
	CALL LocateActor;
	SET MY.GROUND, 0;
	SET MY.HEIGHT, -0.05;
	SET MY.VSPEED, 0;
	SET MY.EACH_TICK, NULL;
	CALL ReptTalk;
	IF_EQUAL SHOT_SOUND_ON, 0;
		goto cont;
	CALL ReptLookFor;
cont:
	CALL LookPlayer;
	IF_EQUAL MY.FLAG1, 0;
		END;
	IF_EQUAL MY.FLAG2, 1;
		GOTO cont1;
	SET MY.FLAG2,	1;
	PLAY_SOUND Rept02Snd, 0.7, MY;
cont1:
	BRANCH ReptFollowAttack;
}
ACTION CycleReptHide {
	CALL LocateActor;
	SET MY.GROUND, 0;
	SET MY.HEIGHT, -0.05;
	SET MY.VSPEED, 0;
	SET MY.EACH_TICK, NULL;
        IF_EQUAL MY.VISIBLE, 0;
                GOTO stop;
        SET MY.SPEED, 0.6;
        SET MY.TARGET, BULLET;
        END;
stop:
        SET MY.SPEED, 0;
        SET MY.TARGET, NULL;
}

ACTION CycleReptShoot {
	CALL LocateActor;
	IF_ABOVE MY.SKILL1, 9;
		BRANCH ReptDie;
	SET MY.GROUND, 0;
	SET MY.HEIGHT, -0.05;
	SET MY.VSPEED, 0;
	SET MY.EACH_TICK, NULL;

	CALL LookPlayer;
	IF_EQUAL MY.FLAG1, 0;
		GOTO contFlag2;
	GOTO playerSeen;
contFlag2:
	IF_EQUAL MY.FLAG2, 1;
		GOTO attack;
	BRANCH ReptWait;
playerSeen:
	SET MY.FLAG2, 1;
cont:
	IF_ABOVE MY.DISTANCE, 10;
		GOTO attack;
	BRANCH  ReptShoot;
attack:
	BRANCH  ReptFollowAttack;
}

ACTION ReptTalk {
	IF_ABOVE RANDOM, 0.9;
		PLAY_SOUND Rept01Snd, 0.5, MY;
	IF_BELOW RANDOM, 0.1;
		PLAY_SOUND Rept02Snd, 0.5, MY;
}

/////////////////////////////////////////////////////////////////
// Actors
/////////////////////////////////////////////////////////////////

ACTOR Rept1Act {
        TEXTURE         Rept1Tex;
        HEIGHT          -0.25;
        SPEED           0.3;
        DIST            50;
        FLAGS           CAREFULLY, FRAGILE;
        EACH_TICK       ReptWander;
	  TARGET		Rept1Way;
}

ACTOR Rept0Act {
        TEXTURE         Rept1Tex;
        HEIGHT          -0.25;
        SPEED           0.0;
        DIST            50;
        FLAGS           CAREFULLY, FRAGILE;
        EACH_TICK       ReptWait;
}
