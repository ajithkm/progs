#include<stdio.h>
#include<dirent.h>
main()
{
	char s[23];
	DIR *p;
	struct dirent *d;
	printf("enter the directory : ");
	scanf("%s",s);
	p=opendir(s);
	printf("Files are \n");
	while(d=readdir(p))
	{
		printf("%s\n",d->d_name);
	}
}
		


