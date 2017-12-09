draw_self();						//Draws itself

if (flash > 0)						//If flash is greater then 0
{
	flash --;						//Subtract one from flash
	shader_set(sh_red);			//Set shader
	draw_self();					//Draw self with the shader
	shader_reset();					//Reset to original
}