/// @description Insert description here
// You can write your code in this editor

// Código de movimiento horizontal, gravedad y brinco del robot

var _right = keyboard_check(vk_right); // Detecto si la tecla derecha fue presionada
var _left = keyboard_check(vk_left); // Detecto si la tecla izquierda fue presionada
var _jump = keyboard_check_pressed(vk_up); // Detecto si la tecla arriba fue presionada

//tomado de proyecto clase 2, sesion virtual 2
if _right //Si right== 1
{
	look_right=true; 
}
else if _left //Si left == 1
{
	look_right=false;
}

dir = _right - _left; //Dirección es positiva o negatica
move_x = dir * x_speed; // Calcula la velocidad del movimiento horizontal

// Ajuste de la colision con objetos solidos
if (!place_free(x + move_x, y))
{
while (place_free(x + sign(move_x), y))
{
x += sign(move_x);
}
move_x = 0;
}

x += move_x; // Movimiento horizontal

// Gravedad
// Si no hay un objeto solido debajo, el jugador se cae
if (place_free(x, y + 1))
{
y_speed += grav;
}

// Salto
// Si esta colisionando con algun solido y la tecla up fue presionada
if (!place_free(x, y + 1) && _jump)
{
y_speed = jump_power;
}

// Ajuste de la colicion con objetos solidos
if (!place_free(x, y + y_speed))
{
while (place_free(x, y + sign(y_speed)))
{
y += sign(y_speed);
}
y_speed = 0;
}

y += y_speed; // Movimiento vertical




///Caidas

if (y > room_height )
	{
		x = 60;
		y = 60;
	}