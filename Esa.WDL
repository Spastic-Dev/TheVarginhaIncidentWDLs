DEFINE HIRES;
IFDEF HIRES;
    VIDEO   X320x400;
IFELSE;
    VIDEO   X320x240;
ENDIF;

LIGHT_ANGLE     4.2;
NEXUS 40;
PATH "..\\resource\\textures";
PATH "..\\resource\\palettes";
PATH "..\\resource\\fonts";
PATH "..\\resource\\sounds";
PATH "..\\resource\\actors";
PATH "..\\resource\\things";
PATH "..\\resource\\overlay";
PATH "..\\resource\\tempres";
PATH "..\\resource\\Wdls";

MAPFILE         <Esa.wmp>;
BIND            <Esa.WDL>;
CLIP_DIST 700;
INCLUDE         <EsaKey.Wdl>;
INCLUDE         <strings.wdl>;
INCLUDE         <panel.wdl>;
INCLUDE         <menu.wdl>;

/////////////////////////////////////////////////////////////////////////
// Overlays
/////////////////////////////////////////////////////////////////////////
INCLUDE <Ovl.Wdl>;
///////////////////////////////////
// Sounds
///////////////////////////////////
SOUND Trk01Snd, <trk01.wav>;
INCLUDE <EsaSound.Wdl>;
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
	PLAY_CD 0,2;
	WAIT    16;
	SET PLAYER_HEALTH, 100;
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
	LEVEL <se.wdl>;
	WAITT 320;
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
INCLUDE <EsaWay.Wdl>;
INCLUDE <Water.WDL>;
INCLUDE <EsaTex.WDL>;

INCLUDE <EsaWal.WDL>;
//INCLUDE <Test.WDL>;

//*******************
//Actors & Things
//******************
INCLUDE <EsaThing.wdl>;
INCLUDE <Trop.wdl>;
INCLUDE <Launcher.wdl>;
INCLUDE <EsaActor.wdl>;
INCLUDE <EsaActio.WDL>;
INCLUDE <EsaRgn.WDL>;
///////////////////////////////////
// Actions
///////////////////////////////////

ACTION StartLevel {
IFDEF HIRES;
    SET  SCREEN_HGT, 358;
    SET  SKY_OFFS_Y,  70;
IFELSE;
    SET  SCREEN_HGT, 198;
    SET  SKY_OFFS_Y,  42;
ENDIF;
    SET  SOUND_VOL,    SOUND_VOL_BUFFER;
    SET  CDAUDIO_VOL,  CDAUDIO_VOL_BUFFER;
    SET  MAP_SCALE,    5;
    SET  MAP_ROT,      1;
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
    SET  AMMO, 0;
    SET  KEY1, 2;                       // side2 = blank
    SET  KEY2, 2;                       // side2 = blank
    SET  KEY3, 2;                       // side2 = blank
    SET  KEY4, 2;                       // side2 = blank
    SET  GAMEOVER_TEXT, End01Str;
    SET  BRIEFING_TEXT, Brf03Str;
    SET  LOAD_STRING,   Load04Str;
    SET  LEVEL_STRING,  Level04Str;
    SET  Innocents,     0;
    SET  underwater,    0;
    SET  PLAYER_ARC,    1;
    SET  CDTRACK,               4;
    SET  CDTRACKTime,   292;
    SET  PLAYER_HIT, 0;
    SET  GUN_ON,                0;
    SET  SHOT_SOUND_ON, 0;
    SET  EXPLOSION_ON,  0;
// CALL set_debug; //esta função está em test.wdl
    PLAY_SOUND Trk01Snd, .9;
    SET golCounter,     0;
    SET EACH_TICK.4, MoveTruck;
}
