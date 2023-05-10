var room_name = room_get_name(room);				//obtiene nombre del room

// Verifica si está en los primeros 6 rooms (mundo 1)
if (room_name == "MENU" || room_name == "Room1" || room_name == "Room2" || room_name == "Room3" || room_name == "Room4" || room_name == "Room5") {	
   
    audio_play_sound(snd_Sky,10,true);				//reproduce sonido sky, vol 10, en loop
}//if mundo 1
else {
	
	if (room_name == "Room6" || room_name == "Room7" || room_name == "Room8" || room_name == "Room9" || room_name == "Room10") {
    audio_play_sound(snd_Space,10,true);			//reproduce sonido space, vol 10, en loop
	}//if verifica si está en el mundo 2
	else
	{
		audio_play_sound(snd_Final,10,true);			//reproduce sonido final, vol 10, en loop
	}//else 3er mundo
		
}//else 1er mundo

