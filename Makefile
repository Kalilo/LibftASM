# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ggroener <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/28 11:16:22 by ggroener          #+#    #+#              #
#    Updated: 2016/12/09 16:35:20 by khansman         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRCS_NAME =		ft_bzero.s			\

HEADER_NAMES =	libfts.h			\

ifeq ($(shell uname -s), Darwin) # Changes rules for MAC and Linux
SYS = OSX
else
SYS = LINUX
endif

CFLAGS =	-f macho64 -O3

ifeq ($(SYS), OSX) 

CFLAGS2 = 	-macosx_version_min 10.8 -lSystem
else

CFLAGS2 =	-Wall -Wextra -Werror

endif

CC = nasm

EXT = .s

INCLUDES_PATH = includes/

SRCS_PATH = srcs/

SRCS = $(addprefix $(SRCS_PATH), $(SRCS_NAME))

OBJS_PATH = objs/

OBJS_NAME = $(SRCS_NAME:$(EXT)=.o)

OBJS = $(addprefix $(OBJS_PATH), $(OBJS_NAME))

ifeq ($(SYS), OSX)

LIBRARY =
 
INCLUDES = -I $(INCLUDES_PATH)

else

LIBRARY =

INCLUDES = -I $(INCLUDES_PATH)

endif

HEADER = $(addprefix $(INCLUDES_PATH), $(HEADER_NAMES))

all:
	@make odir
	@make $(NAME)

define colourecho
	@tput setaf 14
	@echo $1
	@tput sgr0
endef

define colourecho2
	@tput setaf 2
	@echo $1
	@tput sgr0
endef

$(NAME): $(OBJS)
	@make qme
	@$(call colourecho, " - Making $(NAME)")
	@ar -rc $(NAME) $(OBJS)
	@ranlib $(NAME)
	@clear
	@$(call colourecho, "Make Done!")

$(OBJS_PATH)%.o: $(SRCS_PATH)%$(EXT)
	@$(call colourecho, " - Compiling $<")
	@$(CC) $(CFLAGS) $(INCLUDES) -o $@ $< -I$(INCLUDES_PATH)
	@$(call colourecho, "Compiling Done!")

odir:
	@mkdir -p $(OBJS_PATH)

test:
	@make all
	@gcc main.c $(NAME) -I $(INCLUDES_PATH)
	@./a.out

clean:
	@$(call colourecho, " - Clearing object files")
	@rm -f $(OBJS)
	@$(call colourecho, "clean done!")

fclean: clean del_server del_client
	@$(call colourecho, "Clearing executable files")
	@rm -f $(NAME)
	@$(call colourecho, "fclean done")

re: fclean all
	@$(call colourecho, "re Done!")

format: norme me

norme: norm

norm:
	@$(call colourecho2, "Norminette:")
	@norminette $(SRCS)
	@norminette $(HEADER)

fnorm: fnorme

fnorme:
	@$(call colourecho2, "Norminette:")
	@find $(SRCS_PATH) -name "*$(EXT)" -maxdepth 1 -type f -exec norminette  {} \;
	@find $(INCLUDES_PATH) -name "*.h" -maxdepth 1 -type f -exec norminette  {} \;

qme:
	@if [ ! -f author ]; then \
		whoami > author; \
	fi
	
me: qme
	cat -e author

submodule:
	git submodule init libft
	git submodule update
	git submodule sync -- libft

.PHONY: clean fclean re odir
