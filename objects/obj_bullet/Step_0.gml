//Step para la bala-plataforma
// x_speed definida en variable definitions

// Ajuste de la colision con objetos solidos
if (!place_free(x + move_x, y))
{
	x += 0*x_speed; // se detiene bala contra objeto
}
else
{
	x += move_x*x_speed; // Movimiento horizontal
}



