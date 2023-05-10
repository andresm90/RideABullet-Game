draw_set_font(f_purplesmile);						//set font
draw_set_color(c_black);							//set color de font

var s_min="";										//variables de display
var s_seg="";										//variables de display
var seg_extra=0;									//segundos restantes
var min_extra=0;									//minutos extra de segundos

//transformacion de seg extra a min
if (global.score_seg>=60)
{
	min_extra=floor(global.score_seg / 60);			//obtiene min extra cuando +60s
	seg_extra= global.score_seg mod 60;				//cociente que obtiene los segundos restantes
	
	global.score_min = global.score_min+min_extra;  //Transfiere los mins extra al score
    global.score_seg = seg_extra;					//Transfiere los segundos restantes al score
}

//formato dos digitos min
if (global.score_min<10)
{s_min="0"+string(global.score_min);}				//agrega el 0 si tiene menos de 10min
else
{s_min=string(global.score_min);}

//formato dos digitos seg
if (global.score_seg<10)
{s_seg="0"+string(global.score_seg);}				//agrega el 0 si tiene menos de 10 seg
else
{s_seg=string(global.score_seg);}

if (room_get_name(room)== "CREDITS")
{draw_set_font(f_bullet);						     //set font titulo
draw_set_color(c_white);							//color titulo	
draw_text(90, 600,"Score: "+s_min+":"+s_seg);		//display score
}
else
{
draw_text(25, 730,"Score: "+s_min+":"+s_seg);		//display score
}
//cambio de direccion del sprite, tomado de proyecto clase 2, sesion virtual 2

if look_right=true 
{
	image_xscale=1;
}
else
{
	image_xscale=-1;
}


//Cambio de sprite segun movimiento, tomado de proyecto clase 2, sesion virtual 2
if (dir!=0)
{
	sprite_index=spr_robot_move;						//sprite de robot en movimiento
}
else
{
	sprite_index=spr_robot;								//sprite robot quieto
}
