#include "./inc/pathfinder.h"
#include "./libmx/inc/libmx.h"

void mx_push_alt_way(t_islR *out, char *name, t_islR *alt1, t_islR *alt2){
	while(alt1){
		mx_alternative_push(out, name, alt1, alt2);
		alt1 = alt1->next;
	}
}
