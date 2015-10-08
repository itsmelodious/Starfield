NormalParticle p = new NormalParticle();
void setup()
{
	size(500, 500);
	background(0);
}
void draw()
{
	background(0);
	p.move();
	p.show();
}
class NormalParticle
{
	double x, y, angle, speed;
	int c, r, g, b;
	NormalParticle()
	{
		x = Math.random()*500;
		y = Math.random()*500;
		angle = Math.random()*2;
		speed = Math.random()*3;
		// r = (int)(Math.random()*128)+127;
		// g = (int)(Math.random()*128)+127;
		// b = (int)(Math.random()*128)+127;
		c = color(255, 255, 255);
	}
	void move()
	{
		x = x + Math.cos(angle*speed);
		y = y + Math.sin(angle*speed);
	}
	void show()
	{
		fill(c);
		ellipse((int)x, (int)y, 25, 25);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

