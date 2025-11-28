REGION FinalRoomRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  8;
	FLOOR_TEX Frb01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.5;
	IF_ENTER  EnterFinalRoom;
}
REGION SecRoomRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  8;
	FLOOR_TEX Frb01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.5;
}
REGION SecRoomWindowRgn
{
	FLOOR_HGT 3;
	CEIL_HGT  5;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.5;
}
REGION SecCorridorRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  8.5;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.5;
}
REGION SecLampRgn
{
	FLOOR_HGT 0;
	CEIL_HGT  8;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  CMt02Tex;
	AMBIENT 0.55;
}

REGION SecFoldedRgn
{
	FLOOR_HGT -6;
	CEIL_HGT  0;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.6;
	FLAGS FLOOR_DESCEND,CEIL_DESCEND;
}

REGION SecTunelRgn
{
	FLOOR_HGT -6;
	CEIL_HGT 0;
	FLOOR_TEX Frb01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.4;
}
REGION SecTrilhosRgn
{
	FLOOR_HGT -18;
	CEIL_HGT 8;
	FLOOR_TEX TrackTex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
}
REGION SecCanoA2Rgn
{
	FLOOR_HGT -18;
	CEIL_HGT -6;
	FLOOR_TEX TrackTex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
}
REGION SecCanoA1Rgn
{
	FLOOR_HGT -5;
	CEIL_HGT 8;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	BELOW SecCanoA2Rgn;
}
REGION SecCanoB2Rgn
{
	FLOOR_HGT -18;
	CEIL_HGT -2;
	FLOOR_TEX TrackTex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
}
REGION SecCanoB1Rgn
{
	FLOOR_HGT -1;
	CEIL_HGT 8;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.2;
	BELOW SecCanoB2Rgn;
}

REGION SecCanoC2Rgn
{
	FLOOR_HGT -18;
	CEIL_HGT 3;
	FLOOR_TEX TrackTex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
}
REGION SecCanoC1Rgn
{
	FLOOR_HGT 4;
	CEIL_HGT 8;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	BELOW SecCanoC2Rgn;
}
REGION SecCrossAB3Rgn
{
	FLOOR_HGT -18;
	CEIL_HGT -6;
	FLOOR_TEX TrackTex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	
}
REGION SecCrossAB2Rgn
{
	FLOOR_HGT -5;
	CEIL_HGT -2;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	BELOW SecCrossAB3Rgn;
}
REGION SecCrossAB1Rgn
{
	FLOOR_HGT -1;
	CEIL_HGT 8;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	BELOW SecCrossAB2Rgn;
}
REGION SecCrossAC3Rgn
{
	FLOOR_HGT -18;
	CEIL_HGT -6;
	FLOOR_TEX TrackTex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	
}
REGION SecCrossAC2Rgn
{
	FLOOR_HGT -5;
	CEIL_HGT 3;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	BELOW SecCrossAC3Rgn;
}
REGION SecCrossAC1Rgn
{
	FLOOR_HGT 4;
	CEIL_HGT 8;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	BELOW SecCrossAC2Rgn;
}


REGION SecBridge2Rgn
{
	FLOOR_HGT -18;
	CEIL_HGT -2;
	FLOOR_TEX TrackTex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	
}
REGION SecBridge1Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT 8;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	BELOW SecBridge2Rgn;
}
REGION SecBridgeA3Rgn
{
	FLOOR_HGT -18;
	CEIL_HGT -6;
	FLOOR_TEX TrackTex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	
}

REGION SecBridgeA2Rgn
{
	FLOOR_HGT -5;
	CEIL_HGT -2;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	BELOW SecBridgeA3Rgn;
}
REGION SecBridgeA1Rgn
{
	FLOOR_HGT 0;
	CEIL_HGT 8;
	FLOOR_TEX Cct01Tex;
	CEIL_TEX  Cct01Tex;
	AMBIENT 0.1;
	BELOW SecBridgeA2Rgn;
}

//////////////////////////////////////////////////////////////
// Actions
//////////////////////////////////////////////////////////////

ACTION EnterFinalRoom {
	SET_ALL FinalRoomRgn.IF_ENTER, NULL;
	CALL ShowPDABriefing;
}
