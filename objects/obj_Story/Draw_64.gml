
//origen de cuadro de texto
var x_tb=100;
var y_tb=100;


draw_set_colour(c_white);									//color cuadro
draw_rectangle(x_tb, y_tb, x_tb+400,y_tb+250, false);		//dibujo recuadro
draw_set_colour(c_black);									//color borde cuadro
draw_rectangle(x_tb, y_tb, x_tb+400,y_tb+250, true);		//dibujo solo borde (true)

// escribe texto con margenes de 15px, separacion 20px, máximo de línea 375
draw_set_font(f_purplesmile);
draw_text_ext(x_tb+15,y_tb+15, textOnDisplay,20,375);

