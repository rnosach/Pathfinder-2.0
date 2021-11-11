#include "./inc/pathfinder.h"
#include "./libmx/inc/libmx.h"

bool mx_isnum_exist(char *s){
	while(*s){
		if(!mx_isdigit(*s))
			return false;
		s++;
	}
	return true;
}
