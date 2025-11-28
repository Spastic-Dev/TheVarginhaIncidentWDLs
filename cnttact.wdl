/////////////////////////////////////////////////////////////////
// Actors Level Actions
/////////////////////////////////////////////////////////////////
ACTION TropAssault {
        SET MY.EACH_TICK,       NULL;
        SET MY.IF_NEAR,         NULL;
        SET MY.IF_FAR,          NULL;
        SET MY.EACH_CYCLE,      CycleTropAttack;

        SET MY.TEXTURE, TropATex;
        SET MY.SPEED, 0.7;
}
ACTION WayGuard1 {
	CALL TropTalk;
	IF_NEQUAL MY.WAYPOINT, 15;
		END;
	SET MY.IF_ARRIVED, NULL;
	SET MY.TEXTURE, Trop1Tex;
	SET MY.TARGET, Guard1Way;
      SET MY.SPEED, 0.5;
}
ACTION WayGuard2 {
	CALL TropTalk;
	IF_NEQUAL MY.WAYPOINT, 11;
		END;
	SET MY.IF_ARRIVED, NULL;
	SET MY.TEXTURE, TropATex;
	SET MY.TARGET, Guard2Way;
      SET MY.SPEED, 0.5;
}
ACTION WayGuard3 {
	CALL TropTalk;
	IF_NEQUAL MY.WAYPOINT, 8;
		END;
	SET_ALL TropAssault3Act.IF_ARRIVED, VanishStop;
	SET_ALL TropAssault3Act.TEXTURE, TropATex;
	SET_ALL TropAssault3Act.CAREFULLY, 0;
	SET_ALL TropAssault3Act.EACH_CYCLE,  LocateActor;
	SET_ALL TropAssault3Act.TARGET,  Rept1Way;
      SET_ALL TropAssault3Act.SPEED, 0.7;
}
ACTION DropTroops2 {
	IF_EQUAL  dropped, 1;
		END;
	IF_NEQUAL MY.WAYPOINT, 13;
		END;
	SET dropped, 1;
	SET MY.SPEED, 0;
	WAITT 4;
	SET_ALL TropAssault2Act.INVISIBLE, 0;
	SET_ALL TropAssault2Act.TARGET, Assault2Way;
	SET_ALL TropAssault2Act.DIST, 40;
	WAITT	160;
	SET MY.SPEED, 2;
}
ACTION DropTroops3 {
	IF_NEQUAL MY.WAYPOINT, 1;
		END;
	SET MY.SPEED, 0;
	SET MY.TEXTURE, Humm1aTex;
	SET MY.IF_ARRIVED, NULL;
	WAITT 4;
	SET_ALL TropAssault3Act.INVISIBLE, 0;
	SET_ALL TropAssault3Act.TARGET, Assault3Way;
	SET_ALL TropAssault3Act.DIST, 40;
	SET MY.TARGET, NULL;
}
ACTION ReptFlee {
	SET MY.EACH_TICK, NULL;
	IF_ABOVE  MY.SKILL4, 7;
		END;
	SET MY.TEXTURE, 	Rept1Tex;
	SET MY.SPEED, 	0.9;
	SET MY.TARGET, 	EscapeWay;
	SET MY.CAREFULLY, 0;
	SET MY.IF_NEAR, 	NULL;
	SET MY.IF_FAR, 	NULL;
	SET MY.EACH_CYCLE,LocateRept;
	SET MY.IF_HIT, 	NULL;
	SET MY.IF_ARRIVED, NULL;
	PLAY_SOUND Rept02Snd, 0.5, MY;
}
ACTION LocateRept {
	CALL LocateActor;
	IF_BELOW MY.WAYPOINT, 11;
		END;
	SET golCounter, 0;
	SET EACH_SEC.4, WallTimer;
	BRANCH VanishStop;
}
ACTION WallTimer{
	ADD golCounter, 1;
	IF_BELOW golCounter, 7;
		END;
	SET_ALL Wbr01ReptWall.IMPASSABLE, 0;
	SET EACH_SEC.4, NULL;
}

/////////////////////////////////////////////////////////////////
// Level Actors
/////////////////////////////////////////////////////////////////

ACTOR TropAssault1Act {
      TEXTURE 	TropATex;
	DIST		40;
      HEIGHT 	-0.05;
      SPEED 	0.6;
	ASPEED	0.2;
	FLAGS		CAREFULLY,FRAGILE,INVISIBLE,FLAG2;
	IF_HIT	TropHit;
	IF_ARRIVED	WayGuard1;
	IF_NEAR	TropFollowAttack;
	EACH_TICK	TropAssault;
	TARGET	Assault1Way;
}
ACTOR TropAssault2Act {
      TEXTURE 	TropATex;
	DIST		40;
      HEIGHT 	-0.05;
      SPEED 	0.6;
	ASPEED	0.2;
	FLAGS		CAREFULLY,FRAGILE,INVISIBLE,FLAG2;
	IF_HIT	TropHit;
	IF_ARRIVED	WayGuard2;
	IF_NEAR	TropFollowAttack;
	EACH_TICK	TropAssault;
}
ACTOR TropAssault3Act {
      TEXTURE 	TropATex;
      HEIGHT 	-0.05;
      SPEED 	0.6;
	ASPEED	0.2;
	FLAGS		CAREFULLY,FRAGILE,INVISIBLE,FLAG2;
	IF_HIT	TropHit;
	IF_ARRIVED	WayGuard3;
	IF_NEAR	TropFollowAttack;
	EACH_TICK	TropAssault;
}
ACTOR Humm1Act {
  	TEXTURE   	Humm1Tex;
    	HEIGHT    	-0.05;
	SPEED		2;
	ASPEED	0.2;
	TARGET	Humm1Way;
	FLAGS		CAREFULLY,INVISIBLE,FRAGILE;
	IF_ARRIVED  DropTroops2;
	IF_HIT	HummerHit;
}
ACTOR Humm2Act {
  	TEXTURE   	Humm1Tex;
    	HEIGHT    	-0.05;
	SPEED		2;
	ASPEED	0.2;
	TARGET	Humm2Way;
	FLAGS		CAREFULLY,INVISIBLE,FRAGILE;
	IF_ARRIVED  DropTroops3;
	IF_HIT	HummerHit;
}
