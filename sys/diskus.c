#include<stdio.h>
#include<sys/vfs.h>
main()
{
	struct statfs info;
	int status;
	status=statfs("/dev/sdb1",&info);
	printf("\ntype : %d",info.f_type);
	printf("\ndata blocks : %d",info.f_blocks);
	printf("\nfree : %d",info.f_bfree);
	printf("\nfiles : %d",info.f_files);
	printf("\nfiles free : %d",info.f_ffree);
}
	
