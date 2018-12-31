# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vguerand <vguerand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/08 16:03:16 by vguerand          #+#    #+#              #
#    Updated: 2018/12/31 14:00:23 by vguerand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libft.a

#==============================================================================#
#------------------------------------------------------------------------------#
#                               DIRECTORIES                                    #

SRC_DIR			:= ./srcs

SRC_SUB_DIR		:=		bool	\
						put 	\
						mem 	\
						str 	\
						lst

SRC_BOOL_DIR	:=		bool
SRC_MEM_DIR		:=		mem
SRC_STR_DIR		:=		str
SRC_PUT_DIR		:=		put
SRC_LST_DIR		:=		lst


INC_DIR			:=		./includes
OBJ_DIR			:=		./objs

#==============================================================================#
#------------------------------------------------------------------------------#
#                                  FILES                                       #

C_HEADERS 	:= libft.h

SRC_NAME 	:=  			$(SRC_BOOL_DIR)/ft_isalnum.c     			\
							$(SRC_BOOL_DIR)/ft_isalpha.c     			\
							$(SRC_BOOL_DIR)/ft_isascii.c     			\
							$(SRC_BOOL_DIR)/ft_isdigit.c     			\
							$(SRC_BOOL_DIR)/ft_isprint.c     			\
							$(SRC_PUT_DIR)/ft_putchar.c					\
							$(SRC_PUT_DIR)/ft_putchar_fd.c				\
							$(SRC_PUT_DIR)/ft_putstr.c					\
							$(SRC_PUT_DIR)/ft_putstr_fd.c				\
							$(SRC_PUT_DIR)/ft_putendl.c					\
							$(SRC_PUT_DIR)/ft_putendl_fd.c				\
							$(SRC_PUT_DIR)/ft_putnbr.c					\
							$(SRC_PUT_DIR)/ft_putnbr_fd.c				\
							$(SRC_LST_DIR)/ft_lstdel.c					\
							$(SRC_LST_DIR)/ft_lstdelone.c				\
							$(SRC_LST_DIR)/ft_lstadd.c					\
							$(SRC_LST_DIR)/ft_lstiter.c					\
							$(SRC_LST_DIR)/ft_lstlen.c					\
							$(SRC_LST_DIR)/ft_lstnew.c					\
							$(SRC_LST_DIR)/ft_lstmap.c					\
							$(SRC_STR_DIR)/ft_atoi.c     				\
							$(SRC_STR_DIR)/ft_itoa.c     				\
							$(SRC_STR_DIR)/ft_strcat.c   				\
							$(SRC_STR_DIR)/ft_strchr.c   				\
							$(SRC_STR_DIR)/ft_strclr.c   				\
							$(SRC_STR_DIR)/ft_strcmp.c   				\
							$(SRC_STR_DIR)/ft_strcpy.c   				\
							$(SRC_STR_DIR)/ft_strdel.c   				\
							$(SRC_STR_DIR)/ft_strdup.c   				\
							$(SRC_STR_DIR)/ft_strequ.c   				\
							$(SRC_STR_DIR)/ft_striter.c  				\
							$(SRC_STR_DIR)/ft_striteri.c 				\
							$(SRC_STR_DIR)/ft_strjoin.c  				\
							$(SRC_STR_DIR)/ft_strlcat.c  				\
							$(SRC_STR_DIR)/ft_strlen.c   				\
							$(SRC_STR_DIR)/ft_strmap.c   				\
							$(SRC_STR_DIR)/ft_strmapi.c  				\
							$(SRC_STR_DIR)/ft_strncat.c  				\
							$(SRC_STR_DIR)/ft_strncmp.c  				\
							$(SRC_STR_DIR)/ft_strncpy.c  				\
							$(SRC_STR_DIR)/ft_strndup.c  				\
							$(SRC_STR_DIR)/ft_strnequ.c  				\
							$(SRC_STR_DIR)/ft_strnew.c   				\
							$(SRC_STR_DIR)/ft_strnstr.c  				\
							$(SRC_STR_DIR)/ft_strrchr.c  				\
							$(SRC_STR_DIR)/ft_strsplit.c 				\
							$(SRC_STR_DIR)/ft_strstr.c   				\
							$(SRC_STR_DIR)/ft_strsub.c   				\
							$(SRC_STR_DIR)/ft_strtrim.c  				\
							$(SRC_STR_DIR)/ft_tolower.c  				\
							$(SRC_STR_DIR)/ft_toupper.c  				\
							$(SRC_MEM_DIR)/ft_bzero.c					\
							$(SRC_MEM_DIR)/ft_memalloc.c				\
							$(SRC_MEM_DIR)/ft_memccpy.c					\
							$(SRC_MEM_DIR)/ft_memchr.c					\
							$(SRC_MEM_DIR)/ft_memcmp.c					\
							$(SRC_MEM_DIR)/ft_memcpy.c					\
							$(SRC_MEM_DIR)/ft_memdel.c					\
							$(SRC_MEM_DIR)/ft_memmove.c					\
							$(SRC_MEM_DIR)/ft_memset.c					\
							ft_index_mot.c								\
							ft_nb_ltr.c									\
							ft_nb_mots.c								\
							ft_nbrlen.c									\
							ft_tabint.c									\
							get_next_line.c								\


SRC_ALL			:= 			$(addprefix $(SRC_DIR)/,$(SRC_NAME))

OBJ				:=			$(addprefix $(OBJ_DIR)/,$(SRC_NAME:.c=.o))
NB				:=			$(words $(SRC_ALL))
INDEX			:=			0

#==============================================================================#
#------------------------------------------------------------------------------#
#                            COMPILER & FLAGS                                  #

CC					:=			gcc
CFLAGS				:=			-Wall -Wextra -Werror
# CFLAGS			+=			-g3
# CFLAGS			+=			-O2


#==============================================================================#
#------------------------------------------------------------------------------#
#                                 RULES                                        #

all: $(NAME)

$(NAME): $(OBJ_DIR) $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@printf "[ 100%% ] %s"

$(OBJ_DIR)/%.o:	$(SRC_DIR)/%.c $(INC_DIR)
	@$(eval DONE=$(shell echo $$(($(INDEX)*20/$(NB)))))
	@$(eval PERCENT=$(shell echo $$(($(INDEX)*100/$(NB)))))
	@$(eval TO_DO=$(shell echo "$@"))
	@$(CC) $(CFLAGS) -o $@ -c $< -I$(INC_DIR)
	@printf "[ %d%% ] %s :: %s       \r" $(PERCENT) $(NAME) $@
	@$(eval INDEX=$(shell echo $$(($(INDEX)+1))))

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)
	@mkdir -p $(addprefix $(OBJ_DIR)/,$(SRC_SUB_DIR))

clean:
	@rm -rf $(OBJ_DIR)
	@printf '\033[33m[ KILL ] %s\n\033[0m' "Clean of $(NAME) is done ---"

fclean: 				clean
	@rm -rf $(NAME)
	@printf '\033[33m[ KILL ] %s\n\033[0m' "Fclean of $(NAME) is done ---"

re:
	@$(MAKE) fclean
	@$(MAKE)

.PHONY: all clean fclean re build cbuild
