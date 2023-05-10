// tomado de https://www.youtube.com/watch?v=mNy9LWQYtaQ&t=494s&ab_channel=jucarave

//verifica que no se haya escrito todo el texto
if (textOnDisplay != text) {
	textOnDisplay += string_char_at(text, string_length(textOnDisplay) + 1); //toma la cantidad de caracteres del texto entero segun tamaño de último display
	alarm[0] = 3;   //ejecuta el evento en 3 frames
}