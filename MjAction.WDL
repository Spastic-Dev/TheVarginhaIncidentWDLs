
ACTION fallInDepot
{	ADD  PLAYER_X, 598;
	ADD  PLAYER_Y, -20;
      	ADD  PLAYER_Z, 12;
	SET_ALL DrklFallAct.INVISIBLE,0;
	SET_ALL TropFallAct.INVISIBLE,0;
	SET DpArriveRgn.IF_ENTER,NULL;
	SET auxRgn, MBCorridor1Rgn.BELOW ;
	SET auxRgn.IF_ENTER,setArrive;
	SET auxRgn, NULL ;
}
ACTION setArrive
{
	SET auxRgn, MBCorridor1Rgn.BELOW ;
	SET auxRgn.IF_ENTER,NULL;
	SET DpArriveRgn.IF_ENTER,setWave1;
	SET auxRgn, NULL ;
}
ACTION EndPhase {
	IF_EQUAL EACH_SEC.3, EndPhase;
		GOTO cont;
	SET MY.IF_NEAR, NULL;
	SET EACH_SEC.3, EndPhase;
cont:
	IF_ABOVE SHOT_SOUND_ON, 0;
		END;
	CALL ShowPDABriefing;
	SET EACH_SEC.3, NULL;
}

// **** sea operations
ACTION dive
{
      ADD  PLAYER_X, 1568;
      LOCATE;
      SET RENDER_MODE,2;
      BRANCH regio_dive;
}
ACTION arise
{
      ADD  PLAYER_X, -1568;
      LOCATE;
      SET RENDER_MODE,2;
      BRANCH regio_arise;
}
