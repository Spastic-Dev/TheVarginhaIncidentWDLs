//**************
//Fixes Textures
//**************
TEXTURE NullTex
{
    SCALE_XY 1,1;
    BMAPS    NULL;
}
TEXTURE WSt01aTex  // janela
{
    SCALE_XY 50.5,39.333;
    BMAPS WSt01aBmp;
    ALBEDO 0.3;
    POS_X 80;
    POS_Y 150;
}

TEXTURE Fvg01Tex 
{
    SCALE_XY 32,32;
    BMAPS Fvg01Bmp;
    ALBEDO 0.5;
}
TEXTURE Mfn01Tex 
{
    SCALE_XY 16,24;
    BMAPS Mfn01Bmp;
    ALBEDO 0.3;
}

TEXTURE Fsl01Tex 
{
    SCALE_XY 16,16;
    BMAPS Fsl01Bmp;
    ALBEDO 0.5;
}

TEXTURE Fsl02Tex 
{
    SCALE_XY 12,12;
    BMAPS Fsl02Bmp;
    ALBEDO 0.5;
}

TEXTURE Fct01Tex 
{
    SCALE_XY 32,32;
    BMAPS Fct01Bmp;
    ALBEDO 0.5;
}

TEXTURE Fbr02Tex 
{
    SCALE_XY 32,32;
    BMAPS Fbr02Bmp;
    ALBEDO 0.5;
}

TEXTURE Ftl01Tex 
{
    SCALE_XY 64,64;
    BMAPS Ftl01Bmp;
    ALBEDO 0.5;
}

TEXTURE Wbr01Tex 
{
    SCALE_XY 32,32;
    BMAPS Wbr01Bmp;
    ALBEDO 0.5;
}
TEXTURE Cbr01Tex 
{
    SCALE_XY 32,32;
    BMAPS Wbr01Bmp;
    ALBEDO 0.5;
    SOUND   Cwt01Snd;
    SDIST   10;
    SVOL    0.2;
    FLAGS   SLOOP;
    AMBIENT -0.2;
}
TEXTURE Wbr02Tex 
{
    SCALE_XY 64,64;
    BMAPS Wbr02Bmp;
    ALBEDO 0.5;
}
TEXTURE Wbr03Tex 
{
    SCALE_XY 32,32;
    BMAPS Wbr03Bmp;
    ALBEDO 0.5;
}
TEXTURE Wbr03WindowTex 
{
    SCALE_XY 32,32;
    BMAPS Wbr03Bmp;
    ALBEDO 0.5;
    ATTACH WSt01aTex;
    POS_X	40;
}

TEXTURE Wwd04Tex 
{
    SCALE_XY 32,32;
    BMAPS Wwd04Bmp;
    ALBEDO 0.5;
}


TEXTURE  back01Tex {
    SIDES           5;
    BMAPS           back01Bmp,back01Bmp,back01Bmp,back01Bmp,back01Bmp;
    FLAGS           SKY;
}
TEXTURE Fvg51Tex 
{
    SCALE_XY 32,32;
    BMAPS Fvg01Bmp; //BMAPS Fvg51Bmp;
    ALBEDO 0.5;
}





