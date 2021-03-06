Particle[] pat=new Particle[200];

Particle[] odo=new Particle[1];

Particle[] jack=new Particle[1];
void setup()
{
	size(400,400);
	
	for(int i=0; i<pat.length; i++)
	{
		pat[i]=new NormalParticle();
	}

	for(int o=0; o<odo.length; o++)
	{
		odo[o]=new OddballParticle();
	}

	for(int j=0; j<jack.length; j++)
	{
		jack[j]=new JumboParticle();
	}

	background(0);

}
void draw()
{
	fill(0,0,0,30);
	rect(0,0,400,400);
	for(int i=0; i<pat.length; i++)
	{
		pat[i].move();
		pat[i].show();
	}

	for(int o=0; o<odo.length; o++)
	{
		odo[o].move();
		odo[o].show();
	}

	for(int j=0; j<jack.length; j++)
	{
		jack[j].move();
		jack[j].show();
	}	
}
interface Particle
{
	public void show();
	public void move();
}
class NormalParticle implements Particle
{
	double myX;
	double myY;
	double Speed;
	double Angle;
	int Color;	
	NormalParticle() 
	{
		Color=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		myX=200;
		myY=200;
		Angle=(int)(Math.random()*360)+1;
		Speed=(Math.random()*2)+1;
	}
	public void move() 
	{	
	    myX+=(Math.cos(Angle)*Speed);
	    myY+=(Math.sin(Angle)*Speed);
	    Angle+=.02; 
    }
    public void show()
    {
    	noStroke();
    	fill(Color);
    	ellipse((float)myX,(float)myY,(float)10,(float)10);
    	stroke(0);
    }
}
class OddballParticle implements Particle
{
	double myX;
	double myY;
	double Speed;
	double Angle;
	int Color;	
	OddballParticle() 
	{
		Color=(255);
		myX=50;
		myY=50;
		Angle=(int)(Math.random()*360)+1;
		Speed=3;
	}
	public void move()
	{
		myX-=(Math.cos(Angle)*Speed);
	    myY-=(Math.sin(Angle)*Speed);
	    Angle+=.05;
	}
	public void show()
	{
		noStroke();
    	fill(Color,0,0);
    	ellipse((float)myX,(float)myY,(float)15,(float)15);
    	stroke(0);
	}
}
class JumboParticle implements Particle
{
	double myX;
	double myY;
	double Speed;
	double Angle;
	int Color;
	JumboParticle()
	{
		Color=(255);
		myX=350;
		myY=350;
		Angle=(int)(Math.random()*360)+1;
		Speed=.75;
	}
	public void move()
	{
		myX-=(Math.cos(Angle)*Speed);
	    myY-=(Math.sin(Angle)*Speed);
	    Angle+=.01;
	}
	public void show()
	{
		noStroke();
    	fill(0,0,Color);
    	ellipse((float)myX,(float)myY,(float)30,(float)30);
    	stroke(0);
    }
}

