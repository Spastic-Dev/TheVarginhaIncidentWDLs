/////////////////////////////////////////////////////////////////
// Sé Regions
/////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////
// Sounds
/////////////////////////////////////////////////////////////////
SOUND SeCall01Snd, <secall01.wav>;
/////////////////////////////////////////////////////////////////
// Regions
/////////////////////////////////////////////////////////////////
REGION BorderRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  0;
    FLOOR_TEX Fct01Tex;
    CEIL_TEX  Fct01Tex;
    CLIP_DIST 0;
    AMBIENT   0.5;
    IF_ENTER	FinishPlayer;
}

/////////////////////////////////////////////////////////////////
// Square
/////////////////////////////////////////////////////////////////
REGION LandscapeRgn
{
    FLOOR_HGT 50;
    CEIL_HGT  55;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX Cce01Tex;
    
    AMBIENT 0.8;
}

REGION ExtGarden01Rgn
{
    FLOOR_HGT 17;
    CEIL_HGT  45;
    FLOOR_TEX Fvg01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.8;
}
REGION ExtGarden02Rgn
{
    FLOOR_HGT 19;
    CEIL_HGT  45;
    FLOOR_TEX Fvg01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.8;
}
REGION ExternGround
{
    FLOOR_HGT 15;
    CEIL_HGT  45;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.8;
}

/////////////////////////////////////////////////////////////////
// Ticket Desks
/////////////////////////////////////////////////////////////////
REGION GardenRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  45;
    FLOOR_TEX Fvg01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}
REGION GardenLspRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  19;
    FLOOR_TEX Fvg01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.8;
}

REGION TicketRgn
{
    FLOOR_HGT 6;
    CEIL_HGT  9;
    FLOOR_TEX TiketTopTex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.6;
    CEIL_OFFS_X 136;
}
REGION AbaRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  17;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    FLAGS     CEIL_DESCEND;
    AMBIENT 0.7;
}

REGION EntranceRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    AMBIENT 0.6;
}
/////////////////////////////////////////////////////////////////
// Catracas
/////////////////////////////////////////////////////////////////
/*
REGION TrancaBlRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  1.8;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wmt01Tex;
    AMBIENT 0.6;
}

REGION TrancaRgn
{
    FLOOR_HGT 2.3;
    CEIL_HGT  9;
    FLOOR_TEX Wmt01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW     TrancaBLRgn;
    AMBIENT   0.6;
}
*/
REGION CatracaRgn
{
    FLOOR_HGT 2.8;
    CEIL_HGT  9;
    FLOOR_TEX CatracaTopTex;
    CEIL_TEX  Wct02Tex;
    AMBIENT   0.6;
}
REGION CatracaFloorRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  9;
    FLOOR_TEX Fmt01aTex;
    CEIL_TEX  Wct02Tex;
    AMBIENT   0.6;
}
/////////////////////////////////////////////////////////////////
// Interior
/////////////////////////////////////////////////////////////////
REGION DoubleRgn
{
    FLOOR_HGT -15;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    AMBIENT 0.5;
    FLAGS		FLAG1;
}

REGION Sign02Reg
{
    FLOOR_HGT -15;
    CEIL_HGT  -6;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    AMBIENT 0.5;
}
REGION Sign01Reg
{
    FLOOR_HGT 0;
    CEIL_HGT  6;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW     Sign02Reg;
    AMBIENT 0.5;
}
REGION HallLp2Rgn
{
    FLOOR_HGT -15;
    CEIL_HGT  -6.5;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Clp01Tex;
    AMBIENT 0.5;
}

REGION HallLp1Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  8.5;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Clp01Tex;
    BELOW     HallLp2Rgn;
    AMBIENT 0.5;
}
REGION Hallf2Rgn
{
    FLOOR_HGT -15;
    CEIL_HGT  -6;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    AMBIENT 0.5;
    FLAGS		FLAG1;
}

REGION Hallf1Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW     Hallf2Rgn;
    GENIUS    DomusGeniusTng;
    IF_ENTER  PlayCall;
    AMBIENT 0.5;
}



REGION TrackfDoubleRgn
{
    FLOOR_HGT -18;
    CEIL_HGT  9;
    FLOOR_TEX TrackTex;
    CEIL_TEX  Wct02Tex;
    AMBIENT 0.5;
}
REGION TunelRgn
{
    FLOOR_HGT -18;
    CEIL_HGT  -6.5;
    FLOOR_TEX TrackTex;
    CEIL_TEX  Cct01Tex;
    AMBIENT   -0.1;
}
REGION TunelTiltedRgn
{
    FLOOR_HGT -18;
    CEIL_HGT  -6.5;
    FLOOR_TEX TrackTex;
    CEIL_TEX  Wct02Tex;
    FLAGS     CEIL_DESCEND;
    AMBIENT   -0.1;
}

REGION Trackf2Rgn
{
    FLOOR_HGT -18;
    CEIL_HGT  -6;
    FLOOR_TEX TrackTex;
    CEIL_TEX  Wct02Tex;
    AMBIENT   0.5;
}
REGION Trackf1Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW     Trackf2Rgn;
    AMBIENT   0.5;
}

/////////////////////////////////////////////////////////////////
// Inner Circle
/////////////////////////////////////////////////////////////////
REGION InnerCenterRgn
{
    FLOOR_HGT -30;
    CEIL_HGT  18;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Cmt01Tex;
    AMBIENT   0.9;
    IF_ENTER  FinishPlayer;
}
REGION InnerParapetf2Rgn
{
    FLOOR_HGT -12;
    CEIL_HGT  -6;
    FLOOR_TEX Wmt01Tex;
    CEIL_TEX  Wct02Tex;
    AMBIENT   0.7;
}
REGION InnerParapetf1Rgn
{
    FLOOR_HGT 2.8;
    CEIL_HGT  9;
    FLOOR_TEX Wmt01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW     InnerParapetf2Rgn;
    AMBIENT   0.7;
}

/////////////////////////////////////////////////////////////////
// Back
/////////////////////////////////////////////////////////////////
REGION BackRgn
{
    FLOOR_HGT -15;
    CEIL_HGT  0;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    
    AMBIENT   0.5;
    FLAGS		FLAG1;
}
REGION BackParaptRgn
{
    FLOOR_HGT -12.5;
    CEIL_HGT  0;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX  Wct02Tex;
    
    AMBIENT   0.5;
}

REGION BackHoleRgn
{
    FLOOR_HGT -20;
    CEIL_HGT  0;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX  Wct02Tex;
    IF_ENTER  FinishPlayer;    
    AMBIENT   0.4;
}

REGION BackTiltedRgn
{
    FLOOR_HGT -15;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    FLAGS     CEIL_DESCEND;
    AMBIENT   0.5;
    FLAGS		FLAG1;
}
REGION BackBorderRgn
{
    FLOOR_HGT -15;
    CEIL_HGT 0;
    FLOOR_TEX StripTex;
    CEIL_TEX  Wct02Tex;
    FLOOR_OFFS_Y 16;
    AMBIENT 0.5;
    FLAGS		FLAG1;
}

REGION BackBorderTiltedRgn
{
    FLOOR_HGT -15;
    CEIL_HGT  9;
    FLOOR_TEX StripTex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
    FLAGS     CEIL_DESCEND;
    FLOOR_OFFS_Y 16;
    FLAGS		FLAG1;    
}
REGION BackTrackRgn
{
    FLOOR_HGT -18;
    CEIL_HGT  0;
    FLOOR_TEX TrackTex;
    CEIL_TEX  Wct02Tex;
    AMBIENT   0.5;
}
REGION BackTrackTiltedRgn
{
    FLOOR_HGT -18;
    CEIL_HGT  9;
    FLOOR_TEX TrackTex;
    CEIL_TEX  Wct02Tex;
    FLAGS     CEIL_DESCEND;
    AMBIENT   0.5;
}

/////////////////////////////////////////////////////////////////
// North and South Wings
/////////////////////////////////////////////////////////////////
REGION WingRgn
{
    FLOOR_HGT -15;
    CEIL_HGT  -6;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    
    AMBIENT   0.5;
}
REGION WingTiltedRgn
{
    FLOOR_HGT -15;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
        FLAGS     CEIL_DESCEND;
    AMBIENT   0.5;
}
REGION WingHallf2Rgn
{
    FLOOR_HGT -15;
    CEIL_HGT  -6;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    AMBIENT   0.5;
}

REGION WingHallf1Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW     WingHallf2Rgn;
    //GENIUS    DomusGeniusTng;
    AMBIENT   0.5;
}

/////////////////////////////////////////////////////////////////
// Steps
/////////////////////////////////////////////////////////////////
REGION StpAbove01LspRgn  //regiao p/ mostrar o landscape acima da lage 
             //e esconder o landscape no espelho do degrau
{
    FLOOR_HGT  1;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Cce01Tex;
    AMBIENT   0.7;
}


REGION StpAbove01Rgn
{
    FLOOR_HGT  1;
    CEIL_HGT  19;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    AMBIENT   0.7;
}
REGION StpAbove02Rgn
{
    FLOOR_HGT  2;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}
REGION StpAbove03Rgn
{
    FLOOR_HGT  3;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}
REGION StpAbove04Rgn
{
    FLOOR_HGT  4;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}
REGION StpAbove05Rgn
{
    FLOOR_HGT  5;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}

REGION StpAbove06Rgn
{
    FLOOR_HGT  6;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}
REGION StpAbove07Rgn
{
    FLOOR_HGT  7;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}
REGION StpAbove08Rgn
{
    FLOOR_HGT  8;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}
REGION StpAbove09Rgn
{
    FLOOR_HGT  9;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}

REGION StpAbove10Rgn
{
    FLOOR_HGT  10;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}
REGION StpAbove11Rgn
{
    FLOOR_HGT  11;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}
REGION StpAbove12Rgn
{
    FLOOR_HGT  12;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}
REGION StpAbove13Rgn
{
    FLOOR_HGT  13;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}
REGION StpAbove14Rgn
{
    FLOOR_HGT  14;
    CEIL_HGT  45;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cce01Tex;
    AMBIENT 0.7;
}

//******************************below

REGION StpBelow01Rgn
{
    FLOOR_HGT -1;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    AMBIENT   0.5;
}
REGION StpBelow02Rgn
{
    FLOOR_HGT -2;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}
REGION StpBelow03Rgn
{
    FLOOR_HGT -3;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}
REGION StpBelow04Rgn
{
    FLOOR_HGT -4;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}
REGION StpBelow05Rgn
{
    FLOOR_HGT -5;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}
REGION StpBelow06Rgn
{
    FLOOR_HGT -6;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}
REGION StpBelow07Rgn
{
    FLOOR_HGT -7;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}
REGION StpBelow08Rgn
{
    FLOOR_HGT -8;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}
REGION StpBelow09Rgn
{
    FLOOR_HGT -9;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}
REGION StpBelow10Rgn
{
    FLOOR_HGT -10;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}
REGION StpBelow11Rgn
{
    FLOOR_HGT -11;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}

REGION StpBelow12Rgn
{
    FLOOR_HGT -12;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}
REGION StpBelow13Rgn
{
    FLOOR_HGT -13;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}

REGION StpBelow14Rgn
{
    FLOOR_HGT -14;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}

/////////////////////////////////////////////////////////////////
// Parapets
/////////////////////////////////////////////////////////////////
REGION Parapetf2Rgn
{
    FLOOR_HGT -15;
    CEIL_HGT  -6;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    
    AMBIENT 0.5;
    FLAGS		FLAG1;
}
REGION Parapetf1Rgn
{
    FLOOR_HGT 2.4;
    CEIL_HGT  9;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW Parapetf2Rgn;
    AMBIENT 0.5;
}
REGION TrkParapetf2Rgn
{
    FLOOR_HGT -18;
    CEIL_HGT  -6;
    FLOOR_TEX TrackTex;
    CEIL_TEX  Wct02Tex;
    AMBIENT 0.5;
}
REGION TrkParapetf1Rgn
{
    FLOOR_HGT 2.4;
    CEIL_HGT  9;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW TrkParapetf2Rgn;
    AMBIENT 0.5;
    
}

REGION StpParapetRgn
{
    FLOOR_HGT 2.4;
    CEIL_HGT  9;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX  Wct02Tex;
    FLAGS FLOOR_ASCEND;
    AMBIENT 0.5;
}
/////////////////////////////////////////////////////////////////
// Corridors
/////////////////////////////////////////////////////////////////
REGION CorredorRgn
{
    FLOOR_HGT -11;
    CEIL_HGT  -3;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cct01Tex;
    
    AMBIENT 0.3;
}
REGION PanelRoomRgn
{
    FLOOR_HGT -11;
    CEIL_HGT  -3;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cct01Tex;
    AMBIENT 0.45;
}
REGION PanelRgn
{
    FLOOR_HGT -5;
    CEIL_HGT  -3;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cct01Tex;
    AMBIENT 0.45;
}

REGION PanelRoomLampRgn
{
    FLOOR_HGT -11;
    CEIL_HGT  -2.5;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX CMt02Tex;
    AMBIENT 0.5;
}
REGION CorredorStartRgn
{
    FLOOR_HGT -11;
    CEIL_HGT  -3;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cct01Tex;
    IF_ENTER setMibInt;
    AMBIENT 0.3;
}
REGION CorreRampRgn
{
    FLOOR_HGT -11;
    CEIL_HGT  -3;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Cct01Tex;
    FLAGS  FLOOR_ASCEND;
    AMBIENT 0.3;
}

REGION CorrePptRgn
{
    FLOOR_HGT -8.5;
    CEIL_HGT  -6;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX Cct01Tex;
    AMBIENT 0.5;
}

/////////////////////////////////////////////////////////////////
// Rails
/////////////////////////////////////////////////////////////////
REGION DoubleStripRgn
{
    FLOOR_HGT -15;
    CEIL_HGT  9;
    FLOOR_TEX StripTex;
    CEIL_TEX  Wct02Tex;
    AMBIENT 0.5;
    FLOOR_OFFS_Y 16;
    FLAGS		FLAG1;
}
REGION Hallf2StripRgn
{
    FLOOR_HGT -15;
    CEIL_HGT  -6;
    FLOOR_TEX StripTex;
    CEIL_TEX  Wct02Tex;
    AMBIENT   0.5;
    FLOOR_OFFS_Y 16;
    FLAGS		FLAG1;
}

REGION Hallf1StripRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW     Hallf2StripRgn;
    
    AMBIENT 0.5;
}
REGION Parapet2StripRgn
{
    FLOOR_HGT -15;
    CEIL_HGT  -6;
    FLOOR_TEX StripTex;
    CEIL_TEX  Wct02Tex;
    AMBIENT   0.5;
    FLOOR_OFFS_Y 16;
}

REGION Parapetf1StripRgn
{
    FLOOR_HGT 2.4;
    CEIL_HGT  9;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW     Parapet2StripRgn;
    
    AMBIENT 0.5;
}



/////////////////////////////////////////////////////////////////
// Train
/////////////////////////////////////////////////////////////////
REGION Train02Rgn
{
    FLOOR_HGT -9.5;
    CEIL_HGT  -6;
    FLOOR_TEX TrainTopTex;
    CEIL_TEX  Wct02Tex;
    AMBIENT 0.5;
    FLOOR_OFFS_Y    32;
}
REGION Train01Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW     Train02Rgn;
    AMBIENT 0.5;
}

REGION TrainDoubleRgn
{
    FLOOR_HGT -9.5;
    CEIL_HGT  9;
    FLOOR_TEX TrainTopTex;
    CEIL_TEX  Wct02Tex;
    
    AMBIENT 0.5;
}

/////////////////////////////////////////////////////////////////
// ACTIONS
/////////////////////////////////////////////////////////////////

ACTION PlayCall {
   SET_ALL HallF1Rgn.IF_ENTER, NULL;
   WAITT 160;
   PLAY_SOUND SeCall01Snd, 0.5;
}

ACTION FinishPlayer {
   SET  PLAYER_HEALTH, 0.5;
   CALL HitPlayer;
}
/* REGIOÕES NÃO USADAS 
REGION HoleParapRgn
{
    FLOOR_HGT 2.4;
    CEIL_HGT  24;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX  Wct02Tex;
    AMBIENT 0.5;
}
REGION InnerTrackRgn
{
    FLOOR_HGT -30;
    CEIL_HGT  9;
    FLOOR_TEX TrackTex;
    CEIL_TEX  CenterDomusTex;
    AMBIENT   0.7;
}
REGION HallBorderf2Rgn
{
    FLOOR_HGT -15;
    CEIL_HGT  -6;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX Wct02Tex;
    AMBIENT 0.5;
}
REGION HallBorderf1Rgn
{
    FLOOR_HGT 0;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW     HallBorderf2Rgn;
    GENIUS    DomusGeniusTng;
    AMBIENT 0.5;
}
REGION Hallf2SeparationRgn
{
    FLOOR_HGT -15;
    CEIL_HGT  -6;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    AMBIENT   0.5;
}

REGION Hallf1SeparationRgn
{
    FLOOR_HGT 0;
    CEIL_HGT  9;
    FLOOR_TEX Frb01Tex;
    CEIL_TEX  Wct02Tex;
    BELOW     Hallf2SeparationRgn;
    AMBIENT 0.5;
}
REGION GapRgn
{
    FLOOR_HGT -18;
    CEIL_HGT  9;
    FLOOR_TEX Cct01Tex;
    CEIL_TEX  Frb01Tex;
    AMBIENT 0.6;
}

*/