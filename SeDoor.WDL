///////////////////////////////////
// Doors textures and actions
///////////////////////////////////

///////////////////////////////////
// Bitmaps
///////////////////////////////////
BMAP Dal01Bmp , <dal01.pcx>;

///////////////////////////////////
// SOUNDS
///////////////////////////////////
SOUND Door01Snd, <door01.wav>; // open
SOUND Door08Snd, <door08.wav>; // locked
SOUND Door09Snd, <door09.wav>; // unlocked

///////////////////////////////////
// Textures
///////////////////////////////////
TEXTURE Dal01Tex {
        SCALE_XY        32,32;
        BMAPS   Dal01Bmp;
        AMBIENT 0.5;
}

///////////////////////////////////
// Genius for door rotation
///////////////////////////////////
THING Door01GeniusTng {
        TEXTURE         NullTex;
        FLAGS           INVISIBLE;
}
THING Door02GeniusTng {
        TEXTURE         NullTex;
        FLAGS           INVISIBLE;
}
THING Door03GeniusTng {
        TEXTURE         NullTex;
        FLAGS           INVISIBLE;
}
THING Door04GeniusTng {
        TEXTURE         NullTex;
        FLAGS           INVISIBLE;
}

///////////////////////////////////
// Walls
///////////////////////////////////
WALL DalWall 
{
        
        TEXTURE  Dal01Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
}
WALL Dal01Wall 
{
        
        TEXTURE  Dal01Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
        DIST 4;
        IF_NEAR  OpenDoor01;
}
WALL Dal02Wall 
{
        TEXTURE  Dal01Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
        DIST 4;
        IF_NEAR  OpenDoor02;
}
WALL Dal03Wall 
{
        TEXTURE  Dal01Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
        DIST 4;
        IF_NEAR  OpenDoor03;
}
WALL Dal04Wall 
{
        TEXTURE  Dal01Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
        DIST 4;
        IF_NEAR  OpenDoor04;
}

///////////////////////////////////
// Door Regions
///////////////////////////////////
REGION Door01Rgn
{
        FLOOR_HGT 0;
        CEIL_HGT   9;
        FLOOR_TEX Cct01Tex;
        CEIL_TEX  Cct01Tex;
        GENIUS    Door01GeniusTng;
        AMBIENT 0.7;
}
REGION Door02Rgn
{
        FLOOR_HGT 40;
        CEIL_HGT   42;
        FLOOR_TEX Cct01Tex;
        CEIL_TEX  Cct01Tex;
        GENIUS    Door02GeniusTng;
        AMBIENT 0.7;
}
REGION Door03Rgn
{
        FLOOR_HGT 40;
        CEIL_HGT   41;
        FLOOR_TEX Cct01Tex;
        CEIL_TEX  Cct01Tex;
        GENIUS    Door03GeniusTng;
        AMBIENT 0.7;
}
REGION Door04Rgn
{
        FLOOR_HGT 40;
        CEIL_HGT   41;
        FLOOR_TEX Cct01Tex;
        CEIL_TEX  Cct01Tex;
        GENIUS    Door04GeniusTng;
        AMBIENT 0.7;
}

///////////////////////////////////
// Actions
///////////////////////////////////
ACTION ResetDoor {
   SET MY.DIST, 4;
   SET MY.IF_FAR, NULL;
}
ACTION OpenDoor01 {
   IF_EQUAL Key2,1;
	  GOTO cont;
   SET MY.DIST, 8;
   SET MY.IF_FAR, ResetDoor;
   SET MESSAGE_TEXT, Wrn07Str;
   CALL DisplayMessage;
   PLAY_SOUND Door08Snd, 0.5, MY;
   END;
cont:
   IF_NEQUAL DOOR_TO_MOVE, NULL;
        END;     
   SET    MY.IF_NEAR, NULL;
   SET    DOOR_TO_MOVE, Door01Rgn;
   SET    doorAngle, 1.57;
   SET MY.DIST, 8;
   PLAY_SOUND Door09Snd, 0.5, MY;
   CALL   MoveDoor;   
}
ACTION OpenDoor02 {
   IF_EQUAL Key2,1;
	  GOTO cont;
   SET MY.DIST, 8;
   SET MY.IF_FAR, ResetDoor;
   SET MESSAGE_TEXT, Wrn07Str;
   CALL DisplayMessage;
   PLAY_SOUND Door08Snd, 0.5, MY;
   END;
cont:
   IF_NEQUAL DOOR_TO_MOVE, NULL;
        END;      
   SET    MY.IF_NEAR, NULL;
   SET    DOOR_TO_MOVE, Door02Rgn;
   SET    doorAngle, 3.14;
   SET MY.DIST, 8;
   PLAY_SOUND Door09Snd, 0.5, MY;
   CALL   MoveDoor;
}
ACTION OpenDoor03 {
   IF_EQUAL Key2,1;
	  GOTO cont;
   SET MY.DIST, 8;
   SET MY.IF_FAR, ResetDoor;
   SET MESSAGE_TEXT, Wrn07Str;
   CALL DisplayMessage;
   PLAY_SOUND Door08Snd, 0.5, MY;
   END;
cont:
   IF_NEQUAL DOOR_TO_MOVE, NULL;
        END;      
   SET    MY.IF_NEAR, NULL;
   SET    DOOR_TO_MOVE, Door03Rgn;
   SET    doorAngle, 1.57;
   SET MY.DIST, 8;
   PLAY_SOUND Door09Snd, 0.5, MY;
   CALL   MoveDoor;
  
}
ACTION OpenDoor04 {
    
   IF_EQUAL Key3,1;
	  GOTO cont;
   SET MY.DIST, 8;
   SET MY.IF_FAR, ResetDoor;
   SET MESSAGE_TEXT, Wrn07Str;
   CALL DisplayMessage;
   PLAY_SOUND Door08Snd, 0.5, MY;
   END;
cont:
   IF_NEQUAL DOOR_TO_MOVE, NULL;
        END;      
   SET    MY.IF_NEAR, NULL;
   SET    DOOR_TO_MOVE, Door04Rgn;
   SET    doorAngle, 3.14;
   SET MY.DIST, 8;
   PLAY_SOUND Door09Snd, 0.5, MY;
   CALL   MoveDoor;
   
      
}

ACTION MoveDoor {
        
      RULE doorSpeed = doorAngle / 20;
      SET  doorCounter, 0;
	PLAY_SOUND Door01Snd, 0.5, MY;
   move:
      ROTATE DOOR_TO_MOVE, doorSpeed;
      ADD doorCounter, 1;
      WAITT 1;
      IF_BELOW doorCounter, 20;
         GOTO move;
       SET DOOR_TO_MOVE, NULL;
}




