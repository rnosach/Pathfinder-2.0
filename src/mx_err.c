#include "./inc/pathfinder.h"
#include "./libmx/inc/libmx.h"

void mx_err(int type, char *filename, int num_line){
	mx_if_exist_error(type, filename, num_line);
	exit(0);
}
