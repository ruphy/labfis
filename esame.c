#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <ctype.h>
#define N 100

struct persona {
	char name[30];
	int  py;
        struct persona *next;
};


typedef struct persona persona;


/*Funzione di visualizzazione*/
void visual(persona *head)
{	
	persona *aux;
	
	aux = head;	
	if(head->py!=5)
	{
		while(aux!=NULL)
		{
			printf("\n\nSituazione coda:\n");
			printf("-----------\n Name: %s \n Priority: %d\n------------\n",aux->name,aux->py);
			aux= aux->next;
		}
	}
	else
		printf("\n\nCoda vuota!\n");
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
	
	numero = getchar()-'0';
	
	while(x<3)
        {
		c=getchar();
      
                name[x]=c;
		
		x++;
        }
	printf("ciao");
	if(head->py==5)
	{
		/*Inizializza coda*/
		/*head = (persona*)malloc(sizeof(persona));*/
		head->py = numero;
		for(i=0;i<3;i++)
			head->name[i] = name[i];
		head->next = NULL;
	}
	else{
		printf("c");
		aux = head;
    		printf("ci");
		while(numero < aux->py || aux->next!=NULL )
		{	old = aux;
			aux = aux->next;
		}
	
		new = (persona*) malloc(sizeof(persona));
		new->py = numero;
		
		for(i=0;i<3;i++)
			new->name[i] = name[i];
	
		
		if(aux->next == NULL)
		{
			aux->next = new;
			new->next = NULL;
		}
		else if(aux == head)
		{
			new->next = head;
			head = new;
		}
		
		old->next = new;
		new->next = aux;
       			
		}
	
}

/*Funzione di uscita*/
void out(persona *head)
{	
	persona *aux;


	if(head->py==5)
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
	
	while(c!='\n')
	{
		if(c=='i')
		{ 		
			insert(head);
			printf("\nfetch i\n");
		}
	
		else if(c=='e')
		{
			out(head);	
		}

	      
  
	c=getchar();	

	}	

}
int main(int argc, char *argv[])
{	
	
	char c;
	persona head;
	int t,n;
	n = 10;
	
	head.py = 5;
	
	while(t < n) 
	{
		printf("\nmain\n");
		fetch(&head);
		visual(&head);
		t++;
	}	

			
}

