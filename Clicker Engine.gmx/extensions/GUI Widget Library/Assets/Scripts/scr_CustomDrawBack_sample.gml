// This is used to draw custom background drawing...for fancy backgrounds on panels/dialogs..etc


//Parameters  x,y,x2,y2,BackColor1,BackColor2

var xPos,yPos,xPos2,xPos2,color1,color2;

xPos=argument0;
yPos=argument1;
xPos2=argument2;
yPos2=argument3;
color1=argument4;
color2=argument5;



//sample
draw_set_color(color1);
draw_circle(xPos+((xPos2-xPos) div 2),yPos+((yPos2-yPos) div 2),(xPos2-xPos) div 2,false);



