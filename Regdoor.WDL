///////////////////////////////////
// Doors textures and actions
///////////////////////////////////

///////////////////////////////////
// Bitmaps
///////////////////////////////////
BMAP WWd04Bmp, <WWd03.pcx>;

///////////////////////////////////
// SOUNDS
///////////////////////////////////
SOUND Door01Snd, <door01.wav>;
SOUND Door04Snd, <door04.wav>;
SOUND Door08Snd, <door08.wav>;
SOUND Door09Snd, <door09.wav>;

///////////////////////////////////
// Textures
///////////////////////////////////
TEXTURE WWd04Tex {
        SCALE_XY        34,36;
        BMAPS   WWd04Bmp;
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
THING Door05GeniusTng {
        TEXTURE         NullTex;
        FLAGS           INVISIBLE;
}
THING Door06GeniusTng {
        TEXTURE         NullTex;
        FLAGS           INVISIBLE;
}
THING Door07GeniusTng {
        TEXTURE         NullTex;
        FLAGS           INVISIBLE;
}
THING Door08GeniusTng {
        TEXTURE         NullTex;
        FLAGS           INVISIBLE;
}

///////////////////////////////////
// Walls
///////////////////////////////////
WALL Door1Wall 
{
        TEXTURE  WWd04Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
        IF_NEAR  OpenDoor01;
}
WALL Door2Wall 
{
        TEXTURE  WWd04Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
        IF_NEAR  OpenDoor02;
}
WALL Door3Wall 
{
        TEXTURE  WWd04Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
        IF_NEAR  OpenDoor03;
}
WALL Door4Wall 
{
        TEXTURE  WWd04Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
        IF_NEAR  OpenDoor04;
}
WALL Door5Wall 
{
        TEXTURE  WWd04Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
        IF_NEAR  OpenDoor05;
}
WALL Door6Wall 
{
        TEXTURE  WWd04Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
        IF_NEAR  OpenDoor06;
}
WALL Door7Wall 
{
        TEXTURE  WWd04Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
        IF_NEAR  OpenDoor07;
}
WALL Door8Wall 
{
        TEXTURE  WWd04Tex;
        POSITION 1;
        FLAGS    PORTCULLIS;
        IF_NEAR  OpenDoor08;
}

///////////////////////////////////
// Door Regions
///////////////////////////////////
REGION Door01Rgn
{
        FLOOR_HGT 35;
        CEIL_HGT   40;
        FLOOR_TEX WWd02Tex;
        CEIL_TEX WWd02Tex;
        GENIUS    Door01GeniusTng;
        AMBIENT 0.7;
}
REGION Door02Rgn
{
        FLOOR_HGT 35;
        CEIL_HGT   40;
        FLOOR_TEX WWd02Tex;
        CEIL_TEX WWd02Tex;
        GENIUS    Door02GeniusTng;
        AMBIENT 0.7;
}
REGION Door03Rgn
{
        FLOOR_HGT 35;
        CEIL_HGT   40;
        FLOOR_TEX WWd02Tex;
        CEIL_TEX WWd02Tex;
        GENIUS    Door03GeniusTng;
        AMBIENT 0.7;
}
REGION Door04Rgn
{
        FLOOR_HGT 35;
        CEIL_HGT   40;
        FLOOR_TEX WWd02Tex;
        CEIL_TEX WWd02Tex;
        GENIUS    Door04GeniusTng;
        AMBIENT 0.7;
}
REGION Door05Rgn
{
        FLOOR_HGT 35;
        CEIL_HGT   40;
        FLOOR_TEX WWd02Tex;
        CEIL_TEX WWd02Tex;
        GENIUS    Door05GeniusTng;
        AMBIENT 0.7;
}
REGION Door06Rgn
{
        FLOOR_HGT 35;
        CEIL_HGT   40;
        FLOOR_TEX FWd01Tex;
        CEIL_TEX WPl05Tex;
        GENIUS    Door06GeniusTng;
        AMBIENT 0.5;
}
REGION Door07Rgn
{
        FLOOR_HGT 35;
        CEIL_HGT   40;
        FLOOR_TEX WWd02Tex;
        CEIL_TEX WWd02Tex;
        GENIUS    Door07GeniusTng;
        AMBIENT 0.7;
}
REGION Door08Rgn
{
        FLOOR_HGT 35;
        CEIL_HGT   40;
        FLOOR_TEX WWd02Tex;
        CEIL_TEX WWd02Tex;
        GENIUS    Door08GeniusTng;
        AMBIENT 0.7;
}

///////////////////////////////////
// Actions
///////////////////////////////////
ACTION OpenDoor01 {
   IF_ABOVE movingDoor, 0;
      END;
   SET_ALL 	Door1Wall.IF_NEAR, NULL;
   SET    	DOOR_TO_MOVE, Door01Rgn;
   SET    	doorAngle, 1.57;
   CALL   	MoveDoor;
}
ACTION OpenDoor02 {
   IF_ABOVE movingDoor, 0;
      END;
   SET_ALL 	Door2Wall.IF_NEAR, NULL;
   SET    	DOOR_TO_MOVE, Door02Rgn;
   SET    	doorAngle, 1.57;
   CALL   	MoveDoor;
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
   IF_NEQUAL movingDoor, 0;
        END;     
   SET    DOOR_TO_MOVE, Door03Rgn;
   SET    doorAngle, 1.57;
   SET MY.DIST, 8;
   PLAY_SOUND Door09Snd, 0.5, MY;
   CALL   MoveDoor;   
   SET_ALL Door3Wall.IF_NEAR, NULL;
}
ACTION OpenDoor04 {
   IF_EQUAL Key2,1;
	  GOTO cont;
   SET MY.DIST, 8;
   SET MY.IF_FAR, ResetDoor;
   SET MESSAGE_TEXT, Wrn07Str;
   CALL DisplayMessage;
   PLAY_SOUND Door08Snd, 0.5, MY;
   END;
cont:
   IF_NEQUAL movingDoor, 0;
        END;     
   SET    DOOR_TO_MOVE, Door04Rgn;
   SET    doorAngle, 1.57;
   SET MY.DIST, 8;
   PLAY_SOUND Door09Snd, 0.5, MY;
   CALL   MoveDoor;   
   SET_ALL Door4Wall.IF_NEAR, NULL;
}
ACTION OpenDoor05 {
   IF_ABOVE movingDoor, 0;
      END;
   SET_ALL 	Door5Wall.IF_NEAR, NULL;
   SET    	DOOR_TO_MOVE, Door05Rgn;
   SET    	doorAngle, 1.57;
   CALL   	MoveDoor;
}
ACTION OpenDoor06 {
   IF_EQUAL Key4,1;
	  GOTO cont;
   SET MY.DIST, 8;
   SET MY.IF_FAR, ResetDoor;
   SET MESSAGE_TEXT, Wrn07Str;
   CALL DisplayMessage;
   PLAY_SOUND Door08Snd, 0.5, MY;
   END;
cont:
   IF_NEQUAL movingDoor, 0;
        END;     
   SET    DOOR_TO_MOVE, Door06Rgn;
   SET    doorAngle, 1.57;
   SET MY.DIST, 8;
   PLAY_SOUND Door09Snd, 0.5, MY;
   CALL   MoveDoor;   
   SET_ALL Door6Wall.IF_NEAR, NULL;
}
ACTION OpenDoor07 {
   IF_EQUAL Key1,1;
	  GOTO cont;
   SET MY.DIST, 8;
   SET MY.IF_FAR, ResetDoor;
   SET MESSAGE_TEXT, Wrn07Str;
   CALL DisplayMessage;
   PLAY_SOUND Door08Snd, 0.5, MY;
   END;
cont:
   IF_NEQUAL movingDoor, 0;
        END;     
   SET    DOOR_TO_MOVE, Door07Rgn;
   SET    doorAngle, 1.57;
   SET MY.DIST, 8;
   PLAY_SOUND Door09Snd, 0.5, MY;
   CALL   MoveDoor;   
   SET_ALL Door7Wall.IF_NEAR, NULL;
}
ACTION OpenDoor08 {
   IF_EQUAL Key3,1;
	  GOTO cont;
   SET MY.DIST, 8;
   SET MY.IF_FAR, ResetDoor;
   SET MESSAGE_TEXT, Wrn07Str;
   CALL DisplayMessage;
   PLAY_SOUND Door08Snd, 0.5, MY;
   END;
cont:
   IF_NEQUAL movingDoor, 0;
        END;     
   SET    DOOR_TO_MOVE, Door08Rgn;
   SET    doorAngle, 1.57;
   SET MY.DIST, 8;
   PLAY_SOUND Door09Snd, 0.5, MY;
   CALL   MoveDoor;   
   SET_ALL Door8Wall.IF_NEAR, NULL;
}

ACTION ResetDoor {
   SET MY.DIST, 0;
   SET MY.IF_FAR, NULL;
}

ACTION MoveDoor {
   IF_ABOVE movingDoor, 0;
      END;
   SET movingDoor, 1;
   PLAY_SOUND Door01Snd, 0.5, MY;
   IF_BELOW DOOR_TO_MOVE.FLAG8, 1;           // Door closed flag
      GOTO open;
   RULE doorAngle = doorAngle * -1;
   GOTO cont;
   open:
      SET DOOR_TO_MOVE.FLAG8, 1;
   cont:
      RULE doorSpeed = doorAngle / 20;
      SET  doorCounter, 0;
   move:
      ROTATE DOOR_TO_MOVE, doorSpeed;
      ADD doorCounter, 1;
      WAITT 1;
      IF_BELOW doorCounter, 20;
         GOTO move;
   IF_BELOW doorAngle,0;
      SET DOOR_TO_MOVE.FLAG8, 0;
   SET movingDoor, 0;
}
ACTION openUTIDoor
{
     IF_NEQUAL movingDoor, 0;
	END;
     SET_ALL UtiDoorWall.IF_NEAR, NULL;
     SET DOOR_TO_MOVE, UtiDoorRgn;
     SET doorPosition, UtiDoorWall;
     BRANCH openToSouth;
}
ACTION openToSouth
{
	SET movingDoor, 1;
      PLAY_SOUND Door04Snd,0.5;
      RULE doorPosition.SKILL7 =doorPosition.Y1 -0.1; // inicial
      RULE doorPosition.SKILL8 =doorPosition.SKILL7 -4 ; // intermediario
      
openloop:
      IF_BELOW  doorPosition.Y1,doorPosition.SKILL8;
              GOTO close;
      SHIFT  DOOR_TO_MOVE,0,-0.1;
      SET RENDER_MODE,1;
      WAIT 1;
      GOTO openloop;
close:
      WAIT 20;
      PLAY_SOUND Door04Snd,0.5;
closeloop:     
      IF_ABOVE doorPosition.Y1,doorPosition.SKILL7;
              GOTO finish;
      SHIFT  DOOR_TO_MOVE,0,0.1;
      SET RENDER_MODE,1;
      WAIT 1;
      GOTO closeloop;
finish:
      SET DOOR_TO_MOVE,NULL;
	SET_ALL UtiDoorWall.IF_NEAR, OpenUTIDoor;
	SET movingDoor, 0;
}
