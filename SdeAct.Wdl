/////////////////////////////////////////////////////////////////////////
// Sao Tomé : Actors
/////////////////////////////////////////////////////////////////////////

ACTOR TropTrapAct {
      TEXTURE   Trop1Tex;
      HEIGHT    -0.05;  // altura relativa (ator levemente afundado)
    DIST        20;
      SPEED     0.3;
    FLAGS       FRAGILE,FLAG2,CAREFULLY,INVISIBLE;
    IF_HIT  TropHit;
    EACH_TICK  TropWait;    
}
ACTOR DrakTrapAct {
      TEXTURE   Drkl1Tex;
      HEIGHT    -0.05;  // altura relativa (ator levemente afundado)
    DIST        20;
      SPEED     0.3;
    FLAGS       FRAGILE,FLAG2,CAREFULLY,INVISIBLE;
    IF_HIT  DrklHit;
    EACH_TICK  DrklWait;    
}
