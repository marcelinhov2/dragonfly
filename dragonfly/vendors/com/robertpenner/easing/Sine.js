function Sine(){};

Sine.easeIn = function( t, b, c, d )
{
	return -c * Math.cos( t / d * (Math.PI / 2) ) + c + b;
}

Sine.easeOut = function( t, b, c, d )
{
	return c * Math.sin( t / d * (Math.PI / 2) ) + b;
}

Sine.easeInOut = function( t, b, c, d )
{
	return -c / 2 * (Math.cos( Math.PI * t / d ) - 1) + b;
}
