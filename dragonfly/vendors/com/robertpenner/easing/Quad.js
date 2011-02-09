function Quad(){};

Quad.easeIn = function( t, b, c, d )
{
	return c * (t /= d) * t + b;
}

Quad.easeOut = function( t, b, c, d )
{
	return -c * (t /= d) * (t - 2) + b;
}

Quad.easeInOut = function( t, b, c, d )
{
	if ((t /= d / 2) < 1) return c / 2 * t * t + b;
	return -c / 2 * ((--t) * (t - 2) - 1) + b;
}
