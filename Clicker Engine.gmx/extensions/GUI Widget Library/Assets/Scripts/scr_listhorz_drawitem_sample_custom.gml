//custom draw on a ui_listbox_ext
//must set CurListB.lineheight to actual height we draw

var curListB, curIndex, curX,curY, curSelected,returnHeight,curLineSt;

curListB     = argument0;    // self.id of listbox_ext;
curIndex     = argument1;    // index (0 based) of items of listbox
curX         = argument2;    //X  to draw
curY         = argument3;    //Y  to draw
curHeight    = argument4;   // default height of lineitem (usually textheight,  return must be the actual height for variable heights)
curWidth     = argument5;   // width of drawing area;
curLineSt    = argument6;    // cur string to display.
curSelected  = argument7;    //if line is highlited  true/false
curSprite    = argument8;    //if sprites[x] is defined for listbox


//with (CurListB)    //sample to get other info from listbox_horz
//   {CurLineSt= items[CurIndex];
//   };
   
///DRAW TEXT LINE HERE......    Sample
//*********************************************


draw_set_color(c_navy);   

//if curSelected then {draw_rectangle_color(curX,curY,curX+curWidth,curY+curHeight,c_blue,c_blue,c_navy,c_navy,false);
//                     draw_set_color(c_white);
//                    } 

if curSelected draw_sprite_stretched(curSprite,0,curX+2,curY,120, 120);
   else draw_sprite_stretched(curSprite,0,curX+10, curY+10,90,80);

   
draw_text(curX+(curWidth div 2),curY+curHeight - 30,curLineSt);


   
//draw_set_color(c_gray);
//draw_line(curX,curY,curX,curY+curHeight);



//**********************************************

return curWidth;
