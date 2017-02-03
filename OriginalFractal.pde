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

	//recursion(250,250,800);
	rectangle(xNum,yNum,num);

	text("Mouse X: "+mouseX,400,100);
	text("Mouse Y: "+mouseY,400,125);
}
/*
public void recursion(int x, int y, int rad)
{
	if(rad<200)
	{
		fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

		ellipse(x,y,rad,rad);
		
	}
	else  
	{
		recursion(x  ,y,rad/2);
		recursion(x +rad/2 , y , rad/4);
		recursion(x -rad/2 , y , rad/4);
		recursion(x -rad/4 , y , rad/8);
		//spin this around the circle
		//recursion( (int)(x +Math.cos(rad/4)), (int)(y + Math.sin(rad/4)) , rad/8);

		recursion(x, y+rad/2 , rad/4);
		recursion(x, y-rad/2 , rad/4);
		//rotate(.2);
		//recursion(x+rad/2,y,rad/4);
		//recursion(x+rad/4, y, rad/8);
	
	}

}*/

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
		if(keyCode == LEFT)
		{
			angle=2;;
			double dRadians =angle*(Math.PI/180);    
			 xNum = (int)((xNum* Math.cos(dRadians)) - (yNum * Math.sin(dRadians))+xNum);     
      	yNum = (int)((xNum* Math.sin(dRadians)) + (yNum * Math.cos(dRadians))+yNum);      
			//dRadians++;
		}
		if(keyCode == RIGHT)
		{

		}

	}
	
}

public void rectangle(int x, int y, int rad)
{
	if(rad<200)
	{
		//fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

		rect(x,y,rad,rad);
		
	}
	else  
	{
		rectangle(x  ,y,rad/2);
		rectangle(x +rad/2 , y , rad/4);
		rectangle(x -rad/2 , y , rad/4);
		rectangle(x -rad/4 , y , rad/8);
		//spin this around the circle
		//recursion( (int)(x +Math.cos(rad/4)), (int)(y + Math.sin(rad/4)) , rad/8);

		rectangle(x, y+rad/2 , rad/4);
		rectangle(x, y-rad/2 , rad/4);
		//rotate(.2);
		//recursion(x+rad/2,y,rad/4);
		//recursion(x+rad/4, y, rad/8);
	
	}
}