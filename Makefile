NAME = pathfinder

INC = ./libmx/inc/libmx.h

HEADTMP = ./libmx.h

SRC = ./mx_printerr.c \
		./mx_if_exist_error.c \
		./mx_isnum_exist.c \
		./mx_in_console_output.c \
		./mx_new_way.c \
		./mx_new_cost_str.c \
		./mx_alternative_push.c \
		./mx_add.c \
		./mx_push_alt_way.c \
		./mx_push_final_isl.c \
		./mx_algorithm.c \
		./mx_get_rel.c \
		./mx_get_matrix.c \
		./mx_check_way.c \
		./mx_check_isl.c \
		./mx_get_name_list.c \
		./mx_push_name.c \
		./mx_push_isl.c \
		./mx_create_isl.c \
		./mx_is_uniqueness.c \
		./mx_check_str.c \
		./mx_check_errors.c \
		./mx_err.c \
		./mx_main.c

SRCS = ./src/mx_printerr.c \
		./src/mx_if_exist_error.c \
		./src/mx_isnum_exist.c \
		./src/mx_in_console_output.c \
		./src/mx_new_way.c \
		./src/mx_new_cost_str.c \
		./src/mx_alternative_push.c \
		./src/mx_add.c \
		./src/mx_push_alt_way.c \
		./src/mx_push_final_isl.c \
		./src/mx_algorithm.c \
		./src/mx_get_rel.c \
		./src/mx_get_matrix.c \
		./src/mx_check_way.c \
		./src/mx_check_isl.c \
		./src/mx_get_name_list.c \
		./src/mx_push_name.c \
		./src/mx_push_isl.c \
		./src/mx_create_isl.c \
		./src/mx_is_uniqueness.c \
		./src/mx_check_str.c \
		./src/mx_check_errors.c \
		./src/mx_err.c \
		./src/mx_main.c

OBJ = ./mx_printerr.o \
		./mx_if_exist_error.o \
		./mx_isnum_exist.o \
		./mx_in_console_output.o \
		./mx_new_way.o \
		./mx_new_cost_str.o \
		./mx_alternative_push.o \
		./mx_add.o \
		./mx_push_alt_way.o \
		./mx_push_final_isl.o \
		./mx_algorithm.o \
		./mx_get_rel.o \
		./mx_get_matrix.o \
		./mx_check_way.o \
		./mx_check_isl.o \
		./mx_get_name_list.o \
		./mx_push_name.o \
		./mx_push_isl.o \
		./mx_create_isl.o \
		./mx_is_uniqueness.o \
		./mx_check_str.o \
		./mx_check_errors.o \
		./mx_err.o \
		./mx_main.o

OBJO = ./obj/mx_printerr.o \
		./obj/mx_if_exist_error.o \
		./obj/mx_isnum_exist.o \
		./obj/mx_in_console_output.o \
		./obj/mx_new_way.o \
		./obj/mx_new_cost_str.o \
		./obj/mx_alternative_push.o \
		./obj/mx_add.o \
		./obj/mx_push_alt_way.o \
		./obj/mx_push_final_isl.o \
		./obj/mx_algorithm.o \
		./obj/mx_get_rel.o \
		./obj/mx_get_matrix.o \
		./obj/mx_check_way.o \
		./obj/mx_check_isl.o \
		./obj/mx_get_name_list.o \
		./obj/mx_push_name.o \
		./obj/mx_push_isl.o \
		./obj/mx_create_isl.o \
		./obj/mx_is_uniqueness.o \
		./obj/mx_check_str.o \
		./obj/mx_check_errors.o \
		./obj/mx_err.o \
		./obj/mx_main.o
  
CFLGS = -std=c11 -Wall -Wextra -Wpedantic -Werror -g -fsanitize=address

all: install uninstall

install:
	@cd libmx && make -f Makefile install
	@cp $(INC) $(SRCS) .
	@clang $(CFLGS) -c  $(SRC)
	@mkdir  obj
	@mv $(OBJ) ./obj
	@clang $(CFLGS) $(OBJO) libmx/libmx.a -o $(NAME)

uninstall:
	@cd libmx && make -f Makefile uninstall
	@rm -rf $(OBJO) $(SRC) $(HEADTMP)
	@rm -rf ./obj
	@cd libmx && rm -rf ./obj

clean: uninstall
	@cd libmx && make -f Makefile clean
	@cd libmx && rm -rf ./obj
	@rm -rf $(NAME)
	@rm -f $(OBJ)

reinstall: clean all
