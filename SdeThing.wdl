BMAP Key2Bmp    ,<CardB.pcx>;  
BMAP Key3Bmp    ,<CardY.pcx>; 
BMAP Lamp01Bmp   ,<Lamp01.pcx>; 
SOUND TicketSnd, < Key01.wav >; // Take ticket
TEXTURE Lamp01Tex {
        SCALE_XY        64,64;
	BMAPS	Lamp01Bmp;

}
TEXTURE Key2Tex {
        SCALE_XY        96,96;
        BMAPS           Key2Bmp;
        AMBIENT         0.5;
      FLAGS   CLIP;
}
TEXTURE Key3Tex {
        SCALE_XY        96,96;
        BMAPS           Key3Bmp;
        AMBIENT         0.5;
      FLAGS   CLIP;
}

ACTION PickKey2 {
        SET MY.INVISIBLE, 1;
        PLAY_SOUND TicketSnd, 0.5;
      //SET KEY2, 1;
      //SET     MESSAGE_TEXT, Card01Str;
      //BRANCH  DisplayMessage;
}
ACTION PickKey3
{
        SET MY.INVISIBLE, 1;
        PLAY_SOUND TicketSnd, .5;
	  SET KEY3, 1;
        SET     MESSAGE_TEXT, Get15Str;
        BRANCH  DisplayMessage;
}

THING Key2Tng {
        TEXTURE         Key2Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        //IF_NEAR         PickKey2;
}


THING Key3Tng {
        TEXTURE         Key3Tex;
        HEIGHT          -0.05;
        FLAGS           PASSABLE;
        DIST            4;
        IF_NEAR         PickKey3;
}
Thing Lamp01Tng {
    TEXTURE     Lamp01Tex;
    FLAGS       PASSABLE,CANDELABER;
}