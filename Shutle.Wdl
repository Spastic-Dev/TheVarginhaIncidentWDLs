// seting is in startlevel action
//SET shutleActionWay1,ShutleParam1; // to catedral
//SET shutleActionWay2,ShutleParam2; // to hangar
// seting is in sdrgn.wdl
// ShutleDoorRgn.EACH_TICK,ShutleParam1;
//ShutleGeniusTng.FLAG1 shutle on/off
//ShutleGeniusTng.FLAG2 way choice
//ShutleGeniusTng.FLAG3 atrack sound was played
//ShutleGeniusTng.FLAG4 way was chose

ACTION setShutleOn
{
	IF_EQUAL ShutleGeniusTng.FLAG4,0; 
		GOTO Message;
	IF_EQUAL ShutleGeniusTng.FLAG1,1; // FLAG1 -> shutle on/off
		END;
	SET ShutleOnOffWall.TEXTURE,WMt19OnTex;
	SET ShutleRgn.EACH_TICK,CloseShutleDoor;
	SET ShutleGeniusTng.FLAG1,1;
	SET WALK_PERIOD, 0;
	
	IF_EQUAL ShutleGeniusTng.FLAG2,0; 
		SET ShutleDoorRgn.EACH_TICK,shutleActionWay2;
	IF_EQUAL ShutleGeniusTng.FLAG2,1; 
		SET ShutleDoorRgn.EACH_TICK,shutleActionWay1;
	END;
	
Message:
	SET     MESSAGE_TEXT, Wrn20Str;
    	BRANCH  DisplayMessage;
}

ACTION CloseShutleDoor
{
	ADD ShutleDoorRgn.CEIL_HGT, -0.1;
	IF_BELOW ShutleDoorRgn.CEIL_HGT, ShutleRgn.FLOOR_HGT;
		GOTO EndClose;
	END;
EndClose:
	IF_NEQUAL HERE,ShutleRgn;
		GOTO abort;
	SET ShutleRgn.AMBIENT, 1;
	SET_ALL ShutleDoorWall.PASSABLE,0;
	SET ShutleRgn.EACH_TICK,ShutleGoing;
	END;
abort:
	SET ShutleDoorRgn.EACH_TICK,NULL;
	SET ShutleRgn.EACH_TICK,OpenShutleDoor;
}
ACTION ShutleGoing
{
	ADD PLAYER_Z,vz;
	ADD ShutleRgn.FLOOR_HGT, vz;
	ADD ShutleWindowRgn.FLOOR_HGT, vz;
	
	ADD ShutleRgn.CEIL_HGT, vz;
	ADD ShutleWindowRgn.CEIL_HGT, vz;

	SHIFT ShutleRgn,vx, vy;
	SHIFT ShutleBorderRgn,vx, vy;
	SHIFT ShutleBorder2Rgn,vx, vy;
	SHIFT ShutleWindowRgn,vx, vy;
	SHIFT ShutleDoorRgn,vx, vy;

	ADD ShutleRgn.FLOOR_OFFS_X, vxFloor;
	ADD ShutleWindowRgn.FLOOR_OFFS_X, vxFloor;
	
	ADD ShutleRgn.CEIL_OFFS_X,vxCeil;
	ADD ShutleWindowRgn.CEIL_OFFS_X, vxCeil;

	ADD ShutleRgn.FLOOR_OFFS_Y, vyFloor;
	ADD ShutleWindowRgn.FLOOR_OFFS_Y, vyFloor;
	
	ADD ShutleRgn.CEIL_OFFS_Y,vyCeil;
	ADD ShutleWindowRgn.CEIL_OFFS_Y,vyCeil;

	RULE ShutleGeniusTng.X = ( Shutle1Wall.X1 + Shutle2Wall.X1)/2;
	RULE ShutleGeniusTng.Y = ( Shutle1Wall.Y1 + Shutle2Wall.Y1)/2;

	ROTATE ShutleRgn, vr;
	ROTATE ShutleBorderRgn, vr;
	ROTATE ShutleBorder2Rgn, vr;
	ROTATE ShutleWindowRgn, vr;
	ROTATE ShutleDoorRgn, vr;

	ADD ShutleRgn.FLOOR_ANGLE, vr;
	ADD ShutleWindowRgn.FLOOR_ANGLE, vr;
	
	ADD ShutleRgn.CEIL_ANGLE, vr;
	ADD ShutleWindowRgn.CEIL_ANGLE, vr;
	SET RENDER_MODE,1;
}

ACTION setShutleWay
{
	IF_EQUAL ShutleGeniusTng.FLAG1,1;
		GOTO Message;
	SET ShutleGeniusTng.FLAG4,1; // o destino esta escolhido
	IF_EQUAL ShutleGeniusTng.FLAG2,1;// FLAG2 -> true way1, false way2
		GOTO SetWay2;
	PLAY_SOUND Card01Snd,0.3;
	SET ShutleWayWall.TEXTURE,shutleTextureWay1;
	SET ShutleGeniusTng.FLAG2,1;
	END;
SetWay2:
	PLAY_SOUND Card01Snd,0.3;
	SET ShutleGeniusTng.FLAG2,0;
	SET ShutleWayWall.TEXTURE,shutleTextureWay2;
	END;
Message:
	SET     MESSAGE_TEXT, Wrn21Str;
    	BRANCH  DisplayMessage;
}

ACTION ShutleParam1 // port to catedral
{
	IF_EQUAL ShutleGeniusTng.FLAG1,0; // FLAG1 -> shutle on/off
		END;
	IF_BELOW ShutleGeniusTng.X,-414;
		GOTO FaseEnd;
	IF_BELOW ShutleGeniusTng.X,-400;
		GOTO Fase7;
	IF_BELOW ShutleGeniusTng.X,-232;
		GOTO Fase6;
	IF_BELOW ShutleGeniusTng.X,-224;
		GOTO Fase5;
	IF_BELOW ShutleGeniusTng.X,-160;
		GOTO Fase4;
	IF_BELOW ShutleGeniusTng.X,-151;
		GOTO Fase3;
	IF_BELOW ShutleGeniusTng.X,-100;
		GOTO Fase2;
Fase1:
	IF_EQUAL ShutleGeniusTng.FLAG3,0; 
		GOTO Unlock;
	SET vx,-0.12209;
	SET vy,-0.25;
	SET vz,-0.03651;
	SET vr,-0.01826;
	SET vxCeil, 3.906; 
	SET vxFloor,3.906; 
	SET vyCeil,8;
	SET vyFloor,8;
	END;
Fase2:
	SET vx,-0.5;
	SET vy,0;
	SET vz,0.078431;
	SET vr,0;
	SET vxCeil,16; 
	SET vxFloor,16; 
	SET vyCeil,0;
	SET vyFloor,0;
	END;	
Fase3:
	SET vx,-0.5;
	SET vy,0.5;
	SET vz,-0.222222;
	SET vr,-0.04363;
	SET vxCeil,16; 
	SET vxFloor,16; 
	SET vyCeil,-16;
	SET vyFloor,-16;
	END;	
Fase4:
	SET vx,-0.5;
	SET vy,0.5;
	SET vz,-0.078125;
	SET vr,0;
	SET vxCeil,16; 
	SET vxFloor,16; 
	SET vyCeil,-16;
	SET vyFloor,-16;
	END;		
Fase5:
	SET vx,-0.5;
	SET vy,0.5;
	SET vz,-0.625;
	SET vr,0.04908;
	SET vxCeil,16; 
	SET vxFloor,16; 
	SET vyCeil,-16;
	SET vyFloor,-16;
	END;
Fase6:
	SET vx,-0.5;
	SET vy,0;
	SET vz,-0.238095;
	SET vr,0;
	SET vxCeil,16; 
	SET vxFloor,16; 
	SET vyCeil,0;
	SET vyFloor,0;
	END;
Fase7:
	SET vx,-0.25;
	SET vy,0.65;//0.6445;
	SET vz,0.154;
	SET vr,0.056099;
	SET vxCeil,8; 
	SET vxFloor,8; 
	SET vyCeil,-20.8;
	SET vyFloor,-20.8;
	END;
Unlock:
	PLAY_SOUND GShu01Snd,0.3;
	SET FMt06ShuTex.SOUND,GShu02Snd;
	SET ShutleGeniusTng.FLAG3,1;
	GOTO Fase1;	
Lock:
	PLAY_SOUND GShu01Snd,0.3;
	SET FMt06ShuTex.SOUND,NULL;
	SET ShutleGeniusTng.FLAG3,0;
FaseEnd:
	IF_EQUAL ShutleGeniusTng.FLAG3,1; 
		GOTO Lock;
	
	SET ShutleDoorRgn.FLOOR_HGT, -90;
	SET ShutleDoorRgn.CEIL_HGT, -89.9;

	SET ShutleRgn.FLOOR_HGT, -90;
	SET ShutleWindowRgn.FLOOR_HGT, -87.5;
	
	SET ShutleRgn.CEIL_HGT, -84;
	SET ShutleWindowRgn.CEIL_HGT, -85;
	
	// ajuste pos final
	RULE vx =  -414 - ShutleGeniusTng.X;
	RULE vy =  36 - ShutleGeniusTng.y;
	
	SET ShutleGeniusTng.X,-414;
	SET ShutleGeniusTng.y,36;
	SET shutleActionWay1,ShutleParam3; // catedral to port
	SET shutleActionWay2,ShutleParam4; // catedral to hangar
	SET shutleTextureWay1, WMt19Way1Tex;//port
	SET shutleTextureWay2, WMt19Way2Tex;//hangar
	SET ShutleWayWall.TEXTURE,WMt19Way3Tex;//catedral
	CALL stopSeting;
//*******************************************
	SET ShutleRgn.EACH_TICK,OpenShutleDoor;
	SET ShutleDoorRgn.EACH_TICK,NULL;		
}
ACTION ShutleParam2 // port to Hangar
{
	IF_EQUAL ShutleGeniusTng.FLAG1,0; // FLAG1 -> shutle on/off
		END;
	IF_BELOW ShutleGeniusTng.y,-92.5;
		GOTO FaseEnd;
	IF_BELOW ShutleGeniusTng.y,-81;
		GOTO Fase3;
	IF_BELOW ShutleGeniusTng.y,-76;
		GOTO Fase2;
Fase1:
	IF_EQUAL ShutleGeniusTng.FLAG3,0; 
		GOTO Unlock;
	SET vx,-0.15909;
	SET vy,-0.25;
	SET vz,0;
	SET vr,-0.023799;
	SET vxCeil, 5.0908; 
	SET vxFloor,5.0908; 
	SET vyCeil,8;
	SET vyFloor,8;
	END;
Fase2:
	SET vx,-0.43;//-0.5;
	SET vy,-0.025; //-0.0290697;
	SET vz,0;
	SET vr,0;
	SET vxCeil,13.76; 
	SET vxFloor,13.76; 
	SET vyCeil,0.8;
	SET vyFloor,0.8;
	END;	
Fase3:
	SET vx, 0.336956;
	SET vy,-0.25;
	SET vz,0;
	SET vr,0;
	SET vxCeil,-10.7825; 
	SET vxFloor,-10.7825; 
	SET vyCeil,8;
	SET vyFloor,8;
	END;
Unlock:
	PLAY_SOUND GShu01Snd,0.3;
	SET FMt06ShuTex.SOUND,GShu02Snd;
	SET ShutleGeniusTng.FLAG3,1;
	GOTO Fase1;	
Lock:
	PLAY_SOUND GShu01Snd,0.3;
	SET FMt06ShuTex.SOUND,NULL;
	SET ShutleGeniusTng.FLAG3,0;
FaseEnd:
	IF_EQUAL ShutleGeniusTng.FLAG3,1; 
		GOTO Lock;
	
	SET ShutleDoorRgn.FLOOR_HGT, 0;
	SET ShutleDoorRgn.CEIL_HGT, 0.1;

	SET ShutleRgn.FLOOR_HGT, 0;
	SET ShutleWindowRgn.FLOOR_HGT, 2.5;
	
	SET ShutleRgn.CEIL_HGT, 6;
	SET ShutleWindowRgn.CEIL_HGT, 5;
	
	// ajuste pos final
	RULE vx =  -170.5 - ShutleGeniusTng.X;
	RULE vy =  -92.5 - ShutleGeniusTng.y;
	
	SET ShutleGeniusTng.X,-170.5;
	SET ShutleGeniusTng.y,-92.5;
	SET shutleActionWay1,ShutleParam5;// hangar to port
	SET shutleActionWay2,ShutleParam6;// hangar to catedral
	SET shutleTextureWay1, WMt19Way1Tex;// port
	SET shutleTextureWay2, WMt19Way3Tex;// catedral
	SET ShutleWayWall.TEXTURE,WMt19Way2Tex;// hangar
	CALL stopSeting;
//*******************************************
	SET ShutleRgn.EACH_TICK,OpenShutleDoor;
	SET ShutleDoorRgn.EACH_TICK,NULL;
}
ACTION ShutleParam3 // Catedral to port
{
	IF_EQUAL ShutleGeniusTng.FLAG1,0; // FLAG1 -> shutle on/off
		END;
	IF_ABOVE ShutleGeniusTng.X,-89.5;
		GOTO FaseEnd;
	IF_ABOVE ShutleGeniusTng.X,-100;
		GOTO Fase8;
	IF_ABOVE ShutleGeniusTng.X,-176;
		GOTO Fase7;
	IF_ABOVE ShutleGeniusTng.X,-192;
		GOTO Fase6;
	IF_ABOVE ShutleGeniusTng.X,-204;
		GOTO Fase5;
	IF_ABOVE ShutleGeniusTng.X,-268;
		GOTO Fase4;
	IF_ABOVE ShutleGeniusTng.X,-276;
		GOTO Fase3;
	IF_ABOVE ShutleGeniusTng.X,-408;
		GOTO Fase2;
Fase1:
	IF_EQUAL ShutleGeniusTng.FLAG3,0; 
		GOTO Unlock;
	SET vx,0.25;
	SET vy,0;
	SET vz,0;
	SET vr,-0.03272;
	SET vxCeil, -8; 
	SET vxFloor,-8; 
	SET vyCeil,0;
	SET vyFloor,0;
	END;
Fase2:
	SET vx,0.5;
	SET vy,-0.5;
	SET vz,0.473484;//;
	SET vr,0;
	SET vxCeil,-16; 
	SET vxFloor,-16; 
	SET vyCeil,16;
	SET vyFloor,16;
	END;	
Fase3:
	SET vx,0.5;
	SET vy,-0.5;
	SET vz,0;//0.5;
	SET vr,0.049087;
	SET vxCeil,-16; 
	SET vxFloor,-16; 
	SET vyCeil,16;
	SET vyFloor,16;
	END;	
Fase4:
	SET vx,0.5;
	SET vy,0;
	SET vz,0;
	SET vr,0;
	SET vxCeil,-16; 
	SET vxFloor,-16; 
	SET vyCeil,0;
	SET vyFloor,0;
	END;		
Fase5:
	SET vx,0.25;
	SET vy,0.25;
	SET vz, -0.3125;//0.73214285;
	SET vr, 0.016362;
	SET vxCeil,-8; 
	SET vxFloor,-8; 
	SET vyCeil,-8;
	SET vyFloor,-8;
	END;
Fase6:
	SET vx,0.25;
	SET vy,0.25;
	SET vz,-0.3125;//0.73214285;
	SET vr, -0.012271;
	SET vxCeil,-8; 
	SET vxFloor,-8; 
	SET vyCeil,-8;
	SET vyFloor,-8;
	END;
Fase7:
	SET vx,0.5;
	SET vy,0;
	SET vz,0;
	SET vr,0;
	SET vxCeil,-16; 
	SET vxFloor,-16; 
	SET vyCeil,0;
	SET vyFloor,0;
	END;
Fase8:
	SET vx,0.25;
	SET vy,0.392857;
	SET vz,0;
	SET vr,0.112199;
	SET vxCeil,-8; 
	SET vxFloor,-8; 
	SET vyCeil,-12.5696;
	SET vyFloor,-12.5696;

	END;

Unlock:
	PLAY_SOUND GShu01Snd,0.3;
	SET FMt06ShuTex.SOUND,GShu02Snd;
	SET ShutleGeniusTng.FLAG3,1;
	GOTO Fase1;	
Lock:
	PLAY_SOUND GShu01Snd,0.3;
	SET FMt06ShuTex.SOUND,NULL;
	SET ShutleGeniusTng.FLAG3,0;
FaseEnd:
	IF_EQUAL ShutleGeniusTng.FLAG3,1; 
		GOTO Lock;
	
	SET ShutleDoorRgn.FLOOR_HGT, 0;
	SET ShutleDoorRgn.CEIL_HGT, 0.1;

	SET ShutleRgn.FLOOR_HGT, 0;
	SET ShutleWindowRgn.FLOOR_HGT, 2.5;
	
	SET ShutleRgn.CEIL_HGT, 6;
	SET ShutleWindowRgn.CEIL_HGT, 5;
	
	// ajuste pos final
	RULE vx =  -89.5 - ShutleGeniusTng.X;
	RULE vy =  -59.5 - ShutleGeniusTng.y;
	
	SET ShutleGeniusTng.X,-89.5;
	SET ShutleGeniusTng.y,59.5;
	SET shutleActionWay1,ShutleParam1;// port to catedral
	SET shutleActionWay2,ShutleParam2;// port to hangar
	SET shutleTextureWay1, WMt19Way3Tex;// catedral
	SET shutleTextureWay2, WMt19Way2Tex;// hangar
	SET ShutleWayWall.TEXTURE,WMt19Way1Tex;// port
	CALL stopSeting;
//*******************************************
	SET ShutleRgn.EACH_TICK,OpenShutleDoor;
	SET ShutleDoorRgn.EACH_TICK,NULL;		
}
ACTION ShutleParam4 // Catedral  to Hangar
{
	IF_EQUAL ShutleGeniusTng.FLAG1,0; // FLAG1 -> shutle on/off
		END;
	IF_ABOVE ShutleGeniusTng.X,-170.5;
		GOTO FaseEnd;
	IF_ABOVE ShutleGeniusTng.X,-192;
		GOTO Fase6;
	IF_ABOVE ShutleGeniusTng.X,-204;
		GOTO Fase5;
	IF_ABOVE ShutleGeniusTng.X,-268;
		GOTO Fase4;
	IF_ABOVE ShutleGeniusTng.X,-276;
		GOTO Fase3;
	IF_ABOVE ShutleGeniusTng.X,-408;
		GOTO Fase2;
Fase1:
	IF_EQUAL ShutleGeniusTng.FLAG3,0; 
		GOTO Unlock;
	SET vx,0.25;
	SET vy,0;
	SET vz,0;
	SET vr,-0.03272;
	SET vxCeil, -8; 
	SET vxFloor,-8; 
	SET vyCeil,0;
	SET vyFloor,0;
	END;
Fase2:
	SET vx,0.5;
	SET vy,-0.5;
	SET vz,0.473484;
	SET vr,0;
	SET vxCeil,-16; 
	SET vxFloor,-16; 
	SET vyCeil,16;
	SET vyFloor,16;
	END;	
Fase3:
	SET vx,0.5;
	SET vy,-0.5;
	SET vz,0;
	SET vr,0.049087;
	SET vxCeil,-16; 
	SET vxFloor,-16; 
	SET vyCeil,16;
	SET vyFloor,16;
	END;	
Fase4:
	SET vx,0.5;
	SET vy,0;
	SET vz,0;
	SET vr,0;
	SET vxCeil,-16; 
	SET vxFloor,-16; 
	SET vyCeil,0;
	SET vyFloor,0;
	END;		
Fase5:
	SET vx,0.25;
	SET vy,0.25;
	SET vz, -0.261194;
	SET vr,  -0.023444;
	SET vxCeil,-8; 
	SET vxFloor,-8; 
	SET vyCeil,-8;
	SET vyFloor,-8;
	END;
Fase6:
	SET vx,0.25;
	SET vy,0;
	SET vz,-0.261194;
	SET vr, -0.023444;
	SET vxCeil,-8; 
	SET vxFloor,-8; 
	SET vyCeil,0;
	SET vyFloor,0;
	END;
Unlock:
	PLAY_SOUND GShu01Snd,0.3;
	SET FMt06ShuTex.SOUND,GShu02Snd;
	SET ShutleGeniusTng.FLAG3,1;
	GOTO Fase1;	
Lock:
	PLAY_SOUND GShu01Snd,0.3;
	SET FMt06ShuTex.SOUND,NULL;
	SET ShutleGeniusTng.FLAG3,0;
FaseEnd:
	IF_EQUAL ShutleGeniusTng.FLAG3,1; 
		GOTO Lock;
	
	SET ShutleDoorRgn.FLOOR_HGT, 0;
	SET ShutleDoorRgn.CEIL_HGT, 0.1;

	SET ShutleRgn.FLOOR_HGT, 0;
	SET ShutleWindowRgn.FLOOR_HGT, 2.5;
	
	SET ShutleRgn.CEIL_HGT, 6;
	SET ShutleWindowRgn.CEIL_HGT, 5;
	
	// ajuste pos final
	RULE vx =  -170.5 - ShutleGeniusTng.X;
	RULE vy =  -92.5 - ShutleGeniusTng.y;
	
	SET ShutleGeniusTng.X,-170.5;
	SET ShutleGeniusTng.y,-92.5;
	SET shutleActionWay1,ShutleParam5;// hangar to port
	SET shutleActionWay2,ShutleParam6;// hangar to catedral
	SET shutleTextureWay1, WMt19Way1Tex;// port
	SET shutleTextureWay2, WMt19Way3Tex;// catedral
	SET ShutleWayWall.TEXTURE,WMt19Way2Tex;// hangar
	CALL stopSeting;
//*******************************************
	SET ShutleRgn.EACH_TICK,OpenShutleDoor;
	SET ShutleDoorRgn.EACH_TICK,NULL;
}
ACTION ShutleParam5 // Hangar to port
{
IF_EQUAL ShutleGeniusTng.FLAG1,0; // FLAG1 -> shutle on/off
		END;
	IF_ABOVE ShutleGeniusTng.y,-59.5;
		GOTO FaseEnd;
	IF_ABOVE ShutleGeniusTng.y,-76;
		GOTO Fase3;
	IF_ABOVE ShutleGeniusTng.y,-81;
		GOTO Fase2;
Fase1:
	IF_EQUAL ShutleGeniusTng.FLAG3,0; 
		GOTO Unlock;
	SET vx,-0.336956;
	SET vy,0.25;
	SET vz, 0;
	SET vr,-0.068295;
	SET vxCeil, 10.7808; 
	SET vxFloor,10.7808; 
	SET vyCeil,-8;
	SET vyFloor,-8;
	END;
Fase2:
	SET vx,0.43;
	SET vy,0.025; 
	SET vz,0;
	SET vr,0;
	SET vxCeil,-13.76; 
	SET vxFloor,-13.76; 
	SET vyCeil,-0.8;
	SET vyFloor,-0.8;
	END;	
Fase3:
	SET vx, 0.15909;
	SET vy,0.25;
	SET vz,0;
	SET vr, -0.023799;
	SET vxCeil,-5.09088; 
	SET vxFloor,-5.09088; 
	SET vyCeil,-8;
	SET vyFloor,-8;
	END;
Unlock:
	PLAY_SOUND GShu01Snd,0.3;
	SET FMt06ShuTex.SOUND,GShu02Snd;
	SET ShutleGeniusTng.FLAG3,1;
	GOTO Fase1;	
Lock:
	PLAY_SOUND GShu01Snd,0.3;
	SET FMt06ShuTex.SOUND,NULL;
	SET ShutleGeniusTng.FLAG3,0;
FaseEnd:
	IF_EQUAL ShutleGeniusTng.FLAG3,1; 
		GOTO Lock;
	
	SET ShutleDoorRgn.FLOOR_HGT, 0;
	SET ShutleDoorRgn.CEIL_HGT, 0.1;

	SET ShutleRgn.FLOOR_HGT, 0;
	SET ShutleWindowRgn.FLOOR_HGT, 2.5;
	
	SET ShutleRgn.CEIL_HGT, 6;
	SET ShutleWindowRgn.CEIL_HGT, 5;
	
	// ajuste pos final
	RULE vx =-89.5 - ShutleGeniusTng.X;
	RULE vy = -59.5 - ShutleGeniusTng.y;
	
	SET ShutleGeniusTng.X,-89.5;
	SET ShutleGeniusTng.y,-59.5;
	SET shutleActionWay1,ShutleParam1; // port to catedral
	SET shutleActionWay2,ShutleParam2; // port to hangar
	SET shutleTextureWay1, WMt19Way3Tex; // catedral
	SET shutleTextureWay2, WMt19Way2Tex; // hangar
	SET ShutleWayWall.TEXTURE,WMt19Way1Tex; // port
	CALL stopSeting;
//*******************************************
	SET ShutleRgn.EACH_TICK,OpenShutleDoor;
	SET ShutleDoorRgn.EACH_TICK,NULL;
}
ACTION ShutleParam6 // Hangar to Catedral
{

	IF_EQUAL ShutleGeniusTng.FLAG1,0; // FLAG1 -> shutle on/off
		END;
	IF_BELOW ShutleGeniusTng.X,-414;
		GOTO FaseEnd;
	IF_BELOW ShutleGeniusTng.X,-408;
		GOTO Fase6;
	IF_BELOW ShutleGeniusTng.X,-276;
		GOTO Fase5;
	IF_BELOW ShutleGeniusTng.X,-268;
		GOTO Fase4;
	IF_BELOW ShutleGeniusTng.X,-204;
		GOTO Fase3;
	IF_BELOW ShutleGeniusTng.X,-192;
		GOTO Fase2;
Fase1:
	IF_EQUAL ShutleGeniusTng.FLAG3,0; 
		GOTO Unlock;
	SET vx,-0.25;
	SET vy,0;
	SET vz,0;
	SET vr, 0.009132;
	SET vxCeil, 8; 
	SET vxFloor,8; 
	SET vyCeil,0;
	SET vyFloor,0;
	END;
Fase2:
	SET vx,-0.5;
	SET vy,-0.5;
	SET vz,0;
	SET vr, -0.032724;
	SET vxCeil,16; 
	SET vxFloor,16; 
	SET vyCeil,16;
	SET vyFloor,16;
	END;	
Fase3:
	SET vx,-0.5;
	SET vy,0;
	SET vz,-1;
	SET vr,0;
	SET vxCeil,16; 
	SET vxFloor,16; 
	SET vyCeil,0;
	SET vyFloor,0;
	END;	
Fase4:
	SET vx,-0.5;
	SET vy,0.5;
	SET vz,0;
	SET vr, -0.049087;
	SET vxCeil,16; 
	SET vxFloor,16; 
	SET vyCeil,-16;
	SET vyFloor,-16;
	END;		
Fase5:
	SET vx,-0.5;
	SET vy,0.5;
	SET vz, 0;
	SET vr, 0;
	SET vxCeil,16; 
	SET vxFloor,16; 
	SET vyCeil,-16;
	SET vyFloor,-16;

	END;
Fase6:
	SET vx,-0.25;
	SET vy,0;
	SET vz, 0.517857;
	SET vr, -0.098174;
	SET vxCeil,8; 
	SET vxFloor,8; 
	SET vyCeil,0;
	SET vyFloor,0;
	END;
Unlock:
	PLAY_SOUND GShu01Snd,0.3;
	SET FMt06ShuTex.SOUND,GShu02Snd;
	SET ShutleGeniusTng.FLAG3,1;
	GOTO Fase1;	
Lock:
	PLAY_SOUND GShu01Snd,0.3;
	SET FMt06ShuTex.SOUND,NULL;
	SET ShutleGeniusTng.FLAG3,0;
FaseEnd:
	IF_EQUAL ShutleGeniusTng.FLAG3,1; 
		GOTO Lock;
	
	SET ShutleDoorRgn.FLOOR_HGT, -90;
	SET ShutleDoorRgn.CEIL_HGT, -89.9;

	SET ShutleRgn.FLOOR_HGT, -90;
	SET ShutleWindowRgn.FLOOR_HGT, -87.5;
	
	SET ShutleRgn.CEIL_HGT, -84;
	SET ShutleWindowRgn.CEIL_HGT, -85;
	
	// ajuste pos final
	RULE vx =  -414 - ShutleGeniusTng.X;
	RULE vy =  36 - ShutleGeniusTng.y;
	
	SET ShutleGeniusTng.X,-414;
	SET ShutleGeniusTng.y,36;
	SET shutleActionWay1,ShutleParam3; // catedral to port
	SET shutleActionWay2,ShutleParam4; // catedral to hangar
	SET shutleTextureWay1, WMt19Way1Tex; // port
	SET shutleTextureWay2, WMt19Way2Tex; // hangar
	SET ShutleWayWall.TEXTURE,WMt19Way3Tex; // catedral
	CALL stopSeting;
//*******************************************
	SET ShutleRgn.EACH_TICK,OpenShutleDoor;
	SET ShutleDoorRgn.EACH_TICK,NULL;
}

ACTION OpenShutleDoor
{
	ADD ShutleDoorRgn.CEIL_HGT, 0.1;
	IF_ABOVE ShutleDoorRgn.CEIL_HGT, ShutleRgn.CEIL_HGT;
		GOTO EndDoor;
	END;
EndDoor:

	SET ShutleRgn.EACH_TICK,NULL;	
	//SET ShutleRgn.IF_ENTER,NULL;
	SET ShutleGeniusTng.FLAG1,0;
	SET_ALL ShutleDoorWall.PASSABLE,1;
	SET ShutleOnOffWall.TEXTURE,WMt19OffTex;
	SET ShutleGeniusTng.FLAG2,0; 
}
ACTION stopSeting
{
	
	SHIFT ShutleRgn,vx, vy;
	SHIFT ShutleBorderRgn,vx, vy;
	SHIFT ShutleBorder2Rgn,vx, vy;
	SHIFT ShutleWindowRgn,vx, vy;
	SHIFT ShutleDoorRgn,vx, vy;
	SET ShutleGeniusTng.FLAG4,0;
	SET vx,0;
	SET vy,0;
	SET vz,0;
	SET vr,0;
	SET vxCeil,0; 
	SET vxFloor,0; 
	SET vyCeil,0;
	SET vyFloor,0;
	SET WALK_PERIOD, 10;
	SET ShutleRgn.AMBIENT, 0.6;
}

