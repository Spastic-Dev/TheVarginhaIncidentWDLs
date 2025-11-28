// nota existem fechaduras internas e externas para a mesma porta quando são 
// diferentes as texturas internas e externas
//******************
IF_SPACE selector;
ACTION selector
{

     IF_EQUAL TouchKEY,1;
           BRANCH OpenDoor1;
     IF_EQUAL TouchKEY,2;
           BRANCH OpenDoor2;
     IF_EQUAL TouchKEY,3;
           BRANCH OpenDoor3;
     IF_EQUAL TouchKEY,4;
           BRANCH OpenDoor4;
     IF_EQUAL TouchKEY,5;
           BRANCH OpenDoor5;
     IF_EQUAL TouchKEY,6;
           BRANCH OpenDoor6;
     IF_EQUAL TouchKEY,7;
           BRANCH OpenDoor7;
     IF_EQUAL TouchKEY,8;
           BRANCH OpenDoor8;
     IF_EQUAL TouchKEY,9;
           BRANCH OpenDoor9;
     IF_EQUAL TouchKEY,10;
           BRANCH OpenDoor10;
     IF_EQUAL TouchKEY,11;
           BRANCH OpenDoor11;
     IF_EQUAL TouchKEY,12;
           BRANCH OpenDoor12;
     IF_EQUAL TouchKEY,13;
           BRANCH OpenDoor13;
     IF_EQUAL TouchKEY,14;
           BRANCH OpenDoor14;
     IF_EQUAL TouchKEY,15;
           BRANCH OpenDoor15;
     IF_EQUAL TouchKEY,16;
           BRANCH OpenDoor16;
     IF_EQUAL TouchKEY,17;
           BRANCH OpenDoor17;
     IF_EQUAL TouchKEY,18;
           BRANCH OpenDoor18;
     IF_EQUAL TouchKEY,19;
           BRANCH OpenDoor19;
     IF_EQUAL TouchKEY,20;
           BRANCH OpenDoor20;
     IF_EQUAL TouchKEY,23;
           BRANCH OpenDoor23;
     IF_EQUAL TouchKEY,24;
           BRANCH OpenDoor24;
     IF_EQUAL TouchKEY,27;
           BRANCH OpenDoor27;
     IF_EQUAL TouchKEY,28;
           BRANCH OpenDoor28;
     IF_EQUAL TouchKEY,51;
           BRANCH Active08;
     IF_EQUAL TouchKEY,52;
             BRANCH Active26;
     IF_EQUAL TouchKEY,103;
           BRANCH OpenDoor103;
     IF_EQUAL TouchKEY,104;
           BRANCH OpenDoor104;
     IF_EQUAL TouchKEY,107;
           BRANCH OpenDoor107;
     IF_EQUAL TouchKEY,108;
           BRANCH OpenDoor108;
     IF_EQUAL TouchKEY,109;
           BRANCH OpenDoor109;
     IF_EQUAL TouchKEY,110;
           BRANCH OpenDoor110;
     IF_EQUAL TouchKEY,111;
           BRANCH OpenDoor111;
     IF_EQUAL TouchKEY,112;
           BRANCH OpenDoor112;
     IF_EQUAL TouchKEY,113;
           BRANCH OpenDoor113;
     IF_EQUAL TouchKEY,114;
           BRANCH OpenDoor114;
     IF_EQUAL TouchKEY,116;
           BRANCH OpenDoor116;
}

ACTION ResetTouch
{
     	SET TouchKEY, 0;
	SET LockWall,MY;
}
ACTION Touch1
{
     	SET TouchKEY, 1;
	SET LockWall,MY;
}
ACTION Touch2
{
     SET TouchKEY, 2;
	SET LockWall,MY;
}
ACTION Touch3
{
     SET TouchKEY, 3;
	SET LockWall,MY;
}
ACTION Touch4
{
     SET TouchKEY, 4;
	SET LockWall,MY;
}
ACTION Touch5
{
     SET TouchKEY, 5;
	SET LockWall,MY;
}
ACTION Touch6
{
     SET TouchKEY,6;
	SET LockWall,MY;
}
ACTION Touch7
{
     SET TouchKEY, 7;
	SET LockWall,MY;
}
ACTION Touch8
{
     SET TouchKEY, 8;
	SET LockWall,MY;
}
ACTION Touch9
{
     SET TouchKEY, 9;
	SET LockWall,MY;
}
ACTION Touch10
{
     SET TouchKEY, 10;
	SET LockWall,MY;
}
ACTION Touch11
{
     SET TouchKEY, 11;
	SET LockWall,MY;
}
ACTION Touch12
{
     SET TouchKEY, 12;
	SET LockWall,MY;
}
ACTION Touch13
{
     SET TouchKEY, 13;
	SET LockWall,MY;
}
ACTION Touch14
{
     SET TouchKEY, 14;
	SET LockWall,MY;
}
ACTION Touch15
{
     SET TouchKEY, 15;
	SET LockWall,MY;
}

ACTION Touch16
{
     SET TouchKEY,16;
	SET LockWall,MY;
}
ACTION Touch17
{
     SET TouchKEY, 17;
	SET LockWall,MY;
}
ACTION Touch18
{
     SET TouchKEY, 18;
	SET LockWall,MY;
}
ACTION Touch19
{
     SET TouchKEY, 19;
	SET LockWall,MY;
}
ACTION Touch20
{
     SET TouchKEY, 20;
	SET LockWall,MY;
}
ACTION Touch23
{
     SET TouchKEY, 23;
	SET LockWall,MY;
}
ACTION Touch24
{
     SET TouchKEY, 24;
	SET LockWall,MY;
}

ACTION Touch27
{
     SET TouchKEY, 27;
	SET LockWall,MY;
}
ACTION Touch28
{
     SET TouchKEY, 28;
	SET LockWall,MY;
}
ACTION Touch51
{
     SET TouchKEY, 51;
	SET LockWall,MY;
}
ACTION Touch52
{
     SET TouchKEY, 52;
	SET LockWall,MY;
}

ACTION Touch103
{
     SET TouchKEY, 103;
	SET LockWall,MY;
}
ACTION Touch104
{
     SET TouchKEY, 104;
	SET LockWall,MY;
}
ACTION Touch107
{
     SET TouchKEY, 107;
	SET LockWall,MY;
}
ACTION Touch108
{
     SET TouchKEY, 108;
	SET LockWall,MY;
}

ACTION Touch110
{
     SET TouchKEY,110;
	SET LockWall,MY;
}
ACTION Touch111
{
     SET TouchKEY, 111;
	SET LockWall,MY;
}
ACTION Touch112
{
     SET TouchKEY, 112;
	SET LockWall,MY;
}
ACTION Touch113
{
     SET TouchKEY, 113;
	SET LockWall,MY;
}
ACTION Touch114
{
     SET TouchKEY, 114;
	SET LockWall,MY;
}
ACTION Touch116
{
     SET TouchKEY, 116;
	SET LockWall,MY;
}



ACTION OpenDoor1
{
      SET MESSAGE_TEXT,Wrn18Str;
      BRANCH DisplayMessage;
}
ACTION OpenDoor2
{
      SET MESSAGE_TEXT,Wrn19Str;
      BRANCH DisplayMessage;
}
ACTION OpenDoor3
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door3Rgn.FLAG1,1;
              END;
      SET doorLock,Lock3Wall;
      SET doorPosition, Pos03Wall;
      SET doorToMove, Door3Rgn;
      SET Door3Rgn.SKILL1,0; 
      SET Door3Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}
ACTION OpenDoor103
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door3Rgn.FLAG1,1;
              END;
      SET doorLock,Lock3IWall;
      SET doorPosition, Pos03Wall;
      SET doorToMove, Door3Rgn;
      SET Door3Rgn.SKILL1,0; 
      SET Door3Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}

ACTION OpenDoor4
{
      IF_NEQUAL KEY1,1;
            GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door4Rgn.FLAG1,1;
              END;
      SET doorLock,Lock4Wall;
      SET doorPosition, Pos04Wall;
      SET doorToMove, Door4Rgn;
      SET Door4Rgn.SKILL1,0; 
      SET Door4Rgn.FLAG1,1;
      BRANCH openToWest;
display:
      SET MESSAGE_TEXT,Wrn13Str;
      BRANCH DisplayMessage;
}
ACTION OpenDoor104
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door4Rgn.FLAG1,1;
              END;
      SET doorLock,Lock4IWall;
      SET doorPosition, Pos04Wall;
      SET doorToMove, Door4Rgn;
      SET Door4Rgn.SKILL1,0; 
      SET Door4Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}

ACTION OpenDoor5
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door5Rgn.FLAG1,1;
              END;
      SET doorLock,Lock5Wall;
      SET doorPosition, Pos05Wall;
      SET doorToMove, Door5Rgn;
      SET Door5Rgn.SKILL1,0; 
      SET Door5Rgn.FLAG1,1;
      BRANCH openToSouth;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}
ACTION OpenDoor6
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door6Rgn.FLAG1,1;
              END;
      SET doorLock,Lock6Wall;
      SET doorPosition, Pos06Wall;
      SET doorToMove, Door6Rgn;
      SET Door6Rgn.SKILL1,0; 
      SET Door6Rgn.FLAG1,1;
      BRANCH openToNorth;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}
ACTION OpenDoor7
{
      IF_NEQUAL KEY2,1;
            GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door7Rgn.FLAG1,1;
              END;
      SET doorLock,Lock7Wall;
      SET doorPosition, Pos07Wall;
      SET doorToMove, Door7Rgn;
      SET Door7Rgn.SKILL1,0; 
      SET Door7Rgn.FLAG1,1;
      BRANCH openToNorth;
display:
      SET MESSAGE_TEXT,Wrn11Str;
      BRANCH DisplayMessage;
}
ACTION OpenDoor107
{
      IF_NEQUAL KEY2,1;
            GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door7Rgn.FLAG1,1;
              END;
      SET doorLock,Lock7IWall;
      SET doorPosition, Pos07Wall;
      SET doorToMove, Door7Rgn;
      SET Door7Rgn.SKILL1,0; 
      SET Door7Rgn.FLAG1,1;
      BRANCH openToNorth;
display:
      SET MESSAGE_TEXT,Wrn11Str;
      BRANCH DisplayMessage;
}

ACTION OpenDoor8
{
      IF_NEQUAL KEY5,1;
            GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door8Rgn.FLAG1,1;
              END;
      SET doorLock,Lock8Wall;
      SET doorPosition, Pos08Wall;
      SET doorToMove, Door8Rgn;
      SET Door8Rgn.SKILL1,0; 
      SET Door8Rgn.FLAG1,1;
      BRANCH openToNorth;
display:
      SET MESSAGE_TEXT,Wrn09Str;
      BRANCH DisplayMessage;
}
ACTION OpenDoor108
{
      IF_NEQUAL KEY5,1;
            GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door8Rgn.FLAG1,1;
              END;
      SET doorLock,Lock8IWall;
      SET doorPosition, Pos08Wall;
      SET doorToMove, Door8Rgn;
      SET Door8Rgn.SKILL1,0; 
      SET Door8Rgn.FLAG1,1;
      BRANCH openToNorth;
display:
      SET MESSAGE_TEXT,Wrn09Str;
      BRANCH DisplayMessage;
}

ACTION OpenDoor9
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door9Rgn.FLAG1,1;
              END;
      SET doorLock,Lock9Wall;
      SET doorPosition, Pos09Wall;
      SET doorToMove, Door9Rgn;
      SET Door9Rgn.SKILL1,0; 
      SET Door9Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}
ACTION OpenDoor109
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door9Rgn.FLAG1,1;
              END;
      SET doorLock,Lock9IWall;
      SET doorPosition, Pos09Wall;
      SET doorToMove, Door9Rgn;
      SET Door9Rgn.SKILL1,0; 
      SET Door9Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}

ACTION OpenDoor10
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door10Rgn.FLAG1,1;
              END;
      SET doorLock,Lock10Wall;
      SET doorPosition, Pos10Wall;
      SET doorToMove, Door10Rgn;
      SET Door10Rgn.SKILL1,0; 
      SET Door10Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}
ACTION OpenDoor110
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door10Rgn.FLAG1,1;
              END;
      SET doorLock,Lock10IWall;
      SET doorPosition, Pos10Wall;
      SET doorToMove, Door10Rgn;
      SET Door10Rgn.SKILL1,0; 
      SET Door10Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}

ACTION OpenDoor11
{
      IF_NEQUAL KEY3,1;
            GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door11Rgn.FLAG1,1;
              END;
      SET doorLock,Lock11Wall;
      SET doorPosition, Pos11Wall;
      SET doorToMove, Door11Rgn;
      SET Door11Rgn.SKILL1,0; 
      SET Door11Rgn.FLAG1,1;
      BRANCH openToNorth;
display:
      SET MESSAGE_TEXT,Wrn14Str;
      BRANCH DisplayMessage;
}
ACTION OpenDoor111
{
      IF_NEQUAL KEY3,1;
            GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door11Rgn.FLAG1,1;
              END;
      SET doorLock,Lock11IWall;
      SET doorPosition, Pos11Wall;
      SET doorToMove, Door11Rgn;
      SET Door11Rgn.SKILL1,0; 
      SET Door11Rgn.FLAG1,1;
      BRANCH openToNorth;
display:
      SET MESSAGE_TEXT,Wrn14Str;
      BRANCH DisplayMessage;
}

ACTION OpenDoor12
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door12Rgn.FLAG1,1;
              END;
      SET doorLock,Lock12Wall;
      SET doorPosition, Pos12Wall;
      SET doorToMove, Door12Rgn;
      SET Door12Rgn.SKILL1,0; 
      SET Door12Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}
ACTION OpenDoor112
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door12Rgn.FLAG1,1;
              END;
      SET doorLock,Lock12IWall;
      SET doorPosition, Pos12Wall;
      SET doorToMove, Door12Rgn;
      SET Door12Rgn.SKILL1,0; 
      SET Door12Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}

ACTION OpenDoor13
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door13Rgn.FLAG1,1;
              END;
      SET doorLock,Lock13Wall;
      SET doorPosition, Pos13Wall;
      SET doorToMove, Door13Rgn;
      SET Door13Rgn.SKILL1,0; 
      SET Door13Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}
ACTION OpenDoor113
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door13Rgn.FLAG1,1;
              END;
      SET doorLock,Lock13IWall;
      SET doorPosition, Pos13Wall;
      SET doorToMove, Door13Rgn;
      SET Door13Rgn.SKILL1,0; 
      SET Door13Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}

ACTION OpenDoor14
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door14Rgn.FLAG1,1;
              END;
      SET doorLock,Lock14Wall;
      SET doorPosition, Pos14Wall;
      SET doorToMove, Door14Rgn;
      SET Door14Rgn.SKILL1,0; 
      SET Door14Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}
ACTION OpenDoor114
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door14Rgn.FLAG1,1;
              END;
      SET doorLock,Lock14IWall;
      SET doorPosition, Pos14Wall;
      SET doorToMove, Door14Rgn;
      SET Door14Rgn.SKILL1,0; 
      SET Door14Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}

ACTION OpenDoor15
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door15Rgn.FLAG1,1;
              END;
      SET doorLock,Lock15Wall;
      SET doorPosition, Pos15Wall;
      SET doorToMove, Door15Rgn;
      SET Door15Rgn.SKILL1,0; 
      SET Door15Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}
ACTION OpenDoor16
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door16Rgn.FLAG1,1;
              END;
      SET doorLock,Lock16Wall;
      SET doorPosition, Pos16Wall;
      SET doorToMove, Door16Rgn;
      SET Door16Rgn.SKILL1,0; 
      SET Door16Rgn.FLAG1,1;
      BRANCH openToSouth;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}
ACTION OpenDoor116
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door16Rgn.FLAG1,1;
              END;
      SET doorLock,Lock16IWall;
      SET doorPosition, Pos16Wall;
      SET doorToMove, Door16Rgn;
      SET Door16Rgn.SKILL1,0; 
      SET Door16Rgn.FLAG1,1;
      BRANCH openToSouth;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}

ACTION OpenDoor17
{
      //IF_NEQUAL KEY3,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door17Rgn.FLAG1,1;
              END;
      SET doorLock,Lock17Wall;
      SET doorPosition, Pos17Wall;
      SET doorToMove, Door17Rgn;
      SET Door17Rgn.SKILL1,0; 
      SET Door17Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
      //SET MESSAGE_TEXT,Wrn14Str;
      //BRANCH DisplayMessage;
}
ACTION OpenDoor18
{
      //IF_NEQUAL KEY3,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door18Rgn.FLAG1,1;
              END;
      SET doorLock,Lock18Wall;
      SET doorPosition, Pos18Wall;
      SET doorToMove, Door18Rgn;
      SET Door18Rgn.SKILL1,0; 
      SET Door18Rgn.FLAG1,1;
      BRANCH openToWest;
//display:
      //SET MESSAGE_TEXT,Wrn14Str;
      //BRANCH DisplayMessage;
}

ACTION OpenDoor19
{
      IF_NEQUAL KEY4,1;
            GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door19Rgn.FLAG1,1;
              END;
      SET doorLock,Lock19Wall;
      SET doorPosition, Pos19Wall;
      SET doorToMove, Door19Rgn;
      SET Door19Rgn.SKILL1,0; 
      SET Door19Rgn.FLAG1,1;
      BRANCH openToWest;
display:
      SET MESSAGE_TEXT,Wrn12Str;
      BRANCH DisplayMessage;
}
ACTION OpenDoor20
{
      IF_NEQUAL KEY4,1;
            GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door20Rgn.FLAG1,1;
              END;
      SET doorLock,Lock20Wall;
      SET doorPosition, Pos20Wall;
      SET doorToMove, Door20Rgn;
      SET Door20Rgn.SKILL1,0; 
      SET Door20Rgn.FLAG1,1;
      BRANCH openToWest;
display:
      SET MESSAGE_TEXT,Wrn12Str ;
      BRANCH DisplayMessage;
}
ACTION OpenDoor23
{
      IF_NEQUAL KEY3,1;
            GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door23Rgn.FLAG1,1;
              END;
      SET doorLock,Lock23Wall;
      SET doorPosition, Pos23Wall;
      SET doorToMove, Door23Rgn;
      SET Door23Rgn.SKILL1,0; 
      SET Door23Rgn.FLAG1,1;
      BRANCH openToSouth;
display:
      SET MESSAGE_TEXT,Wrn14Str;
      BRANCH DisplayMessage;
}
ACTION OpenDoor24
{
      IF_NEQUAL KEY3,1;
            GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door24Rgn.FLAG1,1;
              END;
      SET doorLock,Lock24Wall;
      SET doorPosition, Pos24Wall;
      SET doorToMove, Door24Rgn;
      SET Door24Rgn.SKILL1,0; 
      SET Door24Rgn.FLAG1,1;
      BRANCH openToNorth;
display:
      SET MESSAGE_TEXT,Wrn14Str;
      BRANCH DisplayMessage;
}
ACTION OpenDoor27
{
      //IF_NEQUAL KEY1,1;
            //GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door27Rgn.FLAG1,1;
              END;
      SET doorLock,Lock27Wall;
      SET doorPosition, Pos27Wall;
      SET doorToMove, Door27Rgn;
      SET Door27Rgn.SKILL1,0; 
      SET Door27Rgn.FLAG1,1;
      BRANCH openToSouth;
//display:
      //SET MESSAGE_TEXT,Wrn13Str;
      //BRANCH DisplayMessage;
}
ACTION OpenDoor28
{
//      IF_NEQUAL KEY6,1;
//            GOTO display; 
      IF_NEQUAL doorToMove,NULL;
               END;   
      IF_EQUAL  Door28Rgn.FLAG1,1;
              END;
      SET doorLock,Lock28Wall;
      SET doorPosition, Pos28Wall;
      SET doorToMove, Door28Rgn;
      SET Door28Rgn.SKILL1,0; 
      SET Door28Rgn.FLAG1,1;
      BRANCH openToSouth;
//display:
//      SET MESSAGE_TEXT,Wrn09Str;
//      BRANCH DisplayMessage;
}
ACTION Active08
{
	
      SET KEY5,1;
      SET_ALL Lock8Wall.TEXTURE,KeyOnWmt04Tex;
      SET_ALL Lock8IWall.TEXTURE,KeyOnWmt05Tex;
      SET Lock51Wall.TEXTURE,KeyOpenWmt04Tex;
      SET MESSAGE_TEXT,Wrn10Str;
      BRANCH DisplayMessage;

}
ACTION Active26
{
      	SET_ALL Lock52Wall.TEXTURE,KeyOpenWmt03Tex;
 	SET Lock52Wall.IF_NEAR,NULL;
	SET DpHoleGapRgn.CEIL_TEX,WMt11Tex; 
	SET HRoomRgn.CEIL_TEX,Back05Tex;
	SET HComputerRgn.CEIL_TEX,Back05Tex; 
	SET_ALL TropLastAct.INVISIBLE, 0;  
	SET_ALL LnchLastAct.INVISIBLE, 0; 
	SET_ALL HeliTng.INVISIBLE, 1;
	SET_ALL Door26Rgn.CEIL_HGT,-5.5;
//anula os atores antigos do depósito  ainda vivos
	SET_ALL DpCorridorT2Rgn.IF_ENTER,NULL;
	SET_ALL DpCorridorT1Rgn.IF_ENTER,NULL; 
	SET_ALL DpCorridorT3Rgn.IF_ENTER,NULL;
	SET_ALL	TropDpW1AAct.INVISIBLE,1;
	SET_ALL	TropDpW1BAct.INVISIBLE,1;
	SET_ALL	TropDpW1CAct.INVISIBLE,1;

      	SET MESSAGE_TEXT,Wrn10Str;
      	BRANCH DisplayMessage;
}

ACTION setOpenTexture
{
      IF_EQUAL doorLock.SKILL6, 2; // branca
              SET_ALL doorLock.TEXTURE,KeyOpenWMt17aTex;
      IF_EQUAL doorLock.SKILL6, 3; // azul
              SET_ALL doorLock.TEXTURE,KeyOpenWmt03Tex;
      IF_EQUAL doorLock.SKILL6, 4; // bege
              SET_ALL doorLock.TEXTURE,KeyOpenWmt04Tex;
      IF_EQUAL doorLock.SKILL6, 5; // verde
              SET_ALL doorLock.TEXTURE,KeyOpenWmt05Tex;
}
ACTION setOnTexture
{
      IF_EQUAL doorLock.SKILL6, 2; // branca
              SET_ALL doorLock.TEXTURE,KeyOnWMt17aTex;
      IF_EQUAL doorLock.SKILL6, 3; // azul
              SET_ALL doorLock.TEXTURE,KeyOnWmt03Tex;
      IF_EQUAL doorLock.SKILL6, 4; // bege
              SET_ALL doorLock.TEXTURE,KeyOnWmt04Tex;
      IF_EQUAL doorLock.SKILL6, 5; // verde
              SET_ALL doorLock.TEXTURE,KeyOnWmt05Tex;
}


ACTION openToWest
{    
      PLAY_SOUND MoveDoorSnd,0.5,LockWall;
      RULE doorPosition.SKILL7 =doorPosition.X1 -0.1; // inicial
      RULE doorPosition.SKILL8 =doorPosition.SKILL7 -4 ; // intermediario
      CALL setOpenTexture;
openloop:
      IF_BELOW  doorPosition.X1,doorPosition.SKILL8;
              GOTO close;
      SHIFT  doorToMove,-0.1,0;
      SET RENDER_MODE,1;
      WAIT 1;
      GOTO openloop;
close:
      WAIT 20;
      PLAY_SOUND MoveDoorSnd,0.5,LockWall;
closeloop:
      
      IF_ABOVE doorPosition.X1,doorPosition.SKILL7;
              GOTO finish;
      SHIFT  doorToMove,0.1,0;
      SET RENDER_MODE,1;
      WAIT 1;
      GOTO closeloop;
finish:
      SET doorToMove.FLAG1,0;
      CALL setOnTexture;
      SET doorToMOve,NULL;
}
ACTION openToNorth
{
      PLAY_SOUND MoveDoorSnd,0.5,LockWall;
      RULE doorPosition.SKILL7 =doorPosition.Y1 +0.1; // inicial
      RULE doorPosition.SKILL8 =doorPosition.SKILL7 +4 ; // intermediario
      CALL setOpenTexture;
openloop:
      IF_ABOVE  doorPosition.Y1,doorPosition.SKILL8;
              GOTO close;
      SHIFT  doorToMove,0,0.1;
      SET RENDER_MODE,1;
      WAIT 1;
      GOTO openloop;
close:
      WAIT 20;
      PLAY_SOUND MoveDoorSnd,0.5,LockWall;
closeloop:
      
      IF_BELOW doorPosition.Y1,doorPosition.SKILL7;
              GOTO finish;
      SHIFT  doorToMove,0,-0.1;
      SET RENDER_MODE,1;
      WAIT 1;
      GOTO closeloop;
finish:
      SET doorToMove.FLAG1,0;
      CALL setOnTexture;
      SET doorToMOve,NULL;
}

ACTION openToSouth
{
      PLAY_SOUND MoveDoorSnd,0.5,LockWall;
      RULE doorPosition.SKILL7 =doorPosition.Y1 -0.1; // inicial
      RULE doorPosition.SKILL8 =doorPosition.SKILL7 -4 ; // intermediario
      CALL setOpenTexture;
openloop:
      IF_BELOW  doorPosition.Y1,doorPosition.SKILL8;
              GOTO close;
      SHIFT  doorToMove,0,-0.1;
      SET RENDER_MODE,1;
      WAIT 1;
      GOTO openloop;
close:
      WAIT 20;
      PLAY_SOUND MoveDoorSnd,0.5,LockWall;
closeloop:     
      IF_ABOVE doorPosition.Y1,doorPosition.SKILL7;
              GOTO finish;
      SHIFT  doorToMove,0,0.1;
      SET RENDER_MODE,1;
      WAIT 1;
      GOTO closeloop;
finish:
      SET doorToMove.FLAG1,0;
      CALL setOnTexture;
      SET doorToMOve,NULL;
}
