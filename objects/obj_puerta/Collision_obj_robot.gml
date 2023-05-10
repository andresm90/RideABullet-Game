/// colision de obj_puerta con obj_robot

Score_time = instance_find(obj_timer, 0);			//verifica que haya un timer, y asigna ID
var room_name = room_get_name(room);				//obtiene nombre del room


if room_exists(room_next(room))						//si existe un siguiente room, next room
{	
	// Verifica si hay cambio de mundo
	if (room_name == "Room5" || room_name == "Room10"){
	audio_stop_all();		}					//cambio de mundo, cambio de musica
	
	if (room_get_name(room) != "MENU")			//si no es el Menu acumula Score del objeto timer
	{
	// Acumular score de tiempo en variables globales
    global.score_min = global.score_min+Score_time.mytimeMin;
    global.score_seg = global.score_seg+Score_time.mytime;
	room_goto_next();
	}//if corrobora que no sea el menu para guardar score
	else
	{
		room_goto_next(); //avanza del menu
	}//else avanza del menu
	
}// if corrobora que exista un room siguiente
else
{
	game_end();									// termina el juego si no hay otro room
}//else si existe un room

