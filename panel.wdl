/////////////////////////////////////////////////////////////////
// Info Panel
// Copyright © 1997 Perceptum Informática Ltda
// All Rights Reserved
/////////////////////////////////////////////////////////////////
SAVEDIR "C:\\IV";
SKILL  underwater        { VAL 0; }      // 1 = Player underwater

/////////////////////////////////////////////////////////////////
// Global Skills
/////////////////////////////////////////////////////////////////
SKILL AMMO 			{VAL 0; MIN 0; MAX 999; TYPE GLOBAL;}    	// current ammo
SKILL AMMO_MP5		{VAL 0; MIN 0; MAX 999; TYPE GLOBAL;}	// MP5 ammo
SKILL AMMO_GRANADE	{VAL 0; MIN 0; MAX 999; TYPE GLOBAL;}	// granades
SKILL AMMO_STINGER	{VAL 0; MIN 0; MAX 999; TYPE GLOBAL;}	// stingers
SKILL AMMO_QUANTUM	{VAL 0; MIN 0; MAX 999; TYPE GLOBAL;}	// quantum explosor ammo

SKILL HAS_MP5		{VAL 0; TYPE GLOBAL;}		// player's got a MP5
SKILL HAS_GRANADE		{VAL 0; TYPE GLOBAL;}		// player's got granades
SKILL HAS_STINGER		{VAL 0; TYPE GLOBAL;}		// player's got a stinger launcher
SKILL HAS_QUANTUM		{VAL 0; TYPE GLOBAL;}		// player's got a quantum explosor
SKILL HAS_PDA		{VAL 0; TYPE GLOBAL;}		// player's got an alien PDA

SKILL	PLAYER_HEALTH	{MIN 0;
				 MAX 100;
				 VAL 100;
				 TYPE GLOBAL;}		// player's health
SKILL	PLAYER_ARMOUR	{MIN 0;
				 MAX 200;
				 VAL 0;
				 TYPE GLOBAL;}		// player's armour
SKILL	TOUGHNESS		{MIN 0.1;
				 MAX 1.0;
				 VAL 0.7;
				 TYPE GLOBAL;}		// level of dificulty

SKILL GUN_ON            {VAL 0;}    	// player's got a loaded gun!
SKILL SHOT_SOUND_ON     {VAL 0;}    	// someone just fired a gun
SKILL	PLAYER_HIT		{VAL 0;}		// player's been hit
SKILL PLAYER_RESULT	{VAL 0;}		// player hit result
SKILL	GOD_MODE		{VAL 0;}		// god mode
SKILL KEY1 			{VAL 2;}		// key one
SKILL KEY2 			{VAL 2;}		// key two
SKILL KEY3 			{VAL 2;}		// key three
SKILL KEY4 			{VAL 2;}		// key four
SKILL	deathCounter	{VAL 0; TYPE LOCAL;}
SKILL waitTime{}
SKILL WeaponSel		{VAL 1;}    	// 1 = none, 2 = MP, 3 = Granade,
							// 4 = Stinger, 5 = Quantum Explosor
SKILL missileCounter	{VAL 0;}		// counter for aiming missiles
SYNONYM MY_TARGET 	 {TYPE ACTOR;}	// general target

SKILL   EXPLOSION_ON	 {VAL 0;}	   	// 1 = explosion, 2 = quantum implosion
SYNONYM EXPLOSION_CENTER {TYPE THING;} 	// last explosion center
SYNONYM IMPL_REGION 	 {TYPE REGION;}
SYNONYM IMPL_REGION1 	 {TYPE REGION;}
SYNONYM IMPL_REGION2 	 {TYPE REGION;}
SYNONYM IMPL_REGION3 	 {TYPE REGION;}
SYNONYM IMPL_REGION4 	 {TYPE REGION;}

SYNONYM UP_REGION		 {TYPE REGION;}	// upper region for visual line test
SYNONYM WATER_REGION	 {TYPE REGION;}	// water region for sinking actors;

SYNONYM GRANADE  {TYPE ACTOR;}
SYNONYM MISSILE  {TYPE ACTOR;}
SYNONYM PARTICLE {TYPE ACTOR;}
SYNONYM BLOOD    {TYPE ACTOR;}

SYNONYM LAYER12  {TYPE OVERLAY;}
SYNONYM LAYER13  {TYPE OVERLAY;}
SYNONYM LAYER16  {TYPE OVERLAY;}
SYNONYM IFESC    {TYPE ACTION;}
SYNONYM FIRE_GUN {TYPE ACTION;}
SYNONYM SEL_NONE {TYPE ACTION;}
SYNONYM SEL_TRIC {TYPE ACTION;}
SYNONYM SEL_MP5  {TYPE ACTION;}
SYNONYM SEL_BURST{TYPE ACTION;}
SYNONYM SEL_GRAN {TYPE ACTION;}
SYNONYM SEL_STNG {TYPE ACTION;}
SYNONYM SEL_QGUN {TYPE ACTION;}
SKILL	  mapMode  {VAL 0;}

SKILL   svAngle		{VAL -0.050;}
SKILL	  dShootXplus	{VAL  0.025;}	// Shooting tolerance X plus
SKILL	  dShootXminus	{VAL -0.025;}	// Shooting tolerance X minus
SKILL	  dShootYplus	{VAL  0.050;}	// Shooting tolerance X plus
SKILL	  dShootYminus	{VAL -0.150;}	// Shooting tolerance X minus

SKILL	  distX		{VAL 0;}		// general X distance
SKILL   distY		{VAL 0;}		// general Y distance
SKILL   distZ		{VAL 0;}		// general Z distance
SKILL   dAngle		{VAL 0;}		// general angle

SKILL	  debugValue	{VAL 0;}		// debug variable
SKILL   Innocents		{VAL 0; TYPE LOCAL;}	// Innocents killed
SKILL   gunFiring		{VAL 0;}		// gun is being fired

SKILL	  menuItem		{VAL 1;}		// menu item
SKILL	  subMenuItem	{VAL 1;}		// sub menu item
SKILL	  maxMenuItem	{VAL 1;}		// max menu item

IFDEF ENGLISH;
	STRING  SavedGame01, "Slot 1 - Empty";
	STRING  SavedGame02, "Slot 2 - Empty";
	STRING  SavedGame03, "Slot 3 - Empty";
	STRING  SavedGame04, "Slot 4 - Empty";

	STRING  TempSavedGame01, "Slot 1 - Empty";
	STRING  TempSavedGame02, "Slot 2 - Empty";
	STRING  TempSavedGame03, "Slot 3 - Empty";
	STRING  TempSavedGame04, "Slot 4 - Empty";
IFELSE;
	STRING  SavedGame01, "Posi[]o 1 - Vago";
	STRING  SavedGame02, "Posi[]o 2 - Vago";
	STRING  SavedGame03, "Posi[]o 3 - Vago";
	STRING  SavedGame04, "Posi[]o 4 - Vago";

	STRING  TempSavedGame01, "Posi[]o 1 - Vago";
	STRING  TempSavedGame02, "Posi[]o 2 - Vago";
	STRING  TempSavedGame03, "Posi[]o 3 - Vago";
	STRING  TempSavedGame04, "Posi[]o 4 - Vago";
ENDIF;

SKILL	  PlayerShootFactor {VAL 1;}		// player shoot factor
SKILL	  PlayerBurstFactor {VAL 3;}		// player burst factor
SKILL	  MibkShootFactor   {VAL 2;}		// men in black shoot factor
SKILL	  TropShootFactor   {VAL 4;}		// troopers shoot factor
SKILL	  DrklShootFactor   {VAL 1;}		// drakalis "shoot" factor

SKILL	  CDTrack		   {}			// CD track
SKILL	  CDTrackTime	   {}			// CD track time (seconds)
SKILL   SecCounter 	   {}			// second counter
SKILL   SOUND_VOL_BUFFER   {MIN 0.01; MAX 1; VAL 0.7; TYPE GLOBAL;}
SKILL   CDAUDIO_VOL_BUFFER {MIN 0.01; MAX 1; VAL 0.7; TYPE GLOBAL;}

/////////////////////////////////////////////////////////////////
// Door Synonyms and Skills
/////////////////////////////////////////////////////////////////
SYNONYM DOOR_TO_MOVE { TYPE REGION;}
SYNONYM doorPosition { TYPE WALL;}
SYNONYM doorToMove   {TYPE REGION;}
SYNONYM liftToMove   {TYPE REGION;}
SYNONYM doorLock     { TYPE WALL;}
SKILL   doorAngle{}
SKILL   doorSpeed{}
SKILL   doorCounter{}
SKILL	  movingDoor {VAL 0;}
/////////////////////////////////////////////////////////////////
// Actor Synonyms and Skills
/////////////////////////////////////////////////////////////////
SYNONYM Dsrt_TEX {TYPE TEXTURE;}
SKILL   randomDsrt {TYPE LOCAL;}
SKILL   rightTurnDsrt {VAL 0; MIN 0; MAX 1; TYPE LOCAL;}
SYNONYM REPT_TEX {TYPE TEXTURE;}
SKILL   rightTurnRept {VAL 0; MIN 0; MAX 1;}
SYNONYM DRKL_TEX {TYPE TEXTURE;}
SKILL   rightTurnDrkl {VAL 0; MIN 0; MAX 1;}
SKILL	  DrklDelta {TYPE LOCAL;}
SYNONYM GRAY_TEX {TYPE TEXTURE;}
SKILL   rightTurnGray {VAL 0; MIN 0; MAX 1;}
SKILL   slowCounter {VAL 0;}
SYNONYM LNCH_TEX {TYPE TEXTURE;}
SKILL   rightTurnLnch {VAL 0; MIN 0; MAX 1; TYPE LOCAL;}
SYNONYM MIBK_TEX {TYPE TEXTURE;}
SKILL   rightTurnMibk {VAL 0; MIN 0; MAX 1; TYPE LOCAL;}
SYNONYM NURSE_TEX {TYPE TEXTURE;}
SKILL   rightTurnNurs {VAL 0; MIN 0; MAX 1; TYPE LOCAL;}
SKILL	  talkNurs {TYPE LOCAL;}
SYNONYM DoctE_TEX {TYPE TEXTURE;}
SKILL   rightTurnDoct {VAL 0; MIN 0; MAX 1; TYPE LOCAL;}
SKILL	  talkDoct {TYPE LOCAL;}
SYNONYM DEPT_TEX {TYPE TEXTURE;}
SYNONYM GIRL_TEX {TYPE TEXTURE;}
SYNONYM OBOY_TEX {TYPE TEXTURE;}
SKILL   rightTurnPsby {VAL 0; MIN 0; MAX 1; TYPE LOCAL;}
SYNONYM MY_TEX {TYPE TEXTURE;}
SKILL   waitTime{}
SKILL   rightTurn{ VAL 0; MIN 0; MAX 1;}
SYNONYM TROP_TEX {TYPE TEXTURE;}
SKILL   randomTrop {TYPE LOCAL;}
SKILL   rightTurnTrop {VAL 0; MIN 0; MAX 1; TYPE LOCAL;}
SYNONYM P_REGION {TYPE REGION;}	// probe region
SKILL	  angleStep {VAL 0.524;}	// angle step (30 deg)
SKILL	  stepCounter {}			// step counter
SKILL	  angleOut {}			// angle out

/////////////////////////////////////////////////////////////////
// Contato Synonyms and Skills
/////////////////////////////////////////////////////////////////
SYNONYM ACTION_TRIGGER {TYPE ACTION;}
/////////////////////////////////////////////////////////////////
// Regional Synonyms and Skills
/////////////////////////////////////////////////////////////////
SKILL golCounter {TYPE LOCAL; VAL 0;}
SKILL lift_speed {TYPE LOCAL;}
SKILL assaultStarted {VAL 0;}
SKILL	dropped {VAL 0;}
/////////////////////////////////////////////////////////////////
// Se Synonyms and Skills
/////////////////////////////////////////////////////////////////
SKILL holeX    {TYPE LOCAL;}
SKILL holeY    {TYPE LOCAL;}
SKILL passFlag {TYPE LOCAL;}
/////////////////////////////////////////////////////////////////
// ESA Synonyms and Skills
/////////////////////////////////////////////////////////////////
SKILL TouchKEY { VAL 0;} // código da porta
/////////////////////////////////////////////////////////////////
// MJShip Synonyms and Skills
/////////////////////////////////////////////////////////////////
SYNONYM helilift  {TYPE REGION;}
SYNONYM liftSound {TYPE TEXTURE;}
SYNONYM auxRgn    {TYPE REGION;}
SYNONYM LockWall  {TYPE WALL;}
SKILL KEY4 { VAL 2;}// Doors 19 and 20
SKILL KEY5 { VAL 2;}// Doors 8 ,é comandado pelo painel na Control Room não há uma Thing associada
SKILL KEY6 { VAL 2;}// Doors 26 ,é comandado pelo painel na Control Room não há uma Thing associada
/////////////////////////////////////////////////////////////////
// São Tomé Synonyms and Skills
/////////////////////////////////////////////////////////////////
SYNONYM alarmTexture { TYPE TEXTURE;}
SKILL TouchKEY { VAL 0;} // código da porta
SKILL Batente1 { VAL 0;} // max big gate
SKILL Batente2 { VAL 0;} // min big gate
SKILL GateIsOpen {}
SKILL GateRPos {}
SKILL GateLPos {}
/////////////////////////////////////////////////////////////////
// Stonedrome Synonyms and Skills
/////////////////////////////////////////////////////////////////
SYNONYM centrallift { TYPE REGION;}
SYNONYM upDownDoor { TYPE REGION;}
SYNONYM LockTex { TYPE TEXTURE;}
SYNONYM shutleActionWay1 { TYPE ACTION;}
SYNONYM shutleActionWay2 { TYPE ACTION;}
SYNONYM shutleTextureWay1 { TYPE TEXTURE;}
SYNONYM shutleTextureWay2 { TYPE TEXTURE;}
SKILL ilumination { VAL 0.5;}
SKILL vx {VAL 0;}
SKILL vy {VAL 0;}
SKILL vz {VAL 0;}
SKILL vr {VAL 0;}
SKILL vxCeil {VAL 0;}
SKILL vxFloor {VAL 0;}
SKILL vyCeil {VAL 0;}
SKILL vyFloor {VAL 0;}
SKILL ceilPos {VAL 0;}
SKILL floorPos {VAL 0;}
/////////////////////////////////////////////////////////////////
// Bitmaps
/////////////////////////////////////////////////////////////////
BMAP PanelBmp,     <panel01.pcx>;
BMAP Key1Pic02Bmp, <panel01.pcx>, 139, 16, 16, 25;
BMAP Key2Pic02Bmp, <panel01.pcx>, 155, 16, 16, 25;
BMAP Key3Pic02Bmp, <panel01.pcx>, 171, 16, 16, 25;
BMAP Key4Pic02Bmp, <panel01.pcx>, 187, 16, 16, 25;
BMAP WeapPic01Bmp, <weapsel.pcx>,   0,  0, 48, 25;
BMAP WeapPic02Bmp, <weapsel.pcx>,  48,  0, 48, 25;
BMAP WeapPic03Bmp, <weapsel.pcx>,  96,  0, 48, 25;
BMAP WeapPic04Bmp, <weapsel.pcx>, 144,  0, 48, 25;
BMAP WeapPic05Bmp, <weapsel.pcx>, 192,  0, 48, 25;
BMAP Mhl01Bmp,     <Mhl01.pcx>;			// bullet hole

/////////////////////////////////////////////////////////////////
// Sounds
/////////////////////////////////////////////////////////////////
SOUND Death00Snd, <mibk05.wav>;
SOUND Hit01Snd,	<hit01.wav>;
SOUND Hit02Snd,	<playhit.wav>;
SOUND Hit03Snd,	<playpush.wav>;
SOUND Hit04Snd,	<playblub.wav>;
SOUND Fct01Snd,	<fct01.wav>;
SOUND FWt01Snd,	<fwt01.wav>;
/////////////////////////////////////////////////////////////////
// Textures
/////////////////////////////////////////////////////////////////
TEXTURE Key1PicTex {
        SCALE_XY        1,1;
        SIDES           2;
        BMAPS           Key1Pic01Bmp, Key1Pic02Bmp;
}
TEXTURE Key2PicTex {
        SCALE_XY        1,1;
        SIDES           2;
        BMAPS           Key2Pic01Bmp, Key2Pic02Bmp;
}
TEXTURE Key3PicTex {
        SCALE_XY        1,1;
        SIDES           2;
        BMAPS           Key3Pic01Bmp, Key3Pic02Bmp;
}
TEXTURE Key4PicTex {
        SCALE_XY        1,1;
        SIDES           2;
        BMAPS           Key4Pic01Bmp, Key4Pic02Bmp;
}
TEXTURE WeapPicTex {
        SCALE_XY        1,1;
        SIDES           5;
        BMAPS           WeapPic01Bmp, WeapPic02Bmp, WeapPic03Bmp,
				WeapPic04Bmp, WeapPic05Bmp;

}
TEXTURE NullTexture
{
	SCALE_XY 	64,64;
	BMAPS    	NULL;
}
/////////////////////////////////////////////////////////////////////
// Bullet holes (max 10 per wall)
/////////////////////////////////////////////////////////////////////
TEXTURE Mhl01Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl02Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl03Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl04Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl05Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl06Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl07Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl08Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl09Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}
TEXTURE Mhl10Tex { SCALE_XY 48,48; BMAPS Mhl01Bmp; ALBEDO 0.7;}

/////////////////////////////////////////////////////////////////
// Things
/////////////////////////////////////////////////////////////////
THING	ProbeTng {
	TEXTURE	NullTexture;
	HEIGHT  	0;
	FLAGS		PASSABLE;
	MAP_COLOR	0;
}

/////////////////////////////////////////////////////////////////
// Fonts
/////////////////////////////////////////////////////////////////
//FONT    DisplayFon, <digits.pcx>, 10, 21;
//FONT    MessageFon,<pnlfont.pcx>,  8, 10;
//FONT    MessageFon,<bigfont.pcx>,  10, 20;

/////////////////////////////////////////////////////////////////
// Texts
/////////////////////////////////////////////////////////////////
TEXT PanelText {
	POS_X   10;
IFDEF HIRES;
	POS_Y   362;
IFELSE;
	POS_Y   202;
ENDIF;
	FONT    MessageFon;
	STRING  NULL;
}

/////////////////////////////////////////////////////////////////
// Panels
/////////////////////////////////////////////////////////////////
PANEL InfoPanel {
        PAN_MAP         PanelBmp;
        POS_X           0;
IFDEF HIRES;
        POS_Y           358;
IFELSE;
        POS_Y           198;
ENDIF;
	  PICTURE 139, 16, Key1PicTex, KEY1;
	  PICTURE 155, 16, Key2PicTex, KEY2;
	  PICTURE 171, 16, Key3PicTex, KEY3;
	  PICTURE 187, 16, Key4PicTex, KEY4;
	  PICTURE 236, 16, WeapPicTex, WeaponSel;
        DIGITS           36,  18, 3, DisplayFon,   1, PLAYER_HEALTH;
        DIGITS          104,  18, 3, DisplayFon,   1, PLAYER_ARMOUR;
        DIGITS          286,  18, 3, DisplayFon,   1, AMMO;
}

/////////////////////////////////////////////////////////////////
// Actions
/////////////////////////////////////////////////////////////////
SKILL   msgSecCount   		{VAL -1;}
SKILL   shotSecCount  		{VAL -1;}
SKILL	  godCounter		{VAL -1;}
SKILL   underWaterSecCount  	{VAL -1;}
SYNONYM MESSAGE_TEXT  {TYPE STRING;}
SYNONYM BRIEFING_TEXT {TYPE STRING;}
SYNONYM GAMEOVER_TEXT {TYPE STRING;}
SYNONYM LEVEL_STRING  {TYPE STRING;}
SYNONYM LOAD_STRING   {TYPE STRING;}
ACTION  DisplayMessage {
        SET     PanelText.STRING, MESSAGE_TEXT;
        SET     MESSAGES.14, PanelText;
        SET     msgSecCount, 0;
}

ACTION  ControlMessageDisplay {
	  LOCATE;				// Locates the player every second 
						// to prevent the "limbus" bug
	  IF_BELOW godCounter, 0;
		GOTO water;
	  IF_ABOVE godCounter, 0;
		GOTO decGod;
	  SET IF_C, NULL;
	  SET IF_G, NULL;
	  SET IF_O, NULL;
	  SET IF_D, NULL;
decGod:
	  ADD godCounter, -1;
water:
	  IF_EQUAL underwater, 0;
		GOTO cont;
	  IF_EQUAL HERE.BELOW, NULL;
		GOTO cont;
	  CALL regio_arise;	      // ensures regio_arise is called
cont:
        IF_BELOW shotSecCount, 0;
                GOTO message;
        ADD shotSecCount, 1;
        IF_BELOW shotSecCount, 10;
                GOTO message;
        SET SHOT_SOUND_ON, 0;
        SET shotSecCount, -1;
message:
        IF_BELOW msgSecCount, 0;
                END;
        ADD msgSecCount, 1;
        IF_BELOW msgSecCount, 10;
                END;
	  IF_ABOVE MOVE_MODE, 0;
		GOTO contCounter;
	  SET msgSecCount, 10;		// freeze counter if game's stoped
	  END;
contCounter:
        IF_EQUAL PanelText.STRING, BlankStr;
                GOTO    nullMessage;
        SET PanelText.STRING, BlankStr;
        SET MESSAGES.14, PanelText;
                END;
nullMessage:
        SET MESSAGES.14, NULL;
        SET msgSecCount, -1;
}

ACTION ControlUnderWaterTime {
	IF_ABOVE underwater, 0;
		GOTO glubglub;
	SET underWaterSecCount, -1;
	END;
glubglub:
	ADD underWaterSecCount, 1;
	IF_BELOW underWaterSecCount, 20;
		END;
	SET PLAYER_RESULT, 2;
	CALL HitPlayer;
}

ACTION VanishStop {
	SET MY.SPEED, 	0;
	SET MY.CAREFULLY, 0;
	SET MY.SKILL1,	10;
	SET MY.EACH_TICK,	NULL;
	SET MY.INVISIBLE,	1;

}
ACTION VanishForGood {
	SET MY.SPEED, 	0;
	SET MY.CAREFULLY, 0;
	SET MY.SKILL1,	10;
	SET MY.EACH_TICK,	VanishStop;		// vanish if made visible again
	SET MY.TEXTURE,	NullTexture;
	SET MY.INVISIBLE,	1;
}
ACTION LocateActor {
//	IF_BELOW MY.SPEED, 0.05;
//		END;
	IF_EQUAL MY.GROUND, 0;
		GOTO cont;
	LOCATE MY;
	END;
cont:
	SET MY.HEIGHT,	0;
	SET MY.GROUND,	1;
	LOCATE MY;
	SET MY.GROUND,	0;
	SET MY.HEIGHT,	-0.05;
water:
	SET WATER_REGION, MY.REGION;
	IF_EQUAL WATER_REGION.IF_DIVE, NULL;
		END;
	SET MY.HEIGHT, -2.5;
}

ACTION LookPlayer {		// checks whether player is visible: if so, flag1 is set
	IF_ABOVE MY.DISTANCE, 200;
		GOTO notVisible;
	RULE distZ = FLOOR_HGT - MY.FLOOR_HGT;
	IF_BELOW distZ, -6;
		GOTO maybeVisible;
	IF_ABOVE distZ, 6;
		GOTO maybeVisible;
	SET SHOOT_SECTOR,	4;
	IF_BELOW MY.DISTANCE, 20;
		SET SHOOT_SECTOR, 6.28;
	SET SHOOT_RANGE,  200;
	SET SHOOT_Y,	0.0;
	SHOOT MY;
	IF_EQUAL HIT_DIST,0;
		GOTO notVisible;
isVisible:
	SET MY.FLAG1, 1;
	END;
maybeVisible:
	IF_EQUAL MY.VISIBLE, 1;
		GOTO isVisible;
notVisible:
	SET MY.FLAG1, 0;
}

ACTION Probe {
	IF_BELOW MY.SPEED, 0.05;
		END;
	IF_EQUAL MY.GROUND, 0;
		GOTO cont;
	LOCATE MY;
	END;
cont:
//	SET MY.HEIGHT,	0;
//	SET MY.GROUND,	1;
//	LOCATE MY;
//	SET MY.GROUND,	0;
	SET MY.HEIGHT,	-0.05;
water:
	SET WATER_REGION, MY.REGION;
	IF_EQUAL WATER_REGION.IF_DIVE, NULL;
		GOTO probeLoop;
	SET MY.HEIGHT, -2.5;
probeLoop:
	IF_EQUAL WATER_REGION.FLAG2, 1;
		BRANCH VanishForGood;
	IF_BELOW WATER_REGION.FLAG1, 1;
		END;
	SET  stepCounter, 0;
	SET  angleOut, MY.ANGLE;
probeAgain:
	SIN  distY, angleOut;
	RULE distX = angleOut + HALF_PI;
	SIN  distX, distX;
	RULE ProbeTng.X = MY.X + distX * 12;
	RULE ProbeTng.Y = MY.Y + distY * 12;
	SET ProbeTng.GROUND, 1;
	SET ProbeTng.HEIGHT, WATER_REGION.FLOOR_HGT;
	LOCATE ProbeTng;
	SET ProbeTng.GROUND, 0;
	SET P_REGION, ProbeTng.REGION;
	RULE distZ = P_REGION.FLOOR_HGT - WATER_REGION.FLOOR_HGT;
	IF_ABOVE distZ, -1;
		GOTO end;
	IF_ABOVE stepCounter, 11; 
		GOTO end;
	RULE angleStep = -angleStep;
	IF_BELOW angleStep, 0;
		ADD stepCounter, 1;
	RULE angleOut = MY.ANGLE + stepCounter * angleStep;
	GOTO probeAgain;
end:
	SET MY.TARGET, BULLET;
	SET MY.ANGLE, angleOut;
}

ACTION FollowAngle {
	RULE distZ = (PLAYER_X - MY.X);
	RULE distY = (PLAYER_Y - MY.Y);
	RULE distX = (distZ * distZ) + (distY * distY);
	SQRT distX, distX;
	IF_BELOW distX, 0.1;
		END;
	RULE distY = distY / distX;
	ASIN MY.ANGLE, distY;
	IF_ABOVE distZ, 0;
		END;
	RULE MY.ANGLE = PI-MY.ANGLE;
}
ACTION RepelAngle {
	CALL FollowAngle;
	ADD MY.ANGLE, PI;
}

ACTION ActorJump {
	ADDT	MY.VSPEED, -0.1;
	IF_ABOVE MY.HEIGHT, MY.FLOOR_HGT;
		END;
	SET MY.GROUND, 0;
	SET MY.HEIGHT, -0.05;
	SET MY.VSPEED, 0;
	SET MY.EACH_TICK, NULL;
	END;
}

ACTION ActorJumpStop {
	ADD	MY.VSPEED, -0.1;
	IF_ABOVE MY.HEIGHT, MY.FLOOR_HGT;
		END;
	SET MY.GROUND, 0;
	SET MY.HEIGHT, -0.05;
	SET MY.VSPEED, 0;
	ADD MY.SPEED, -0.1;
	ADD MY.ANGLE, 0.05;
	IF_ABOVE MY.SPEED, 0.1;
		END;
	SET MY.EACH_TICK, NULL;
	SET MY.SPEED, 0;
	SET MY.CAREFULLY, 0;
	SET MY.TARGET, NULL;
}

ACTION TurnLeft {
	ADD MY.ANGLE, 0.524;
	BRANCH Probe;
}

ACTION TurnRight {
	ADD MY.ANGLE, -0.524;
	BRANCH Probe;
}

ACTION ShowAmmo {
	IF_EQUAL WeaponSel, 1;
		SET AMMO, 0;
	IF_EQUAL WeaponSel, 2;
		SET AMMO, AMMO_MP5;
	IF_EQUAL WeaponSel, 3;
		SET AMMO, AMMO_GRANADE;
	IF_EQUAL WeaponSel, 4;
		SET AMMO, AMMO_STINGER;
	IF_EQUAL WeaponSel, 5;
		SET AMMO, AMMO_QUANTUM;
}

ACTION DecAmmo {
	IF_EQUAL WeaponSel, 1;
		SET AMMO, 0;
	IF_EQUAL WeaponSel, 2;
		SET AMMO_MP5, AMMO;
	IF_EQUAL WeaponSel, 3;
		SET AMMO_GRANADE, AMMO;
	IF_EQUAL WeaponSel, 4;
		SET AMMO_STINGER, AMMO;
	IF_EQUAL WeaponSel, 5;
		SET AMMO_QUANTUM, AMMO;
}

ACTION InnocentKilled {
	IF_ABOVE Innocents, 2;
		END;
	ADD Innocents, 1;
	IF_BELOW Innocents, 3;
		END;
	WAITT 320;
	IF_ABOVE PLAYER_HEALTH, 5; GOTO cont;
	SET Innocents, 2;
	END;
cont:
	SET GAMEOVER_TEXT, End01Str;
	CALL ShowPDAGameOver;
}

ACTION DrillHole {
    IF_EQUAL MY.SKILL3, 0; END;
    SET MY.SKILL3, 0;
    SET MY_TEX, MY.TEXTURE;
    RULE holeX = HIT_X - (5 * MY_TEX.SCALE_X / 48);
    RULE holeY = HIT_Y - (5 * MY_TEX.SCALE_Y / 48);
    SET distY, MY_TEX.SCALE_Y;
    IF_NEQUAL MY.ATTACH, NULL;
    GOTO second;
    SET MY.ATTACH , Mhl01Tex;
    SET MY_TEX, MY.ATTACH;
    SET MY_TEX.ATTACH, NULL;
last:
    RULE MY_TEX.POS_X = holeX;
    RULE MY_TEX.POS_Y = holeY;
    END;
second:
    SET MY_TEX, MY.ATTACH;
    IF_NEQUAL MY_TEX.ATTACH, NULL;
    GOTO third;
    SET MY_TEX.ATTACH , Mhl02Tex;
    SET MY_TEX, MY_TEX.ATTACH;
    SET MY_TEX.ATTACH, NULL;
    RULE MY_TEX.POS_X = holeX;
    RULE MY_TEX.POS_Y = holeY;
    END;
third:
    SET MY_TEX, MY_TEX.ATTACH;
    IF_NEQUAL MY_TEX.ATTACH, NULL;
    GOTO fourth;
    SET MY_TEX.ATTACH , Mhl03Tex;
    SET MY_TEX, MY_TEX.ATTACH;
    SET MY_TEX.ATTACH, NULL;
    RULE MY_TEX.POS_X = holeX;
    RULE MY_TEX.POS_Y = holeY;
    END;
fourth:
    SET MY_TEX, MY_TEX.ATTACH;
    IF_NEQUAL MY_TEX.ATTACH, NULL;
    GOTO fifth;
    SET MY_TEX.ATTACH , Mhl04Tex;
    SET MY_TEX, MY_TEX.ATTACH;
    SET MY_TEX.ATTACH, NULL;
    RULE MY_TEX.POS_X = holeX;
    RULE MY_TEX.POS_Y = holeY;
    END;
fifth:
    SET MY_TEX, MY_TEX.ATTACH;
    IF_NEQUAL MY_TEX.ATTACH, NULL;
    GOTO sixth;
    SET MY_TEX.ATTACH , Mhl05Tex;
    SET MY_TEX, MY_TEX.ATTACH;
    SET MY_TEX.ATTACH, NULL;
    RULE MY_TEX.POS_X = holeX;
    RULE MY_TEX.POS_Y = holeY;
    END;
sixth:
    SET MY_TEX, MY_TEX.ATTACH;
    IF_NEQUAL MY_TEX.ATTACH, NULL;
    GOTO seventh;
    SET MY_TEX.ATTACH , Mhl06Tex;
    SET MY_TEX, MY_TEX.ATTACH;
    SET MY_TEX.ATTACH, NULL;
    RULE MY_TEX.POS_X = holeX;
    RULE MY_TEX.POS_Y = holeY;
    END;
seventh:
    SET MY_TEX, MY_TEX.ATTACH;
    IF_NEQUAL MY_TEX.ATTACH, NULL;
    GOTO eighth;
    SET MY_TEX.ATTACH , Mhl07Tex;
    SET MY_TEX, MY_TEX.ATTACH;
    SET MY_TEX.ATTACH, NULL;
    RULE MY_TEX.POS_X = holeX;
    RULE MY_TEX.POS_Y = holeY;
    END;
eighth:
    SET MY_TEX, MY_TEX.ATTACH;
    IF_NEQUAL MY_TEX.ATTACH, NULL;
    GOTO nineth;
    SET MY_TEX.ATTACH , Mhl08Tex;
    SET MY_TEX, MY_TEX.ATTACH;
    SET MY_TEX.ATTACH, NULL;
    RULE MY_TEX.POS_X = holeX;
    RULE MY_TEX.POS_Y = holeY;
    END;
nineth:
    SET MY_TEX, MY_TEX.ATTACH;
    IF_NEQUAL MY_TEX.ATTACH, NULL;
    GOTO tenth;
    SET MY_TEX.ATTACH , Mhl09Tex;
    SET MY_TEX, MY_TEX.ATTACH;
    SET MY_TEX.ATTACH, NULL;
    RULE MY_TEX.POS_X = holeX;
    RULE MY_TEX.POS_Y = holeY;
    END;
tenth:
    SET MY_TEX, MY_TEX.ATTACH;
    IF_NEQUAL MY_TEX.ATTACH, NULL;
    GOTO last;
    SET MY_TEX.ATTACH , Mhl10Tex;
    SET MY_TEX, MY_TEX.ATTACH;
    SET MY_TEX.ATTACH, NULL;
    RULE MY_TEX.POS_X = holeX;
    RULE MY_TEX.POS_Y = holeY;
    END;
}
