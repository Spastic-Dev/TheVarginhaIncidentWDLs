REGION CtRampRgn
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt06cTex;
	FLOOR_HGT 30;
	CEIL_HGT 37;
	AMBIENT 0.8;
	FLAGS FLOOR_DESCEND,FLAG1;
}
REGION CtRampAcessRgn
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt06cTex;
	FLOOR_HGT 30;
	CEIL_HGT 37;
	AMBIENT 0.8;
	FLAGS FLAG1;
}

//**** Centro
REGION CtHoleRgn
{
	FLOOR_TEX WMt16cTex;//FRb01Tex;
	CEIL_TEX FMt06cTex;
	FLOOR_HGT -20;
	CEIL_HGT 47;
	AMBIENT 0.7;
	FLAGS FLAG2;
	IF_ENTER DropInHole;
}
REGION CtOutCircle4Rgn
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt06cTex;
	FLOOR_HGT 0;
	CEIL_HGT 7;
	AMBIENT 0.7;
	FLAGS FLAG1;
}
REGION CtOutCircle3Rgn
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt06cTex;
	FLOOR_HGT 10;
	CEIL_HGT 17;
	AMBIENT 0.7;
	BELOW CtOutCircle4Rgn;
	FLAGS FLAG1;
}
REGION CtOutCircle2Rgn
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt06cTex;
	FLOOR_HGT 20;
	CEIL_HGT 27;
	AMBIENT 0.7;
	BELOW CtOutCircle3Rgn;
	FLAGS FLAG1;
}
REGION CtOutCircle1Rgn
{
	FLOOR_TEX FRb01Tex;
	CEIL_TEX FMt06cTex;
	FLOOR_HGT 30;
	CEIL_HGT 37;
	AMBIENT 0.7;
	BELOW CtOutCircle2Rgn;
	FLAGS FLAG1;
}
//Rotatron
THING RotorGeniusTng {
        TEXTURE         GeniusRotorTex;
        FLAGS           INVISIBLE;

}
THING SoundEmisorTng {
        TEXTURE         GeratorTex;
        FLAGS GROUND;
	HEIGHT -50;
}

REGION RtAleta4Rgn
{
	FLOOR_TEX FMt06cTex;
	CEIL_TEX FMt06cTex;
	FLOOR_HGT 0.5;
	CEIL_HGT 6.5;
	AMBIENT 0.6;
	GENIUS RotorGeniusTng;
	FLAGS STICKY;
}
REGION RtAleta3Rgn
{
	FLOOR_TEX FMt06cTex;
	CEIL_TEX FMt06cTex;
	FLOOR_HGT 10.5;
	CEIL_HGT 16.5;
	AMBIENT 0.6;
	GENIUS RotorGeniusTng;
	BELOW RtAleta4Rgn;
	FLAGS STICKY;
}
REGION RtAleta2Rgn
{
	FLOOR_TEX FMt06cTex;
	CEIL_TEX FMt06cTex;
	FLOOR_HGT 20.5;
	CEIL_HGT 26.5;
	AMBIENT 0.6;
	GENIUS RotorGeniusTng;
	BELOW RtAleta3Rgn;
	FLAGS STICKY;
}
REGION RtAleta1Rgn
{
	FLOOR_TEX FMt06cTex;
	CEIL_TEX FMt06cTex;
	FLOOR_HGT 30.5;
	CEIL_HGT 47;
	AMBIENT 0.6;
	GENIUS RotorGeniusTng;
	BELOW RtAleta2Rgn;
	FLAGS STICKY;
	EACH_TICK Rotation;
}

ACTION      Rotation
{ 


 	IF_ABOVE        ilumination, 0.90;
                SET lUp4, -0.05;
        IF_BELOW        ilumination, 0.20;
                SET lUp4, 0.05;
        IF_EQUAL        lUp4, 0;
                SET lUp4, 0.05;
        ADD             ilumination, lUp4;

	SET_ALL	CtHoleRgn.AMBIENT, ilumination;
	SET_ALL	CtOutCircle1Rgn.AMBIENT, ilumination;
	SET_ALL	CtOutCircle2Rgn.AMBIENT, ilumination;
	SET_ALL	CtOutCircle3Rgn.AMBIENT, ilumination;
	SET_ALL	CtOutCircle4Rgn.AMBIENT, ilumination;
	SET_ALL	CtRampAcessRgn.AMBIENT, ilumination;
	SET_ALL	CtRampRgn.AMBIENT, ilumination;
	SET_ALL	RtAleta1Rgn.AMBIENT, ilumination;
	SET_ALL	RtAleta2Rgn.AMBIENT, ilumination;
	SET_ALL	RtAleta3Rgn.AMBIENT, ilumination;
	SET_ALL	RtAleta4Rgn.AMBIENT, ilumination;
	IF_EQUAL	CtHoleRgn.VISIBLE,1;
			GOTO Rotate;
	IF_EQUAL 	CtOutCircle1Rgn.VISIBLE,1;
			GOTO Rotate;
	IF_EQUAL 	CtOutCircle2Rgn.VISIBLE,1;
			GOTO Rotate;
	IF_EQUAL 	CtOutCircle3Rgn.VISIBLE,1;
			GOTO Rotate;
	IF_EQUAL 	CtOutCircle4Rgn.VISIBLE,1;
			GOTO Rotate;
	END;
Rotate:
	ROTATE      RtAleta1Rgn,0.01;
	ADD		RtAleta1Rgn.FLOOR_ANGLE,0.01;
	//ADD		RtAleta1Rgn.CEIL_ANGLE,0.01;
   	
	ROTATE      RtAleta2Rgn,0.01;
	ADD		RtAleta2Rgn.FLOOR_ANGLE,0.01;
	ADD		RtAleta2Rgn.CEIL_ANGLE,0.01;

	ROTATE      RtAleta3Rgn,0.01;
	ADD		RtAleta3Rgn.FLOOR_ANGLE,0.01;
	ADD		RtAleta3Rgn.CEIL_ANGLE,0.01;

	ROTATE      RtAleta4Rgn,0.01;
	ADD		RtAleta4Rgn.FLOOR_ANGLE,0.01;
	ADD		RtAleta4Rgn.CEIL_ANGLE,0.01;
}