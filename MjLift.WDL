
REGION ToPanelRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt05SoundTex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.75;
       IF_ENTER toPanelLift; 
       IF_LEAVE setToPanel; 
	FLAGS SAVE_ALL, FLAG2;

}
ACTION toPanelLift
{
        SET ToSternWRgn.IF_ENTER,NULL; // prevents back transportation CRliftRgn
begin:     
        IF_EQUAL doorToMove,NULL; // the door is closed
             GOTO move;
        WAIT 2;
        GOTO begin;
move:
        IF_EQUAL THERE.HERE,0;
             END;
        SET doorToMove, Door4Rgn; // impede o acionamento da porta 
	//SET LiftSound,THERE.CEIL_TEX;
        //SET LiftSound.SVOL,0.5; // liga o som
	SET FMt05SoundTex.SVOL,0.5;
        WAIT 43; // duração da viagem

        //SET LiftSound.SVOL,0; // desliga o som
	SET FMt05SoundTex.SVOL,0;
        SET doorToMove, NULL; // libera a porta
        ADD  PLAYER_Y, 600;
        ADD  PLAYER_Z, -10;
        LOCATE;
        SET RENDER_MODE,2;
	STOP_SOUND;
}
ACTION setToPanel 
{
       SET THERE.IF_ENTER,toPanelLift;
}

//**************************************************************************
REGION ToEngineWRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt05SoundTex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.75;
       IF_ENTER toEngineWLift; 
       IF_LEAVE setToEngineW; 
	FLAGS SAVE_ALL, FLAG2;
}
ACTION toEngineWLift 
{
        SET ToSternERgn.IF_ENTER,NULL; // prevents back transportation
begin:     
        IF_EQUAL doorToMove,NULL; // the door is closed
             GOTO move;
        WAIT 2;
        GOTO begin;
move:
        IF_EQUAL THERE.HERE,0;
             END;
        SET doorToMove, Door4Rgn; // impede o acionamento da porta 
SET LiftSound,THERE.CEIL_TEX;
        SET LiftSound.SVOL,0.5; // liga o som
        WAIT 40; // duração da viagem
        SET LiftSound.SVOL,0; // desliga o som
        SET doorToMove, NULL; // libera a porta
        ADD  PLAYER_X,-698.5;
	  ADD  PLAYER_Y,-3;
        ADD  PLAYER_Z,-10;
        LOCATE;
        SET RENDER_MODE,2;
}

ACTION setToEngineW 
{
       SET THERE.IF_ENTER,toEngineWLift;
}

//**************************************************************************
REGION ToEngineERgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt05SoundTex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.75;
       IF_ENTER toEngineE;
       IF_LEAVE setToEngineE;
	FLAGS SAVE_ALL, FLAG2;
}
ACTION toEngineE 
{
        SET ToMidleWRgn.IF_ENTER,NULL; // prevents back transportation
begin:     
        IF_EQUAL doorToMove,NULL; // the door is closed
             GOTO move;
        WAIT 2;
        GOTO begin;
move:
        IF_EQUAL THERE.HERE,0;
             END;
        SET doorToMove, Door4Rgn; // impede o acionamento da porta 
SET LiftSound,THERE.CEIL_TEX;
        SET LiftSound.SVOL,0.5; // liga o som
        WAIT 30; // duração da viagem
        SET LiftSound.SVOL,0; // desliga o som
        SET doorToMove, NULL; // libera a porta
        ADD  PLAYER_X, -700;
        ADD PLAYER_Z, -10;
        LOCATE;
        SET RENDER_MODE,2;
}
ACTION setToEngineE 
{
       SET THERE.IF_ENTER,toEngineE;
}
//**************************************************************************
REGION ToDepotRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt05SoundTex;
	FLOOR_HGT 10;
	CEIL_HGT 18;
	AMBIENT 0.75;
       IF_ENTER ToDepotLift; 
       IF_LEAVE setToDepot; 
	FLAGS SAVE_ALL, FLAG2;
}
ACTION toDepotLift 
{
        SET ToMidleERgn.IF_ENTER,NULL; // prevents back transportation
begin:     
        IF_EQUAL doorToMove,NULL; // the door is closed
             GOTO move;
        WAIT 2;
        GOTO begin;
move:
        IF_EQUAL THERE.HERE,0;
             END;
        SET doorToMove, Door4Rgn; // impede o acionamento da porta 
SET LiftSound,THERE.CEIL_TEX;
        SET LiftSound.SVOL,0.5; // liga o som
        WAIT 43; // duração da viagem
        SET LiftSound.SVOL,0; // desliga o som
        SET doorToMove, NULL; // libera a porta
        ADD  PLAYER_X, 545.5;
	  ADD  PLAYER_Y, -0.5;
        ADD  PLAYER_Z, -10;
        LOCATE;
        SET RENDER_MODE,2;
}

ACTION setToDepot 
{
       SET THERE.IF_ENTER,toDepotLift;
}
//**************************************************************************
REGION ToControlRgn 
{
	FLOOR_TEX  FRb01Tex;
	CEIL_TEX FMt05SoundTex;
	FLOOR_HGT 20;
	CEIL_HGT 28;
	AMBIENT 0.75;
       IF_ENTER toControlLift; 
       IF_LEAVE setToControl; 
	FLAGS SAVE_ALL, FLAG2;
}
ACTION toControlLift 
{
        SET ToBridgeRgn.IF_ENTER,NULL; // prevents back transportation
begin:     
        IF_EQUAL doorToMove,NULL; // the door is closed
             GOTO move;
        WAIT 2;
        GOTO begin;
move:
        IF_EQUAL THERE.HERE,0;
             END;
        SET doorToMove, Door4Rgn; // impede o acionamento da porta 
SET LiftSound,THERE.CEIL_TEX;
        SET LiftSound.SVOL,0.5; // liga o som
        WAIT 32; // duração da viagem
        SET LiftSound.SVOL,0; // desliga o som
        SET doorToMove, NULL; // libera a porta
	  ADD  PLAYER_X, 695.5;
        ADD  PLAYER_Y,-14;
        ADD  PLAYER_Z, -20;
        LOCATE;
        SET RENDER_MODE,2;
}

ACTION setToControl
{
       SET THERE.IF_ENTER,toControlLift;
}

//**************************************************************************
REGION ToSternWRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt05SoundTex;
	FLOOR_HGT 0;
	CEIL_HGT 8;
	AMBIENT 0.75;
       IF_ENTER toSternWLift; 
       IF_LEAVE setToSternW; 
	FLAGS SAVE_ALL, FLAG2;
       
}
ACTION toSternWLift 
{
        SET ToPanelRgn.IF_ENTER,NULL; // prevents back transportation
begin:     
        IF_EQUAL doorToMove,NULL; // the door is closed
             GOTO move;
        WAIT 2;
        GOTO begin;
move:
        IF_EQUAL THERE.HERE,0;
             END;
        SET doorToMove, Door4Rgn; // impede o acionamento da porta 
	  SET LiftSound,THERE.CEIL_TEX;
        SET LiftSound.SVOL,0.5; // liga o som
        WAIT 43; // duração da viagem
        SET LiftSound.SVOL,0; // desliga o som
        SET doorToMove, NULL; // libera a porta
        ADD  PLAYER_Y, -600;
        ADD  PLAYER_Z, 10;
        LOCATE;
        SET RENDER_MODE,2;       
}
ACTION setToSternW 
{
        SET THERE.IF_ENTER,toSternWLift;
}
//**************************************************************************
REGION ToSternERgn  
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt05SoundTex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.75;
       IF_ENTER toSternELift; 
       IF_LEAVE setToSternE; 
	FLAGS SAVE_ALL, FLAG2;
}
ACTION toSternELift 
{
        SET ToEngineWRgn.IF_ENTER,NULL; // prevents back transportation
begin:     
        IF_EQUAL doorToMove,NULL; // the door is closed
             GOTO move;
        WAIT 2;
        GOTO begin;
move:
        IF_EQUAL THERE.HERE,0;
             END;
        SET doorToMove, Door4Rgn; // impede o acionamento da porta 
SET LiftSound,THERE.CEIL_TEX;
        SET LiftSound.SVOL,0.5; // liga o som
        WAIT 40; // duração da viagem
        SET LiftSound.SVOL,0; // desliga o som
        SET doorToMove, NULL; // libera a porta
        ADD  PLAYER_X,698.5;
	  ADD  PLAYER_Y,3;
        ADD PLAYER_Z ,10;
        LOCATE;
        SET RENDER_MODE,2;        
}
ACTION setToSternE 
{
        SET THERE.IF_ENTER,toSternELift;
}
//**************************************************************************
REGION ToMidleWRgn  
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt05SoundTex;
	FLOOR_HGT -6;
	CEIL_HGT 1;
	AMBIENT 0.75;
       IF_ENTER toMidleWLift; 
       IF_LEAVE setToMidleW; 
	FLAGS SAVE_ALL, FLAG2;
}
ACTION toMidleWLift 
{
        SET ToEngineERgn.IF_ENTER,NULL; // prevents back transportation
begin:     
        IF_EQUAL doorToMove,NULL; // the door is closed
             GOTO move;
        WAIT 2;
        GOTO begin;
move:
        IF_EQUAL THERE.HERE,0;
             END;
        SET doorToMove, Door4Rgn; // impede o acionamento da porta 
	  SET LiftSound,THERE.CEIL_TEX;
        SET LiftSound.SVOL,0.5; // liga o som
        WAIT 30; // duração da viagem
        SET LiftSound.SVOL,0; // desliga o som
        SET doorToMove, NULL; // libera a porta
        ADD  PLAYER_X, 700;
        ADD PLAYER_Z, 10;
        LOCATE;
        SET RENDER_MODE,2;       
}
ACTION setToMidleW
{
        SET THERE.IF_ENTER,toMidleWLift;
}
//**************************************************************************
REGION ToMidleERgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt05SoundTex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.75;
       IF_ENTER toMidleELift; 
       IF_LEAVE setToMidleE; 
	GENIUS DomusUDeckTng;
	FLAGS SAVE_ALL, FLAG2;
}
ACTION toMidleELift 
{
        SET ToDepotRgn.IF_ENTER,NULL; // prevents back transportation
begin:     
        IF_EQUAL doorToMove,NULL; // the door is closed
             GOTO move;
        WAIT 2;
        GOTO begin;
move:
        IF_EQUAL THERE.HERE,0;
             END;
        SET doorToMove, Door4Rgn; // impede o acionamento da porta 
SET LiftSound,THERE.CEIL_TEX;
        SET LiftSound.SVOL,0.5; // liga o som
        WAIT 43; // duração da viagem
        SET LiftSound.SVOL,0; // desliga o som
        SET doorToMove, NULL; // libera a porta
        ADD  PLAYER_X, -545.5;
	  ADD  PLAYER_Y, 0.5;
        ADD  PLAYER_Z, 10;
        LOCATE;
        SET RENDER_MODE,2;
}
ACTION setToMidleE 
{
        SET THERE.IF_ENTER,toMidleELift;
}

//**************************************************************************

REGION ToBridgeRgn 
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt05SoundTex;
	FLOOR_HGT 0;
	CEIL_HGT 8;
	AMBIENT 0.75;
       IF_ENTER toBridgeLift; 
       IF_LEAVE setToBridge;
	FLAGS SAVE_ALL, FLAG2;
}
ACTION toBridgeLift 
{
        SET ToControlRgn.IF_ENTER,NULL; // prevents back transportation
begin:     
        IF_EQUAL doorToMove,NULL; // the door is closed
             GOTO move;
        WAIT 2;
        GOTO begin;
move:
        IF_EQUAL THERE.HERE,0;
             END;
        SET doorToMove, Door4Rgn; // impede o acionamento da porta 
	  SET LiftSound,THERE.CEIL_TEX;
        SET LiftSound.SVOL,0.5; // liga o som
        WAIT 37; // duração da viagem
        SET LiftSound.SVOL,0; // desliga o som
        SET doorToMove, NULL; // libera a porta
	  ADD  PLAYER_X,-695.5;
        ADD  PLAYER_Y,14;
        ADD PLAYER_Z , 20;
        LOCATE;
        SET RENDER_MODE,2;        
}
ACTION setToBridge 
{
        SET THERE.IF_ENTER,toBridgeLift;
}
//**************************************************************************
