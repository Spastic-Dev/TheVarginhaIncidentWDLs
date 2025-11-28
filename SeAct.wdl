/////////////////////////////////////////////////////////////////////////
// Praça da Sé : Actors
/////////////////////////////////////////////////////////////////////////

ACTOR MibKey1Act {
        TEXTURE         Mibk1Tex;
        HEIGHT          -0.05;
        SPEED           0.4;      
        DIST            40;
        TARGET  		Way1;
        FLAGS           CAREFULLY,FRAGILE,FLAG4;
//        EACH_CYCLE    CycleMibkAttack;
        IF_HIT          MibkHit;
}
ACTOR MibKey2Act {
        TEXTURE         Mibk1Tex;
        HEIGHT          -0.05;
        SPEED           0.4;
        DIST            40;
        TARGET  		Way2;
        FLAGS           CAREFULLY,FRAGILE,FLAG5;
//        EACH_CYCLE    CycleMibkAttack;
        IF_HIT          MibkHit;
}
ACTOR MibkBadAct {
        TEXTURE         Mibk1Tex;
        HEIGHT          -0.05;
        SPEED           0.3;
        DIST            40;
        FLAGS           CAREFULLY,FRAGILE,FLAG2;
        EACH_TICK       MibkWait;
      IF_HIT        MibkHit;
}
ACTOR MibkBadIntAct {
        TEXTURE         Mibk1Tex;
        HEIGHT          -0.05;
        SPEED           0.3;
        DIST            40;
        FLAGS           CAREFULLY,FRAGILE,FLAG2,INVISIBLE;
        EACH_TICK       MibkWait;
      IF_HIT        MibkHit;
}

ACTOR MibkBerkeleyAct {
        TEXTURE         Mibk1Tex;
        HEIGHT          -0.05;
        SPEED           0.3;
        DIST            40;
        FLAGS           CAREFULLY,FRAGILE,BERKELEY;
        EACH_TICK       MibkWait;
      IF_HIT        MibkHit;
}

ACTOR DeptWaitAct {
      TEXTURE   Dept1Tex;
      HEIGHT    -0.05;
      SPEED     0.3;
    DIST        20;
    FLAGS       CAREFULLY,FRAGILE;
    EACH_TICK   DeptWait;
    FLAGS       BERKELEY;
}


ACTOR GirlWaitAct {
      TEXTURE   Girl1Tex;
      HEIGHT    -0.05;
      SPEED     0.3;
    DIST        20;
    FLAGS       CAREFULLY,FRAGILE;
    EACH_TICK   GirlWait;
    FLAGS       BERKELEY;
    
}

ACTOR OboyWaitAct {
      TEXTURE   Oboy1Tex;
      HEIGHT    -0.05;
      SPEED     0.3;
    DIST        20;
    FLAGS       CAREFULLY,FRAGILE;
    EACH_TICK   OboyWait;
    FLAGS       BERKELEY;
}
// ACTION
ACTION setMibInt
{
	SET_ALL MibkBadIntAct.INVISIBLE,0;
	SET_ALL CorredorStartRgn.IF_ENTER,NULL;
}