/////////////////////////////////////////////////////////////////////////
// Praça da Sé
/////////////////////////////////////////////////////////////////////////
DEFINE HIRES;
    VIDEO   X320x400;

LIGHT_ANGLE     0.3;
NEXUS 25;
PATH "..\\resource\\textures";
PATH "..\\resource\\palettes";
PATH "..\\resource\\fonts";
PATH "..\\resource\\sounds";
PATH "..\\resource\\actors";
PATH "..\\resource\\things";
PATH "..\\resource\\overlay";
PATH "..\\resource\\Wdls";

MAPFILE         <intro01.wmp>;
BIND            <intro02.wdl>;
BIND		    <intro02.wdl>;
BIND		    <intro02.wmp>;
BIND		    <intro02a.pcx>;
BIND		    <intro02b.pcx>;
CLIP_DIST 100;

/////////////////////////////////////////////////////////////////////////
// Overlays
/////////////////////////////////////////////////////////////////////////
	OVLY Intro01Bmp, <intro01.pcx>;
	OVERLAY Intro01Ovl  {POS_X 0; POS_Y 0; OVLYS Intro01Bmp;}
///////////////////////////////////
// Sounds
///////////////////////////////////
SOUND Bip03Snd, <bip03.wav>;
ACTION EndOfLevel {
	PLAY_SOUND Bip03Snd, 0.5;
	SET	IF_CUU, NULL;
	SET	IF_CUD, NULL;
	SET	IF_CUR, NULL;
	SET	IF_CUL, NULL;
	WAIT  4;
	LEVEL <Contato.wdl>,"game.wrs";
	WAITT 320;
}



IF_START        StartLevel;
///////////////////////////////////
// Palettes
///////////////////////////////////
PALETTE black {PALFILE <black.pcx>;}
PALETTE pal1  {PALFILE <palette.pcx>;}

BMAP Cct01Map,          <fct01.pcx>;
TEXTURE Cct01Tex 
{
	SCALE_XY 8,8;
	BMAPS    Cct01Map;
	ALBEDO   0.5;
}
Wall Wct01Wall
{
    TEXTURE Cct01Tex;
    FLAGS	IMPASSABLE;
}
REGION BorderRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  0;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX  Cct01Tex;
    AMBIENT 0.6;
    CLIP_DIST	0;
}

REGION GapRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  10;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX  Cct01Tex;
    AMBIENT 0.6;
    CLIP_DIST	100;
}
/////////////////////////////////////////////////////////////////
// Fonts
/////////////////////////////////////////////////////////////////
FONT    MenuFon,		<bigfont.pcx>,  10, 20;
FONT    MessageFon,  	<pnlfont.pcx>,  8, 10;
FONT    BriefingFon, 	<brffont.pcx>,  8, 10;

///////////////////////////////////
// Texts
///////////////////////////////////

TEXT PleaseWaitText {
	POS_X    90;
	POS_Y    90;
	FONT    MenuFon;
IFDEF ENGLISH;
	STRING  "Please wait...";
IFELSE;
	STRING  "Por favor,\naguarde...";
ENDIF;
	LAYER	   16;
}
TEXT PanelText {
	POS_X   10;
	POS_Y   362;
	FONT    MessageFon;
IFDEF ENGLISH;
	STRING  "Loading 'Contact!'...";
IFELSE;
	STRING  "Carregando 'Contato!'...";
ENDIF;
	LAYER	   16;
}


///////////////////////////////////
// Actions
///////////////////////////////////

ACTION StartLevel {
    SET  SCREEN_HGT, 400;
    SET  MAP_SCALE, 5;
    SET  COLOR_PLAYER, 101;
    SET  COLOR_ACTORS, 164;
    SET  COLOR_THINGS, 176;
    SET  COLOR_WALLS,  193;
    SET  COLOR_BORDER, 195;
    SET  PLAYER_LIGHT, 0.15;
    SET  ACTOR_CLIMB, 1.5;
    SET  MOTION_BLUR,  0;
    SET  MOVE_MODE, 0;
    SET  LAYERS.13, Intro01Ovl;
    SET  PLAYER_ARC,	1;
    SET  IF_ESC, 		NULL;
    FADE_PAL black, 0.40;
    SET  PleaseWaitText.VISIBLE, 1;
    SET  PanelText.VISIBLE, 1;
    WAITT 8;
    CALL EndOfLevel;
}
