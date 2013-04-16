#include<stdio.h>

struct node
{
	int data;
	struct node *next;
};

struct node *start=NULL;
struct node *temp=NULL;

void insert(int x)
{
	struct node *n;
	n = (struct node *) malloc(sizeof(n));
	n->data=x;
	n->next=NULL;
	if(start==NULL)
	{
		start=n;
		printf("inserted start\n");
	}
	else
	{
		temp=start;
		while(temp->next!=NULL)
			temp=temp->next;
	
		temp->next=n;
		//temp=n;
		printf("inserted next\n");
	}
}

void traverse()
{
	if(start==NULL)
		printf("Empty list\n");
	else
	{
		temp=start;
		while(temp!=NULL)
		{
			printf("%d ->",temp->data);
			temp=temp->next;
		}
		printf("\n");
	}
}

void rev()
{
//	if(start->next->next==NULL)
//	{	
		struct node *t,*t2;
		t=start;
		start=start->next;
		start->next=t;
		//t->next=NULL;
		
		traverse();		
		
		t2=start->next->next;
		while(t2->next->next!=NULL)
		{
			t=t2;
			t2=t2->next;
			t->next=t2->next;
			t2->next=t;
			t2=t2->next->next;
		}
			
		
	traverse();
//	}
	
}
		
	
void main()
{
int ch,d;
do{
	
	printf("Enter the choice : ");
	scanf("%d",&ch);
	switch(ch)
	{
		case 1 :
			printf("Enter the node : ");
			scanf("%d",&d);
			insert(d);
			break;
		case 2 :
			traverse();
			break;
		case 3 :
			rev();
			break;
	}
  }while(ch!=5);
}

