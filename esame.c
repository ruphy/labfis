#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <stddef.h>
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
	if(head==NULL)
	{	printf("\nSituazione coda:\n");
		while(aux!=NULL)
		{
			printf("-----------\n Name: %s \n Priority: %d\n------------\n",aux->name,aux->py);
			aux= aux->next;
		}
	}
	else
		printf("\n\nCoda vuota!\n");
	
}
/*Funzione di inserimento*/
persona* insert(persona *head)
{
	
	persona *aux,*old,*new;
	
	int numero;
	char c,name[30];
	int x,i,k;
	
	x=0;
	i=0;
	k=0;
	
	numero = getchar()-'0';
	
	while(x<3)
        {
		c=getchar();
     		printf("1"); 
                name[x]=c;
		
		x++;
        }
	printf("2");

	if(head->py=5)
	{
		/*Inizializza coda*/
		printf("3");
		head->py = numero;
		for(i=0;i<3;i++)
			head->name[i] = name[i];
		head->next = NULL;
	}
	else{
			
		aux = head;
	
		
		while((aux->py < numero) && ( aux->next!=NULL))
		{
			old = aux;
			aux=aux->next;
			
		}
		
		new = (persona*) malloc(sizeof(persona));
		new->py = numero;
		
		for(i=0;i<3;i++)
			new->name[i] = name[i];
	
		
		if( aux->next==NULL && aux->py < numero)
		{
			aux->next = new;
			new->next = NULL;
		}
		else if(aux == head)
			{
				new->next = head;
				head = new;
			}
		else
		{	
			old->next = new;
			new->next = aux;
       		}	
	}
		
}

/*Funzione di uscita*/
persona* out(persona *head)
{	
	
	if(head->py==5)
	{
		printf("\nNon ci sono utenti nella coda");
	}
	else if(head->next == NULL)
		{
			head=NULL;	
		}
	else{
	
		head = head->next;
			
	}
	return head;
}

/*Funzione per l'acquisizione*/
persona* fetch(persona *head)
{	
	char c;
	/*Controllo il primo carattere che è quello che mi fa diramare la funzione in due*/
	
	
	c=getchar();
	
	while(c!='\n')
	{
		if(c=='i')
		{ 	printf("prima insert");	
			head=insert(head);
			printf("dopoinsert");	
		}
	
		else if(c=='e')
		{
			head = out(head);	
		}

	      
  
	c=getchar();	

	}	

return head;
}
int main(int argc, char *argv[])
{	
	
	char c;
	persona *capo,*aux;
	int t,n;
	n = atoi(argv[1]);
        t=0;	

	capo=(persona*)malloc(sizeof(persona));
	capo=NULL;
	
	while(t < n) 
	{
		
		aux = capo;
		printf("main");
		capo = fetch(capo);
		visual(capo);
		t++;
		free(aux);
	}	

			
}

