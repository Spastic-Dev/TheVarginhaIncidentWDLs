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
PATH "..\\resource\\tempres";
PATH "..\\resource\\Wdls";
PATH "..\\resource\\Textures";

MAPFILE         <intro02.wmp>;
BIND            <intro02.WDL>;
CLIP_DIST 100;

/////////////////////////////////////////////////////////////////////////
// Overlays
/////////////////////////////////////////////////////////////////////////
	OVLY Intro02aBmp, <intro02a.pcx>;
	OVLY Intro02bBmp, <intro02b.pcx>;
	OVERLAY Intro02aOvl  {POS_X 0; POS_Y 0; OVLYS Intro02aBmp;}
	OVERLAY Intro02bOvl  {POS_X 0; POS_Y 0; OVLYS Intro02bBmp;}
///////////////////////////////////
// Sounds
///////////////////////////////////
SOUND Bip03Snd, <bip03.wav>;

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
IFDEF ENGLISH;
STRING  Brf01Str, "Warning!

You must rescue
the shuttle at any
cost!
Your people are not
prepared to handle
our technology.

One moment...
Receiving life signs
from a survivor...

Proceed to the
city hospital and
find the survivor!";

STRING  Message01Str, "Hit ESC to start...";
STRING  Message02Str, "Loading 'Local Hospital'...           ";

IFELSE;
STRING  Brf01Str, "Aten[]o!

Resgate a nave a
qualquer custo!
Seu povo n]o est{
preparado para lidar
com nossa
tecnologia.

Um momento...
captando sinais
vitais de um
sobrevivente...

Siga at| o
hospital da cidade
e encontre-o!";

STRING  Message01Str, "Tecle ESC para iniciar...";
STRING  Message02Str, "Carregando 'Hospital Local'...        ";
ENDIF;

TEXT PleaseWaitText {
	POS_X    90;
	POS_Y    140;
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
	STRING  Message01Str;
	LAYER	   16;
}

TEXT PDAText {
     FONT    BriefingFon;
     STRING  Brf01Str;
     POS_X   79;
     POS_Y   76;
     SIZE_Y  240;
     LAYER	 16;
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
    SET  PLAYER_ARC,	1;
    FADE_PAL black, 0.40;
    SET  LAYERS.13, Intro02aOvl;
    SET  PDAText.VISIBLE, 1;
    SET  PanelText.VISIBLE,    1;
    PLAY_SOUND Bip03Snd, 0.5;
    SET  IF_ESC, 		EndOfLevel;
}

ACTION EndOfLevel {
      SET  LAYERS.13, Intro02bOvl;
	SET  PDAText.VISIBLE, 0;
	SET  PleaseWaitText.VISIBLE,    1;
	SET  PanelText.STRING, Message02Str;
	PLAY_SOUND Bip03Snd, 0.5;
	SET	IF_CUU, NULL;
	SET	IF_CUD, NULL;
	SET	IF_CUR, NULL;
	SET	IF_CUL, NULL;
	SET 	IF_ESC, NULL;
	WAIT  4;
	LEVEL <Regional.wdl>,"game.wrs";
	WAITT 320;
}
