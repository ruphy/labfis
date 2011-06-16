#include <stdio.h>
#include <math.h>
#include <ctype.h>
#define N 100

struct persona{
	char name[30];
	int  py;
}persona;

/*Inizializzazione*/
void init(persona coda*)
{
	
}

/*Funzione di riorganizzazione vettoriale*/
void check
{
}

/*Funzione di visualizzazione*/
void visual(persona coda*,int i*, int f*)
{
	
	while(i
	{

	}
	
}
/*Funzione di inserimento*/
void insert(persona coda*,int i*, int f*,char c*)
{	
	
	int	x=0;

	while(c!='\0')
	{
		if(isdigit(c))
			coda[f+1]->py= c-'0';
		if(coda[f+1].py>4 || coda[f+1].py<0)
			exit; 
		else
			coda[f+1]->name[x]=c;
		x++;
	} 

	f++;

	if(f==99)
		check();
			
}
/*Funzione di uscita*/
void exit(persona coda*, int i*, int f*);
{
/*Cancello aumentando la testa aumentando l'indice di uno, verra sovrascritto successivamente */	
	i++;
}
/*Funzione per l'acquisizione*/
void fetch(persona coda*,int i*,int f*)
{	
	while(c!='\n' || c=='n')
	{
		if(c=='i')
		{ 		
			insert(coda,i,f,c);
		}
	
		else if{ c=='e'}
		{
			exit(coda,i,f);
		}
		
	c=getchar();	

	}	

}
int main()
{	
	char c;
	persona coda[100];
	int i=0,f=0,t;

	init();

	while(t<N) 
	{
		c = getchar();
		fetch(coda,i,f,c);
		t++;
	}	

			
}

:
