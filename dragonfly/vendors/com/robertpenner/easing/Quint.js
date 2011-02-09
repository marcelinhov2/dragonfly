function Quint(){};

Quint.easeIn = function( t, b, c, d )
{
	return c * (t /= d) * t * t * t * t + b;
}

Quint.easeOut = function( t, b, c, d )
{
	return c * ((t = t / d - 1) * t * t * t * t + 1) + b;
}

Quint.easeInOut = function( t, b, c, d )
{
	if ((t /= d / 2) < 1) return c / 2 * t * t * t * t * t + b;
	return c / 2 * ((t -= 2) * t * t * t * t + 2) + b;
}