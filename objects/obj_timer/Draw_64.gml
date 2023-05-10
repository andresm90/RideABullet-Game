var minutes = "";
var segs = "";

draw_set_font(f_bullet); // set font for text display
draw_set_color(c_white); // set color for text display

//formato dos digitos min
if (mytimeMin<10)
{minutes="0"+string(mytimeMin);}
else
{minutes=string(mytimeMin);}

//formato dos digitos seg
if (mytime<10)
{segs="0"+string(mytime);}
else
{segs=string(mytime);}

draw_text(1200, 25,minutes+":"+segs); // display elapsed time


