/////////////////////////////////////////////////////////////////////////
// 'Regional' Special Actions
/////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////
// Sounds
/////////////////////////////////////////////////////////////////////////
SOUND Lift01Snd, <lift01.wav>;
SOUND RegCal01Snd, <RegCal01.wav>;
SOUND RegCal02Snd, <RegCal02.wav>;
/////////////////////////////////////////////////////////////////////////
// Actions
/////////////////////////////////////////////////////////////////////////
ACTION PlayCall
{
	IF_ABOVE THERE.SKILL4,3;
		END;
	
	IF_EQUAL THERE.FLAG8,1;
		GOTO nocall;
	SET THERE.FLAG8,1;
	ADD THERE.SKILL4,1;
	IF_ABOVE RANDOM,0.5;
		GOTO call2;
	WAIT 8;
	PLAY_SOUND  RegCal01Snd,0.5;
	END;
call2:
	WAIT 8;
	PLAY_SOUND  RegCal02Snd,0.5;
	END;
nocall:
	SET THERE.FLAG8,0;
}
ACTION lift_start
{
	SET THERE.EACH_TICK, lift_down;
	IF_BELOW THERE.FLOOR_HGT,THERE.SKILL4;
		SET THERE.EACH_TICK, lift_up ;
}

ACTION call_lift_down
{
	IF_EQUAL THERE.FLOOR_HGT,THERE.SKILL4; 	// call only when it's up
		SET THERE.EACH_TICK, lift_down;
	SET THERE.DO, NULL;
}

ACTION lift_up
{
	SET lift_speed,THERE.SKILL6;
	RULE lift_speed = TIME_CORR*lift_speed;
	ADD THERE.FLOOR_HGT,lift_speed;
	IF_EQUAL THERE.HERE,1;
		RULE PLAYER_Z = PLAYER_Z +0.5*lift_speed;
	IF_EQUAL THERE.VISIBLE,1;
		SET RENDER_MODE, 1;
	PLAY_SOUND Lift01Snd, 0.3;
	IF_BELOW THERE.FLOOR_HGT, THERE.SKILL4;
		END;
	SET THERE.FLOOR_HGT, THERE.SKILL4;
	SET THERE.EACH_TICK, NULL;
}
ACTION lift_down
{
	SET lift_speed,THERE.SKILL6;
	RULE lift_speed = -TIME_CORR*lift_speed;
	ADD THERE.FLOOR_HGT,lift_speed;
	IF_EQUAL THERE.HERE,1;
		RULE PLAYER_Z = PLAYER_Z +0.8*lift_speed;
	IF_EQUAL THERE.VISIBLE,1;
		SET RENDER_MODE, 1;
	PLAY_SOUND Lift01Snd, 0.3;
	IF_ABOVE THERE.FLOOR_HGT, THERE.SKILL3;
		END;
	SET THERE.FLOOR_HGT, THERE.SKILL3;
	SET THERE.EACH_TICK, NULL;

}
ACTION TrooperMadness {
	SET_ALL TropAct.FLAG2, 1;
	SET_ALL TropFloor1Act.FLAG2, 1;
	SET_ALL TropFloor2Act.FLAG2, 1;
}
//***********Texture Doors
ACTION TextDoorOpen
{
	SET MY.DIST, 12;
	SET MY.TRANSPARENT , 1;
        SET MY.PLAY, 1;
	SET MY.EACH_CYCLE, TextDoorCheckOpen;
}

ACTION TextDoorCheckOpen
{
	SET MY.PASSABLE, 1;
}

ACTION TextDoorClose
{
	SET MY.DIST, 10;
	SET MY.PASSABLE, 0;
	SET MY.PLAY, 1;
	SET MY.EACH_CYCLE, TextDoorCheckClose;
}
ACTION TextDoorCheckClose
{
	SET MY.TRANSPARENT, 0;
}
ACTION OpenUtiLift
{
	SET MY.TEXTURE, DAl02OpenTex;
	PLAY_SOUND Door04Snd, 0.5, MY;
	BRANCH TextDoorOpen;
}
ACTION CloseUtiLift
{
	SET MY.TEXTURE, DAl02CloseTex;
	PLAY_SOUND Door04Snd, 0.5, MY;
	BRANCH TextDoorClose;
}

