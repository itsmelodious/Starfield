Particle[] p = new Particle[100];
void setup()
{
	size(500, 500);
	background(0);
	for(int i = 0; i < p.length; i++)
	{
		p[i] = new NormalParticle();
		p[0] = new OddballParticle();
		p[1] = new JumboParticle();
	}
}
void draw()
{
	background(0);
	for (int i = 0; i < p.length; i++)
	{
		p[i].move();
		p[i].show();
	}
}
void mousePressed()
{
	for (int i = 2; i < p.length; i++)
	{
		((NormalParticle)p[i]).getSpeed();
		((NormalParticle)p[i]).speed = ((NormalParticle)p[i]).speed + 300;
	}
}
class NormalParticle implements Particle
{
	double x, y, angle, speed;
	int c, r, g, b;
	NormalParticle()
	{
		x = Math.random()*500;
		y = Math.random()*500;
		angle = Math.PI*2*Math.random();
		speed = Math.random()*10;
		c = color((int)((Math.random()*128)+127), (int)((Math.random()*128)+127), (int)((Math.random()*128)+127));
	}
	public void move()
	{
		x = x + Math.cos(angle*speed);
		y = y + Math.sin(angle*speed);
		if (x > 500 || x < 0)
		{
			x = Math.random()*500;
			angle = Math.PI*2*Math.random();
			speed = Math.random()*10;
		}
		if (y > 500 || y < 0)
		{
			y = Math.random()*500;
			angle = Math.PI*2*Math.random();
			speed = Math.random()*10;
		}
	}
	public void show()
	{
		fill(c);
		ellipse((int)x, (int)y, 5, 5);
	}
	public double getSpeed()
	{
		return speed;
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	double x, y, angle, speed;
	int c, r, g, b, s;
	OddballParticle()
	{
		x = Math.random()*500;
		y = Math.random()*500;
		angle = Math.PI*2*Math.random();
		speed = Math.random()*10;
		c = color((int)((Math.random()*128)+127), (int)((Math.random()*128)+127), (int)((Math.random()*128)+127));
		s = (int)(Math.random()*10) + 7;
	}
	public void move()
	{
		x = x + (int)(Math.random()*5)-2;
		y = y + (int)(Math.random()*5)-2;
		if (x > 500 || x < 0)
		{
			x = Math.random()*500;
			angle = Math.PI*2*Math.random();
			speed = Math.random()*10;
		}
		if (y > 500 || y < 0)
		{
			y = Math.random()*500;
			angle = Math.PI*2*Math.random();
			speed = Math.random()*10;
		}
	}
	public void show()
	{
		stroke(c);
		strokeWeight(5);
		line((int)x, (int)y, (int)x + s, (int)y + s);
		line((int)x + s, (int)y, (int)x, (int)y + s);
		noStroke();
	}
}
class JumboParticle extends NormalParticle
{
	public void show()
	{
		fill(c);
		ellipse((int)x, (int)y, 30, 30);
	}
}

