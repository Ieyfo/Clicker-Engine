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


//with (CurListB)    //sample to get other info from listbox_ext
//   {CurLineSt= items[CurIndex];
//   };
   
///DRAW TEXT LINE HERE......    Sample
//*********************************************


draw_set_color(c_green);   

//if (mouse_x>=curX) && (mouse_x<=curX+curWidth)
//  && (mouse_y>=curY-curHeight) && (mouse_y<=curY) { curListB.itemindex=curIndex;
//                                                  }   

if curSelected then {draw_rectangle_color(curX,curY,curX+curWidth,curY+curHeight,c_blue,c_blue,c_navy,c_navy,false);
                     draw_set_color(c_white);
                    } 

if (curIndex mod 7) == 2   //just some sample stuff to change the variable height by lineitem
    {
      curHeight = sprite_get_height(spr_home)+4;     
      //hilite is bigger so we draw a bigger hilite box  
      if curSelected then {draw_rectangle_color(curX,curY,curX+curWidth,curY+curHeight,c_blue,c_blue,c_navy,c_navy,false);
                           draw_set_color(c_white);
                          } 
      draw_sprite(spr_home,0,curX+15, curY+1);
      draw_text(curX+100,curY+5,curLineSt);
    }
    else draw_text(curX+4,curY+2,curLineSt);

draw_set_color(c_orange);
draw_text(curX+275,curY+5, '$4.50');    
    
draw_set_color(c_gray);
draw_line(curX,curY+curHeight,curX+curWidth,curY+curHeight);



//**********************************************

return curHeight;
