INCLUDE <SdTroop.Wdl>; 
INCLUDE <SdMib.Wdl>; 
INCLUDE <SdBio.Wdl>; 
INCLUDE <SdGray.Wdl>; 

ACTOR LTarget01Act {
      TEXTURE   LTargetTex;
      EACH_CYCLE  ChangeHeight;
      SKILL1    -18;     // maximum absolut height
      FLAGS     GROUND,INVISIBLE;
}

ACTOR Lift01Act {
        TEXTURE LiftTex;
        SPEED           1;
        VSPEED  2;
        TARGET  LTarget01Act;
        FLAGS           GROUND,INVISIBLE;
}
ACTOR LTarget02Act {
      TEXTURE   LTargetTex;
      EACH_CYCLE  ChangeHeight;
      SKILL1    25;     // maximum absolut height
      FLAGS     GROUND,INVISIBLE;
}

ACTOR Lift02Act {
        TEXTURE LiftTex;
        SPEED           1;
        VSPEED  2;
        TARGET  LTarget02Act;
        FLAGS           GROUND,INVISIBLE;
}
ACTOR LTarget03Act {
      TEXTURE   LTargetTex;
      EACH_CYCLE  ChangeHeight;
      SKILL1    -10;     // maximum absolut height
      FLAGS     GROUND,INVISIBLE;
}

ACTOR Lift03Act {
        TEXTURE LiftTex;
        SPEED           1;
        VSPEED  2;
        TARGET  LTarget03Act;
        FLAGS           GROUND,INVISIBLE;
}
ACTOR LTarget04Act {
      TEXTURE   LTargetTex;
      EACH_CYCLE  ChangeHeight;
      SKILL1    8;     // maximum absolut height
      FLAGS     GROUND,INVISIBLE;
}

ACTOR Lift04Act {
        TEXTURE LiftTex;
        SPEED           1;
        VSPEED  2;
        TARGET  LTarget04Act;
        FLAGS           GROUND,INVISIBLE;
}
ACTOR LTarget05Act {
      TEXTURE   LTargetTex;
      EACH_CYCLE  ChangeHeight;
      SKILL1    25;     // maximum absolut height
      FLAGS     GROUND,INVISIBLE;
}

ACTOR Lift05Act {
        TEXTURE LiftTex;
        SPEED           1;
        VSPEED  2;
        TARGET  LTarget05Act;
        FLAGS           GROUND,INVISIBLE;
}
ACTOR LTarget06Act {
      TEXTURE   LTargetTex;
      EACH_CYCLE  ChangeHeight;
      SKILL1    -40;     // maximum absolut height
      FLAGS     GROUND,INVISIBLE;
}

ACTOR Lift06Act {
        TEXTURE LiftTex;
        SPEED           1;
        VSPEED  2;
        TARGET  LTarget06Act;
        FLAGS           GROUND,INVISIBLE;
}

ACTOR GShuAct {
        TEXTURE GShuTex;
        HEIGHT  4;
        SPEED     2;
        ASPEED  0.2;
	
      TARGET  ShuttleWay;
	FLAGS GROUND,INVISIBLE;
	
}
ACTOR GShu1Act {
        TEXTURE GShuTex;
        HEIGHT  -80;
        SPEED     2;
        ASPEED  0.2;
	
      TARGET  Shuttle1Way;
	FLAGS GROUND,INVISIBLE;
	
}
ACTOR GShu2Act {
        TEXTURE GShuTex;
        HEIGHT  4;
        SPEED     2;
        ASPEED  0.2;
	
      TARGET  Shuttle2Way;
	FLAGS GROUND,INVISIBLE;
	
}
ACTOR GShu3Act {
        TEXTURE GShuTex;
        HEIGHT  4;
        SPEED     2;
        ASPEED  0.15;
	
      TARGET  Shuttle3Way;
	FLAGS GROUND,INVISIBLE;
	
}

ACTOR GShuAct2 {
        TEXTURE GShuTex;
        HEIGHT  1;
        
}

