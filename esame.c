#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <ctype.h>
#define N 100

struct persona {
	char name[30];
	int  py;
        struct persona *next;
	struct persona *prev;
};


typedef struct persona persona;


/*Funzione di visualizzazione*/
void visual(persona *head)
{	
	persona *aux;
	
	aux = head;	
	if(head!=NULL)
	{
		while(aux!=NULL)
		{
			printf("--------\n Name: %s \n Priority: %d",aux->name,aux->py);
			aux= aux->next;
		}
	}
	else
		printf("Coda vuota!");
}
/*Funzione di inserimento*/
void insert(persona *head)
{
	
	persona *aux,*old,*new;
	
	int numero;
	char c,name[30];
	int x,i;
	
	x=0;
	i=0;

	
	while(x<4)
        {
		c=getchar();
        	
		if(x==0)
                	numero = c-'0';
                else
                name[x]=c;
                x++;
        }       
	printf("%s,%d",name,numero);

	if(head==NULL)
	{
		/*Inizializza coda*/
		head = (persona*)malloc(sizeof(persona));
		head->py = numero;
		printf("Something");
		for(i=0;i<x+1;i++)
			head->name[i] = name[i];
	}
	else{

		aux = head;
    
		while(numero < aux->py )
		{	old = aux;
			aux = aux->next;
		}
	
		new = (persona*) malloc(sizeof(persona));
		new->py = numero;

		for(i=0;i<x+1;i++)
			new->name[i] = name[i];
	
		old->next = new;
		new->next = aux;
       			
		}
	
}

/*Funzione di uscita*/
/*void exit(persona *head)
{	
	persona *aux;


	if(head==NULL)
	{
		printf("\nNon ci sono utenti nella coda");
	}
	else{
		aux = head;
		aux = aux->next;
		head = aux;
		free(aux);
	}
}

/*Funzione per l'acquisizione*/
void fetch(persona *head)
{	
	char c;
	/*Controllo il primo carattere che è quello che mi fa diramare la funzione in due*/
	
	c=getchar();

	while(c!='\n' || c=='n')
	{
		if(c=='i')
		{ 		
			insert(head);
		}
	
		else if(c=='e')
		{
			
		}

	printf("ciao2");       
  
	c=getchar();	

	}	

}
int main(int argc, char *argv[])
{	
	
	char c;
	persona head;
	int t,n;
	n = 10;
	
	
	
	while(t < n) 
	{
		
		fetch(&head);
		visual(&head);
		t++;
	}	

			
}

