//Step para la bala-plataforma
//y speed definida en variable definition

// Ajuste de la colision con objetos solidos
if (!place_free(x, y + move_y))
{
	y += 0*y_speed; // se detiene bala contra objeto
}
else
{
	y += -move_y*y_speed; // Movimiento vertical
}



