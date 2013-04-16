#include<stdio.h>
main()
{
	int c;
	printf("%d\n", EOF);
	while( (c=getchar()) != EOF )
	{}
	printf("%d\n", c);
	printf("%d\n", EOF);
}
