Bacteria[] colony;//declare bacteria variables here 

void setup()   
{     
	size(400,400); //initialize bacteria variables here 
	background(0);
	colony = new Bacteria[100];
	for(int i = 0 ; i < colony.length; i++) 
	{
		colony[i] = new Bacteria();
	}
}

void draw()
{
	for(int i = 0 ; i < colony.length; i++) //move and show the bacteria
	{
		colony[i].move();
		colony[i].show();
		//Bacteria = new colony();
	}
	
}

class Bacteria 
{
	int myX, myY; //lots of java!   
	Bacteria()
	{
		myX = 200;
		myY = 200;
	}

	void move()
	{
		myX = myX + (int)(Math.random()*7)-3;
		myY = myY + (int)(Math.random()*7)-3;
	}

	void show()
	{
		fill((int)(Math.random()*256),(int)(Math.random()*64)+191,255);// edit so it becomes a certain color like white or different shades of blue
		ellipse(myX,myY,10,10);
	}
}