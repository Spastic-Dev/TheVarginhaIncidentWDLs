/////////////////////////////////////////////////////////////////
// Drakalis Actor
// Copyright © 1997 Perceptum Informática Ltda
// All Rights Reserved
/////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////
// Bitmaps
/////////////////////////////////////////////////////////////////
BMAP Drkl0001, <drkl0g.pcx>,   37,  56,  47,  59;
BMAP Drkl0002, <drkl0g.pcx>,  137,  58,  79,  57;
BMAP Drkl0003, <drkl0g.pcx>,  278,  58,  46,  60;
BMAP Drkl0101, <drkl0g.pcx>,   40, 165,  43,  70;
BMAP Drkl0102, <drkl0g.pcx>,  142, 165,  75,  69;
BMAP Drkl0103, <drkl0g.pcx>,  279, 165,  41,  72;
BMAP Drkl0201, <drkl0g.pcx>,   42, 275,  39,  79;
BMAP Drkl0202, <drkl0g.pcx>,  151, 274,  66,  83;
BMAP Drkl0203, <drkl0g.pcx>,  280, 274,  39,  87;
BMAP Drkl0301, <drkl0g.pcx>,   42, 387,  38,  87;
BMAP Drkl0302, <drkl0g.pcx>,  156, 387,  59,  88;
BMAP Drkl0303, <drkl0g.pcx>,  282, 387,  38,  90;
BMAP Drkl0401, <drkl0g.pcx>,   42, 512,  36,  83;
BMAP Drkl0402, <drkl0g.pcx>,  157, 512,  58,  83;
BMAP Drkl0403, <drkl0g.pcx>,  282, 512,  38,  86;

BMAP Drkl1001, <drkl1g.pcx>,   35,  46,  55,  62;
BMAP Drkl1002, <drkl1g.pcx>,  137,  46,  71,  63;
BMAP Drkl1003, <drkl1g.pcx>,  253,  45,  88,  67;
BMAP Drkl1004, <drkl1g.pcx>,  377,  45,  79,  68;
BMAP Drkl1005, <drkl1g.pcx>,  514,  44,  49,  72;
BMAP Drkl1101, <drkl1g.pcx>,   35, 167,  51,  62;
BMAP Drkl1102, <drkl1g.pcx>,  128, 167,  95,  62;
BMAP Drkl1103, <drkl1g.pcx>,  242, 167, 118,  59;
BMAP Drkl1104, <drkl1g.pcx>,  375, 168,  95,  63;
BMAP Drkl1105, <drkl1g.pcx>,  517, 168,  46,  66;
BMAP Drkl1201, <drkl1g.pcx>,   32, 289,  52,  65;
BMAP Drkl1202, <drkl1g.pcx>,  138, 289,  74,  65;
BMAP Drkl1203, <drkl1g.pcx>,  246, 289,  98,  62;
BMAP Drkl1204, <drkl1g.pcx>,  383, 290,  75,  65;
BMAP Drkl1205, <drkl1g.pcx>,  519, 290,  46,  66;
BMAP Drkl1301, <drkl1g.pcx>,   34, 411,  49,  63;
BMAP Drkl1302, <drkl1g.pcx>,  142, 411,  64,  64;
BMAP Drkl1303, <drkl1g.pcx>,  255, 412,  77,  63;
BMAP Drkl1304, <drkl1g.pcx>,  392, 413,  56,  63;
BMAP Drkl1305, <drkl1g.pcx>,  518, 413,  47,  63;

BMAP Drkl2001, <drkl2g.pcx>,   35,  46,  55,  62;
BMAP Drkl2101, <drkl2g.pcx>,   22, 148,  62,  74;
BMAP Drkl2201, <drkl2g.pcx>,   27, 257,  55,  79;
BMAP Drkl2301, <drkl2g.pcx>,   27, 374,  55,  81;
BMAP Drkl2401, <drkl2g.pcx>,   23, 494,  64,  88;

BMAP Drkl3001, <drkl3g.pcx>,   62,  27,  89, 145;
BMAP Drkl3101, <drkl3g.pcx>,   66, 211,  89, 148;
BMAP Drkl3201, <drkl3g.pcx>,   62, 397,  69, 142;
BMAP Drkl3301, <drkl3g.pcx>,   62, 584,  69, 135;
BMAP Drkl3401, <drkl3g.pcx>,   51, 756,  68, 143;

BMAP Drkl8001, <drkl8g.pcx>,   28,  22,  55,  90;
BMAP Drkl8101, <drkl8g.pcx>,  143,  20,  66,  85;
BMAP Drkl8201, <drkl8g.pcx>,  256,  34,  83,  57;
BMAP Drkl8301, <drkl8g.pcx>,   16, 165,  87,  45;
BMAP Drkl8401, <drkl8g.pcx>,  136, 174,  89,  41;
BMAP Drkl8501, <drkl8g.pcx>,  255, 184,  90,  40;
BMAP Drkl8601, <drkl8g.pcx>,   11, 314,  93,  45;

/////////////////////////////////////////////////////////////////
// Sounds
/////////////////////////////////////////////////////////////////
SOUND Drkl01Snd, <drkl01.wav>;          // hard breathing
SOUND Drkl02Snd, <drkl02.wav>;          // "groawwnn"
SOUND Drkl03Snd, <drkl03.wav>;          // screaming
SOUND Drkl04Snd, <drkl04.wav>;          // scratching
SOUND Drkl05Snd, <drkl05.wav>;          // "groawwnn" again
SOUND Drkl06Snd, <drkl06.wav>;          // dying
SOUND Drkl07Snd, <drkl07.wav>;          // "cain"

/////////////////////////////////////////////////////////////////
// Animated Textures
/////////////////////////////////////////////////////////////////
TEXTURE Drkl0Tex {
	SCALE_XY  	20,20;
	SIDES     	4;
	CYCLES    	3;
	BMAPS   	Drkl0201, Drkl0301, Drkl0401,
              	Drkl0202, Drkl0302, Drkl0402,
              	Drkl0203, Drkl0303, Drkl0403,
              	Drkl0202, Drkl0302, Drkl0402;
	DELAY   	6, 8, 6;
	MIRROR  	0,0,0,1;
	SOUND		Drkl01Snd;
	SVOL		0.2;
	SCYCLES	0,1,0;
	RANDOM	0.8;
	FLAGS 	CLIP;
}
TEXTURE Drkl0aTex {
	SCALE_XY  	20,20;
	SIDES     	4;
	CYCLES    	3;
	BMAPS   	Drkl0201, Drkl0301, Drkl0401,
              	Drkl0202, Drkl0302, Drkl0402,
              	Drkl0203, Drkl0303, Drkl0403,
              	Drkl0202, Drkl0302, Drkl0402;
	DELAY   	4, 4, 4;
	MIRROR  	0,0,0,1;
	SOUND		Drkl01Snd;
	SVOL		0.2;
	SCYCLES	0,1,0;
	RANDOM	0.8;
	FLAGS 	CLIP;
	RADIANCE	0.7;
}
TEXTURE Drkl0UpTex {
	SCALE_XY  	20,20;
	SIDES     	4;
	CYCLES    	2;
	BMAPS   	Drkl0001, Drkl0101,
              	Drkl0002, Drkl0102,
              	Drkl0003, Drkl0103,
              	Drkl0002, Drkl0102;
	DELAY   	6, 5;
	MIRROR  	0,0,0,1;
	FLAGS 	CLIP;
}
TEXTURE Drkl0DnTex {
	SCALE_XY  	20,20;
	SIDES     	4;
	CYCLES    	2;
	BMAPS   	Drkl0101, Drkl0001,
              	Drkl0102, Drkl0002,
              	Drkl0103, Drkl0003,
              	Drkl0102, Drkl0002;
	DELAY   	6, 5;
	MIRROR  	0,0,0,1;
	FLAGS 	CLIP;
}
TEXTURE Drkl1Tex {
	SCALE_XY  	20,20;
	SIDES     	8;
	CYCLES    	4;
	BMAPS   	Drkl1001, Drkl1101, Drkl1201, Drkl1301,
              	Drkl1002, Drkl1102, Drkl1202, Drkl1302,
              	Drkl1003, Drkl1103, Drkl1203, Drkl1303,
              	Drkl1004, Drkl1104, Drkl1204, Drkl1304,
              	Drkl1005, Drkl1105, Drkl1205, Drkl1305,
              	Drkl1204, Drkl1304, Drkl1004, Drkl1104,
              	Drkl1203, Drkl1303, Drkl1003, Drkl1103,
              	Drkl1202, Drkl1302, Drkl1002, Drkl1102;
	DELAY   	4,4,4,4;
	MIRROR  	0,0,0,0,0,1,1,1;
	SOUND		Drkl01Snd;
	SVOL		0.2;
	SCYCLES	0,1,0,0;
	FLAGS 	CLIP;
}
TEXTURE Drkl2Tex {
	SCALE_XY  	22,22;
	SIDES     	1;
	CYCLES    	5;
	BMAPS   	Drkl2001, Drkl2101, Drkl2201, Drkl2301,
              	Drkl2401;
	DELAY   	4,4,4,4,4;
	SOUND		Drkl03Snd;
	SVOL		0.5;
	SCYCLES	0,1,0,0,0;
	FLAGS 	CLIP;
}
TEXTURE Drkl2aTex {
	SCALE_XY  	22,22;
	SIDES     	1;
	CYCLES    	5;
	BMAPS   	Drkl2001, Drkl2101, Drkl2201, Drkl2301,
              	Drkl2401;
	DELAY   	4,4,4,4,4;
	MIRROR	1;
	SOUND		Drkl03Snd;
	SVOL		0.5;
	SCYCLES	0,1,0,0,0;
	FLAGS 	CLIP;
}
TEXTURE Drkl3Tex {
	SCALE_XY  	35,35;
	SIDES     	1;
	CYCLES    	5;
	BMAPS   	Drkl3001, Drkl3101, Drkl3201, Drkl3301,
              	Drkl3401;
	DELAY   	4,4,4,4,4;
	SOUND		Drkl04Snd;
	SVOL		0.5;
	SCYCLES	0,1,0,0,0;
	FLAGS 	CLIP;
}
TEXTURE Drkl5Tex {
	SCALE_XY  	20,20;
	CYCLES     	3;
	BMAPS   	Drkl0201, Drkl8001, Drkl0201;
	DELAY		2,2,2;
	SOUND		Drkl07Snd;
	SVOL		0.5;
	FLAGS 	CLIP;
}
TEXTURE Drkl8Tex {
	SCALE_XY  	20,20;
	SIDES     	1;
	CYCLES    	6;
	BMAPS   	Drkl8001, Drkl8101, Drkl8201, Drkl8301,
              	Drkl8401, Drkl8501;
	DELAY   	4,4,4,4,4,4;
	SOUND		Drkl06Snd;
	SVOL		0.5;
	SCYCLES	0,1,0,0,0,0;
	FLAGS 	CLIP;
}
TEXTURE Drkl9Tex {
	SCALE_XY  	20,20;
	SIDES     	1;
	BMAPS   	Drkl8601;
	FLAGS 	CLIP;
}

/////////////////////////////////////////////////////////////////
// Actions
/////////////////////////////////////////////////////////////////

ACTION DrklTurn {
   RULE waitTime = 64 * RANDOM + 16;
   IF_BELOW RANDOM, 0.07; 
      BRANCH DrklListen;
   IF_ABOVE RANDOM, 0.95;
      RULE rightTurnDrkl = (rightTurnDrkl-1)*(rightTurnDrkl-1);
   IF_MAX rightTurnDrkl;
      BRANCH TurnRight;
   BRANCH TurnLeft;
}

ACTION DrklWait {
	  IF_NEQUAL MY.SKILL4, 4;
		GOTO cont;
	  IF_NEQUAL MY.VISIBLE, 1;
		GOTO cont;
	  END;
cont:
        SET MY.EACH_TICK,       NULL;
        SET MY.IF_NEAR,         DrklJump;
        SET MY.IF_FAR,          DrklFollowAttack;
        SET MY.EACH_CYCLE,      CycleDrklAttack;
	  SET MY.IF_HIT,		  DrklHit;
	  SET MY.GROUND,		  0;
	  SET MY.HEIGHT,		  -0.05;

	  SET MY.SKILL4, 0;				// skill4 = state
        SET MY.TEXTURE, Drkl0Tex;
        SET MY.SPEED, 0;
        SET MY.TARGET, NULL;
}
ACTION DrklWander {
        SET MY.EACH_TICK,       NULL;
        SET MY.IF_NEAR,         DrklJump;
        SET MY.IF_FAR,          DrklFollowAttack;
        SET MY.EACH_CYCLE,      CycleDrklAttack;
	  SET MY.IF_HIT,		  DrklHit;
	  SET MY.GROUND, 0;

	  SET MY.SKILL4, 1;				// skill4 = state
        SET MY.TEXTURE, Drkl1Tex;
        SET MY.SPEED, 1;
        SET MY.TARGET, BULLET;
	  BRANCH LocateActor;
}
ACTION DrklSearch {
	SET MY.EACH_TICK,       NULL;
	SET MY.IF_NEAR,         NULL;
	SET MY.IF_FAR,          NULL;
	SET MY.IF_HIT,		DrklHit;
	SET MY.GROUND, 0;
	CALL LocateActor;
	CALL LookPlayer;
	IF_EQUAL MY.FLAG1, 0;
		BRANCH DrklWait;
	BRANCH DrklFollowAttack;
}
ACTION DrklHide {
	  SET MY.CAREFULLY,	  1;
        SET MY.EACH_TICK,       NULL;
        SET MY.IF_NEAR,         DrklEscape;
        SET MY.IF_FAR,          NULL;
	  SET MY.EACH_CYCLE,	  CycleDrklHide;
        SET MY.IF_HIT,		  DrklHit;
	  SET MY.GROUND, 0;

	  CALL LocateActor;
	  IF_EQUAL	MY.SKILL4, 4;
		GOTO hidding;
	  SET MY.SKILL4, 4;				// skill4 = state
        RULE MY.ANGLE = PLAYER_ANGLE + (RANDOM-0.5) * 2.4;
        SET MY.TEXTURE, Drkl1Tex;
	  SET MY.DIST, 	20;
        SET MY.SPEED, 0.6;
        SET MY.TARGET, BULLET;
	  WAITT 384;
	  IF_ABOVE MY.SKILL1, 5;
		END;
	  ADD MY.SKILL1, -2;
	  BRANCH DrklWander; 
hidding:
        RULE MY.ANGLE = PLAYER_ANGLE + (RANDOM-0.5) * 2.4;
        SET MY.TEXTURE, Drkl1Tex;
	  SET MY.DIST, 	20;
        SET MY.SPEED, 0.6;
        SET MY.TARGET, BULLET;
}

ACTION DrklListen {
	  IF_NEQUAL MY.SKILL4, 4;
		GOTO cont;
	  IF_NEQUAL MY.VISIBLE, 1;
		GOTO cont;
	  END;
cont:
	  IF_ABOVE MY.DISTANCE, 100;
		GOTO cont1;
	  IF_EQUAL MY.FLAG2, 0;
		GOTO cont1;
	  END;
cont1:
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          NULL;
        SET MY.EACH_CYCLE,      CycleDrklAttack;
	  SET MY.IF_HIT,		  DrklHit;
	  SET MY.GROUND, 0;

	  SET MY.SKILL4, 0;				// skill4 = state
        SET MY.TEXTURE, Drkl0Tex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, NULL;
	  WAITT 120;
	  IF_BELOW MY.SKILL1, 9;
	  	BRANCH DrklWander; 
}

ACTION DrklJump {
	  IF_EQUAL MY.FLAG2, 1;
		GOTO bloodsmell;
	  CALL LookPlayer;
        IF_EQUAL MY.FLAG1, 0;
                END;
bloodsmell:
        SET MY.IF_NEAR,		NULL;
        SET MY.IF_FAR,		DrklFollowAttack;
        SET MY.EACH_CYCLE,	CycleDrklShoot;
        SET MY.EACH_TICK,	ActorJump;

	  SET MY.SKILL4, 0;				// skill4 = state
        SET MY.TEXTURE, Drkl2Tex;
	  IF_BELOW RANDOM, 0.5;
	        SET MY.TEXTURE, Drkl2aTex;
        SET MY.SPEED, 1.5;
	  SET MY.VSPEED,0.5;
	  SET MY.GROUND,1;
        SET MY.TARGET, MOVE;
}

ACTION DrklLookFor {
	  IF_EQUAL MY.SKILL4, 10;
		END;
	  IF_EQUAL MY.SKILL4, 4;
		END;
	  IF_ABOVE MY.DISTANCE, 100;
		END;
	  IF_EQUAL MY.FLAG2, 1;
		BRANCH DrklFollowAttack;
	  IF_EQUAL MY.TARGET, FOLLOW;
		END;
	  IF_ABOVE MY.SKILL1, 5;
		END;
        SET MY.IF_NEAR,         DrklJump;
        SET MY.IF_FAR,          DrklFollowAttack;
        SET MY.EACH_CYCLE,      DrklHear;
	  SET MY.IF_HIT,		  DrklHit;
	  SET MY.GROUND, 0;

	  SET MY.SKILL4, 10;				// skill4 = state
        SET MY.TEXTURE, Drkl0UpTex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, BULLET;
}

ACTION DrklHear {
        SET MY.IF_NEAR,         DrklJump;
        SET MY.IF_FAR,          DrklFollowAttack;
        SET MY.EACH_CYCLE,      DrklDown;

	  SET MY.SKILL4, 10;				// skill4 = state
        SET MY.TEXTURE, Drkl0Tex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, FOLLOW;
	  SET MY.GROUND, 0;
}

ACTION DrklDown {
        SET MY.IF_NEAR,         DrklJump;
        SET MY.IF_FAR,          NULL;
        SET MY.EACH_CYCLE,      DrklSearch;
	  SET MY.GROUND, 0;

	  SET MY.SKILL4, 10;				// skill4 = state
        SET MY.TEXTURE, Drkl0DnTex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, BULLET;
}

ACTION DrklFollowAttack {
        SET MY.IF_NEAR,         DrklJump;
        SET MY.IF_FAR,          NULL;
        SET MY.EACH_CYCLE,      CycleDrklShoot;
	  SET MY.IF_HIT,		  DrklHit;
	  SET MY.GROUND, 0;

	  SET MY.SKILL4, 2;				// skill4 = state
        SET MY.TEXTURE, Drkl1Tex;
        SET MY.SPEED, 1.2;
        SET MY.TARGET, BULLET;
	  CALL LocateActor;
	  BRANCH FollowAngle;
}

ACTION DrklShoot {
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          DrklFollowAttack;
        SET MY.EACH_CYCLE,      CycleDrklShoot;
	  SET MY.IF_HIT,		  DrklHit;
	  SET MY.GROUND, 0;

	  SET MY.SKILL4, 3;				// skill4 = state
        SET MY.TEXTURE, Drkl3Tex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, FOLLOW;
}
ACTION DrklEscape {
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          DrklHide;
        SET MY.EACH_CYCLE,      CycleDrklHide;
	  SET MY.IF_HIT,		  DrklHit;
	  SET MY.GROUND, 0;

	  CALL LocateActor;
	  SET MY.SKILL4, 4;				// skill4 = state
        SET MY.TEXTURE, Drkl1Tex;
	  SET MY.DIST, 	30;
        SET MY.SPEED, 0.4;
	  SET MY.TARGET, BULLET;
	  CALL RepelAngle;
}
ACTION DrklDead {
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          NULL;
        SET MY.IF_HIT,          NULL;
        SET MY.EACH_CYCLE,      NULL;
	  SET MY.GROUND, 0;

	  SET MY.SKILL4, 9;				// skill4 = state
        SET MY.TEXTURE, Drkl9Tex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, NULL;
        SET MY.PASSABLE, 1;
        SET MY.CAREFULLY, 0;
}
ACTION DrklDie {
	  SET MY.SKILL1, 		  10;			// certify actor is dead
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          NULL;
        SET MY.IF_HIT,          NULL;
        SET MY.EACH_CYCLE,      DrklDead;

	  SET MY.SKILL4, 8;				// skill4 = state
        SET MY.TEXTURE, Drkl8Tex;
        SET MY.SPEED, 0.0;
	  SET MY.GROUND,  0;
	  SET MY.HEIGHT,  -0.05;
        SET MY.TARGET, NULL;
}
ACTION DrklImplode {
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

	  SET MY.SKILL4, 8;				// skill4 = state
        SET MY.TEXTURE, Drkl0aTex;
        SET MY.SPEED, 0.0;
        SET MY.TARGET, NULL;
}

ACTION DrklHit { 
	  IF_EQUAL SHOOT_FAC, 0;
		    GOTO obstacle;
        IF_NEQUAL HIT, MY;
		    GOTO explosion;
	  SET HIT, NULL;
        GOTO cont;
explosion:
	  IF_EQUAL EXPLOSION_ON, 0;
		    GOTO obstacle;
	  RULE distX = (MY.X - EXPLOSION_CENTER.X)*(MY.X - EXPLOSION_CENTER.X)+
			   (MY.Y - EXPLOSION_CENTER.Y)*(MY.Y - EXPLOSION_CENTER.Y);
  	  SQRT distX, distX;
	  IF_ABOVE distX, 25;
		GOTO obstacle;
hit:
	  IF_NEQUAL EXPLOSION_ON, 2;
		    GOTO cont;
	  IF_EQUAL MY.VISIBLE, 1;
		    BRANCH DrklImplode;
cont:
	  RULE MY.SKILL1 = MY.SKILL1 + SHOOT_FAC * (RANDOM+2)/3;
        IF_ABOVE MY.SKILL1, 5;
                GOTO die;
        IF_BELOW RANDOM, 0.05;
                GOTO die;
        SET DRKL_TEX, 	MY.TEXTURE;
        SET MY.TEXTURE,	Drkl5Tex;
        SET MY.IF_NEAR,	NULL;
        SET MY.IF_FAR,	NULL;
        SET MY.IF_HIT,	NULL;
        WAITT 6;
        SET MY.IF_HIT,	DrklHit;
        SET MY.TEXTURE, DRKL_TEX;
	  IF_ABOVE MY.SKILL1, 4;
        	BRANCH DrklHide;
	  IF_NEQUAL MY.SKILL4, 4;
		BRANCH DrklFollowAttack;
	  END;
die:
	  SET MY.SKILL1, 10;
        BRANCH DrklDie;
        END;
obstacle:
//	  CALL DrklTalk;
        BRANCH DrklTurn;
}

ACTION CycleDrklAttack {
	CALL Probe;
	SET MY.GROUND, 0;
	SET MY.HEIGHT, -0.05;
	SET MY.VSPEED, 0;
	SET MY.EACH_TICK, NULL;
	CALL DrklTalk;
	IF_EQUAL SHOT_SOUND_ON, 0;
		goto cont;
	CALL DrklLookFor;
cont:
	CALL LookPlayer;
	IF_EQUAL MY.FLAG1, 0;
		END;
	IF_EQUAL MY.FLAG2, 1;
		GOTO cont1;
	SET MY.FLAG2,	1;
	PLAY_SOUND Drkl02Snd, 0.7, MY;
cont1:
	BRANCH DrklFollowAttack;
}

ACTION CycleDrklHide {
	CALL Probe;
	SET MY.GROUND, 0;
	SET MY.HEIGHT, -0.05;
	SET MY.VSPEED, 0;
	SET MY.EACH_TICK, NULL;
	IF_EQUAL MY.VISIBLE, 0;
		GOTO stop;
	SET MY.SPEED, 0.6;
	SET MY.TARGET, BULLET;
	CALL RepelAngle;
	RULE MY.ANGLE = MY.ANGLE + 2*(RANDOM - .5);
	END;
stop:
	SET MY.SPEED, 0;
}

ACTION CycleDrklShoot {
	CALL Probe;
	IF_ABOVE MY.SKILL1, 9;
		BRANCH DrklDie;
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
	BRANCH DrklWait;
playerSeen:
	IF_BELOW MY.DISTANCE, 5;
		GOTO cont;
	RULE DrklDelta = (MY.SKILL7 - MY.X)*(MY.SKILL7 - MY.X) +
	  		     (MY.SKILL8 - MY.Y)*(MY.SKILL8 - MY.Y);
	SET MY.SKILL7, MY.X; SET MY.SKILL8, MY.Y;
	IF_BELOW DrklDelta, 0.25;
		BRANCH DrklJump;
cont:
	IF_ABOVE MY.DISTANCE, 10;
		GOTO attack;
	RULE  PLAYER_RESULT = DrklShootFactor*(1+RANDOM);
      CALL HitPlayerDelay;
	BRANCH  DrklShoot;
attack:
	BRANCH  DrklFollowAttack;
}

ACTION DrklTalk {
	IF_ABOVE RANDOM, 0.95;
		PLAY_SOUND Drkl05Snd, 0.5, MY;
	IF_BELOW RANDOM, 0.07;
		PLAY_SOUND Drkl02Snd, 0.5, MY;
}
/////////////////////////////////////////////////////////////////
// Actor
/////////////////////////////////////////////////////////////////

ACTOR DrklAct {
	TEXTURE	Drkl1Tex;
	HEIGHT	-0.05;
	SPEED		0.0;
	DIST		20;
	EACH_TICK	DrklWait;
	FLAGS       CAREFULLY,FRAGILE;
	IF_HIT	DrklHit;
}
