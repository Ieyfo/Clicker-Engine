//sample bubble script

//  sample      scr_bubble(100,200,"This bubble is useful",250,0,true);
//            
//              scr_bubble(x,y,bubble_msg,bubble_width,bubble_position,destroy);
//
//
//   Note:  YOU MUST CONFIGURE THE "WITH" BELOW WITH YOUR DEFAULT BUBBLE BEHAVIOUR,  LIKE WHICH SPRITE, TEXT COLOR..ETC
//

var bx,by,bmsg,bwidth,bdir,bclose,tmpb;


bx=argument0;
by=argument1;
bmsg=argument2;
bwidth=argument3;
bdir=argument4;
bclose=argument5;


tmpbub=instance_create(bx,by,ui_bubble);
    with (tmpbub) 
      { 
        uiBubbleWidth=bwidth;
        uiBubblePos=bdir      
        uiTextValue=bmsg;
        uiTextColor=c_white;
        curLB.uiBackColor2=c_black;
        curLB.uiDrawOutlines=1;        
        uiFont=arial_font;
        uiBubbleSprite=spr_bubble;
        uiAutoDestroy=bclose;
        depth=-9999999;
        uiBubbleMin=70;  //minheight
        uiPopUp=true;
      } 


