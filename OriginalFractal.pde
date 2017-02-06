//keycode left and right
int angle = 0;
int num = 250;
int xNum = 250;
int yNum = 250;
public void setup()
{
	size(500,500);
	rectMode(CENTER);
}

public void draw()
{
	background(0);
	fill(0);
	rect(380,90,100,50);
	fill(255);

	rectangle(xNum,yNum,num);

}


public void keyPressed()
{
	if(key == CODED)
	{
		if(keyCode == UP)
		{
			num+=7;
			
		}
		if(keyCode ==DOWN)
		{
			num-=7;
		}
		
	}
	
}

public void rectangle(int x, int y, int rad)
{
	if(rad<200)
	{
		fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

		rect(x,y,rad,rad);
		
	}
	else  
	{
		//rectangle(x  ,y,rad/2);
		for(int i = 2 ; i<10 ; i*=2)
		{
		rectangle(x +rad/i , y , rad/(2*i));
		rectangle(x -rad/i , y , rad/(2*i));	
		rectangle(x, y+rad/i , rad/(2*i));
		rectangle(x, y-rad/i , rad/(2*i));


		rectangle(x , y , rad/i);	

		rectangle(x +rad/i , y , (rad/(2*i))/i);
		rectangle(x -rad/i , y , (rad/(2*i))/i);	
		rectangle(x, y+rad/i , (rad/(2*i))/i);
		rectangle(x, y-rad/i , (rad/(2*i))/i);

		}
	


	
	}
}