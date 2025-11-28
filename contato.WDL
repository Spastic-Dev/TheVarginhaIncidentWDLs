/////////////////////////////////////////////////////////////////////////
// Contato!
/////////////////////////////////////////////////////////////////////////
DEFINE HIRES;           // forces 320x400 resolution

IFDEF HIRES;
	VIDEO   X320x400;
IFELSE;
	VIDEO   X320x240;
ENDIF;

PATH "..\\resource\\textures";
PATH "..\\resource\\palettes";
PATH "..\\resource\\fonts";
PATH "..\\resource\\sounds";
PATH "..\\resource\\actors";
PATH "..\\resource\\things";
PATH "..\\resource\\overlay";
PATH "..\\resource\\wdls";


LIGHT_ANGLE     2;
NEXUS 20;

MAPFILE         <contato.wmp>;
BIND            <contato.WDL>;
CLIP_DIST 1100;

INCLUDE         <strings.WDL>;
INCLUDE     <cnttkey.wdl>;
INCLUDE         <panel.wdl>;
INCLUDE         <menu.wdl>;

/////////////////////////////////////////////////////////////////////////
// Ways
/////////////////////////////////////////////////////////////////////////
WAY             Humm1Way;
WAY             Humm2Way;
WAY             Heli1Way;
WAY             Heli2Way;
WAY             Assault1Way;
WAY             Assault2Way;
WAY             Assault3Way;
WAY             Guard1Way;
WAY             Guard2Way;
WAY             Guard3Way;
WAY             Rept1Way;
WAY             EscapeWay;

/////////////////////////////////////////////////////////////////////////
// Synonyms
/////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////
// Overlays
/////////////////////////////////////////////////////////////////////////
INCLUDE <ovl.wdl>;
ACTION EndOfLevel {
	SET     MOVE_MODE, 1;
	FADE_PAL black, 0.40;
	PLAY_SOUND Bip03Snd, 0.5;
	SET     menuItem,  3;
	SET     maxMenuItem, 3;
	SET     IF_ESC, HideMenu; //////////// remover
	SET     IF_CUU, NULL;
	SET     IF_CUD, NULL;
	SET     IF_CUR, NULL;
	SET     IF_CUL, NULL;

	SET     PANELS.16,    MenuPanel;
	SET     MESSAGES.16,  PleaseWaitText;
	IF_NEQUAL LEVEL_STRING, NULL;
		GOTO cont;
	SET     MESSAGE_TEXT, Load08Str;
	CALL    DisplayMessage;
	SET     PLAYER_HEALTH, 100;
	PLAY_CD 0,2;
	WAIT    16;
	MAP;
	LOCATE;
	SET     PANELS.16,    NULL;
	SET     MESSAGES.16,  NULL;
	END;
cont:
	SET     MESSAGE_TEXT, LOAD_STRING;
	CALL    DisplayMessage;
	PLAY_CD 0,2;
	WAIT    16;
	EXIT;
}


INCLUDE <Weapons.WDL>;
INCLUDE <ivmove.WDL>;

IF_START        StartLevel;
// *****************************************
// ** Palettes
// *****************************************
PALETTE pal1
{       PALFILE <palette.pcx>;
	RANGE 16,16  ; RANGE 32,16  ; RANGE 48,16  ; RANGE 64,16  ;
	RANGE 80,16  ; RANGE 96,16  ; RANGE 128,8  ; RANGE 136,8  ;
	RANGE 148,12 ; RANGE 160,8  ; RANGE 168,8  ; RANGE 176,8  ;
	RANGE 184,8  ; RANGE 192,16 ; RANGE 208,16 ; RANGE 224,16 ;
	FLAGS   BLUR;
}
// *****************************************
//******************
// BitMaps
INCLUDE <CnttBmp.WDL>;
INCLUDE <CnttTex.WDL>;
//*******************
//Actors & Things
//******************
INCLUDE <CnttTng.wdl>;
INCLUDE <Rept.WDL>;
INCLUDE <Trop.WDL>;
INCLUDE <hummer.wdl>;
INCLUDE <cnttact.wdl>;

INCLUDE <CnttWall.WDL>;
INCLUDE <Water.WDL>;
INCLUDE <CnttRgn.WDL>;

/////////////////////////////////////////////////////////////////
// Actors
/////////////////////////////////////////////////////////////////

ACTION StartLevel {
IFDEF HIRES;
    SET  SCREEN_HGT,  358;
    SET  SKY_OFFS_Y,  140;
IFELSE;
    SET  SCREEN_HGT, 198;
    SET  SKY_OFFS_Y,  42;
ENDIF;
    SET  SOUND_VOL,    SOUND_VOL_BUFFER;
    SET  CDAUDIO_VOL,  CDAUDIO_VOL_BUFFER;
    SET  MAP_SCALE, 5;
    SET  MAP_ROT,   1;
    SET  COLOR_PLAYER, 101;
    SET  COLOR_ACTORS, 164;
    SET  COLOR_THINGS, 176;
    SET  COLOR_WALLS,  193;
    SET  COLOR_BORDER, 195;
    SET  PLAYER_LIGHT, 0.15;
    SET  ACTOR_CLIMB, 1.5;
    SET  MOTION_BLUR,  0;
    SET  SecCounter, 0;
    SET  EACH_SEC.2,  ControlMessageDisplay;
    SET  EACH_SEC.3,  ControlUnderWaterTime;
    SET  PANELS.15, InfoPanel;
    SET  LAYERS.15, PnlMskOvl;
    CALL set_walking;
    SET  dropped, 0;
    SET  AMMO, 0;
    SET  KEY1, 2;                       // side2 = blank
    SET  KEY2, 2;                       // side2 = blank
    SET  KEY3, 2;                       // side2 = blank
    SET  KEY4, 2;                       // side2 = blank
    SET  GAMEOVER_TEXT, End01Str;
    SET  BRIEFING_TEXT, Brf01Str;
    SET  LOAD_STRING,   Load02Str;
    SET  LEVEL_STRING,  Level02Str;
    SET  Innocents,     0;
    SET  underwater,    0;
    SET  PLAYER_ARC,    1;
    SET  CDTRACK,               2;
    SET  CDTRACKTime,   308;
    SET  PLAYER_HIT, 0;
    SET  GUN_ON,                0;
    SET  SHOT_SOUND_ON, 0;
    SET  EXPLOSION_ON,  0;
    SET  MISSILE, Miss14Act;
    SET  assaultStarted, 0;
    SET  ACTION_TRIGGER, StartAssault;
    SET golCounter, 0;
    Branch FadeIn;
}

ACTION LaunchMissiles {
	SET  MISSILE.GROUND, 1;
	SET  MISSILE.SPEED,  4;
	RULE MISSILE.X = -170;
	RULE MISSILE.Y =  180;
	RULE MISSILE.HEIGHT = 5;
	SET  MISSILE.TARGET_X, -30;
	SET  MISSILE.TARGET_Y,  57;
	SET  MISSILE.TEXTURE, Miss1Tex;
	SET  MISSILE.IF_ARRIVED, ExplodeMissile;
	SET  MISSILE.IF_HIT,     ExplodeMissile;
	SET  MISSILE.ANGLE, PLAYER_ANGLE;
	SET  MISSILE.TARGET, VERTEX;
	SET  MISSILE.INVISIBLE, 0;
waiting:
	WAITT 16;
	IF_BELOW MISSILE.INVISIBLE, 1;
		GOTO waiting;
	SET  MISSILE.GROUND, 1;
	SET  MISSILE.SPEED,  4;
	RULE MISSILE.X = -150;
	RULE MISSILE.Y =   50;
	RULE MISSILE.HEIGHT = 5;
	SET  MISSILE.TARGET_X, -100;
	SET  MISSILE.TARGET_Y,    0;
	SET  MISSILE.TEXTURE, Miss1Tex;
	SET  MISSILE.IF_ARRIVED, ExplodeMissile;
	SET  MISSILE.IF_HIT,     ExplodeMissile;
	SET  MISSILE.ANGLE, PLAYER_ANGLE;
	SET  MISSILE.TARGET, VERTEX;
	SET  MISSILE.INVISIBLE, 0;
waiting1:
	WAITT 16;
	IF_BELOW MISSILE.INVISIBLE, 1;
		GOTO waiting1;
	SET  MISSILE.GROUND, 1;
	SET  MISSILE.SPEED,  4;
	RULE MISSILE.X = -50;
	RULE MISSILE.Y =   0;
	RULE MISSILE.HEIGHT = 5;
	SET  MISSILE.TARGET_X, -10;
	SET  MISSILE.TARGET_Y,   0;
	SET  MISSILE.TEXTURE, Miss1Tex;
	SET  MISSILE.IF_ARRIVED, ExplodeMissile;
	SET  MISSILE.IF_HIT,     ExplodeMissile;
	SET  MISSILE.ANGLE, PLAYER_ANGLE;
	SET  MISSILE.TARGET, VERTEX;
	SET  MISSILE.INVISIBLE, 0;
	SET     MESSAGE_TEXT, Wrn17Str;
	CALL    DisplayMessage;
	SET_ALL Rept0Act.EACH_TICK, ReptFlee;
	SET_ALL Rept1Act.EACH_TICK, ReptFlee;
	SET SHOT_SOUND_ON, 1;
}
ACTION StartAssault{
	IF_ABOVE assaultStarted, 0;
		END;
	SET assaultStarted, 1;
	CALL LaunchMissiles;
	WAITT   64;
	SET Humm1Act.INVISIBLE, 0;
	SET Humm2Act.INVISIBLE, 0;
	SET_ALL TropAssault1Act.INVISIBLE, 0;
	SET_ALL TropAssault1Act.DIST, 40;
}

ACTION FadeIn{
    FADE_PAL black, 2.0; WAITT 8;
    FADE_PAL pal1,  0.05; WAITT 1;
    FADE_PAL pal1,  0.10; WAITT 1;
    FADE_PAL pal1,  0.15; WAITT 1;
    FADE_PAL pal1,  0.20; WAITT 1;
    FADE_PAL pal1,  0.25; WAITT 1;
    FADE_PAL pal1,  0.30; WAITT 1;
    FADE_PAL pal1,  0.35; WAITT 1;
    FADE_PAL pal1,  0.40; WAITT 1;
    FADE_PAL pal1,  0.45; WAITT 1;
    FADE_PAL pal1,  0.50; WAITT 1;
    FADE_PAL pal1,  0.55; WAITT 1;
    FADE_PAL pal1,  0.60; WAITT 1;
    FADE_PAL pal1,  0.65; WAITT 1;
    FADE_PAL pal1,  0.70; WAITT 1;
    FADE_PAL pal1,  0.75; WAITT 1;
    FADE_PAL pal1,  0.80; WAITT 1;
    FADE_PAL pal1,  0.85; WAITT 1;
    FADE_PAL pal1,  0.90; WAITT 1;
    FADE_PAL pal1,  0.95; WAITT 1;
    FADE_PAL pal1,  2.0;
    SET  EACH_SEC.1,  RepeatMusic;
}
