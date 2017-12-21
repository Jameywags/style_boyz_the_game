with(other)
{
	if (slow_hit == 0)
	{
		hsp = hsp/4
		;
		slow_hit = 10;
	}
slow_hit = max(slow_hit-1,0)
	
}