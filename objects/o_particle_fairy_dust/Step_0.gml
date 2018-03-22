part_emitter_region(part_fairy_dust_sys, part_fairy_dust_emit, mouse_x-5, mouse_x+5, mouse_y+5, mouse_y-5, 0, 0);

if mouse_x != old_x || mouse_y != old_y
{
	part_emitter_burst(part_fairy_dust_sys, part_fairy_dust_emit, part_fairy_dust, 10);
}
old_x = mouse_x;
old_y = mouse_y;