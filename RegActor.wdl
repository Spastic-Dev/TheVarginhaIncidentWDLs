ACTOR TropFloor1Act {
      TEXTURE 	Trop1Tex;
      HEIGHT 	2;
	DIST		20;
      SPEED 	0.0;
	FLAGS		CAREFULLY,FRAGILE,GROUND;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}
ACTOR TropFloor2Act {
      TEXTURE 	Trop1Tex;
      HEIGHT 	12;
	DIST		20;
      SPEED 	0.0;
	FLAGS		CAREFULLY,FRAGILE,GROUND;
	IF_HIT	TropHit;
	EACH_TICK	TropWait;
}
