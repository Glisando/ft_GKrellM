# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hdanylev <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/18 17:07:17 by hdanylev          #+#    #+#              #
#    Updated: 2018/06/20 22:19:07 by hdanylev         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_GKrellM
SRC = 	CPUModule.class.cpp GraphicalMode.class.cpp MemoryModule.class.cpp \
		NcursesMode.class.cpp NetworkModule.class.cpp OSInfoModule.class.cpp \
		SysMonitor.class.cpp TimeModule.class.cpp UserModule.class.cpp \
		Utilities.class.cpp main.cpp

OBJ = $(SRC:.cpp=.o)
HDRS = CPUModule.class.hpp GraphicalMode.class.hpp MemoryModule.class.hpp \
		NcursesMode.class.hpp NetworkModule.class.hpp OSInfoModule.class.hpp \
		SysMonitor.class.hpp TimeModule.class.hpp UserModule.class.hpp \
		Utilities.class.hpp

CLANG++ = clang++
CL_FLAGS = -Wall -Wextra -Werror -std=c++98
NCURS = -O3 -lncurses

all: $(NAME)

$(NAME): $(OBJ) $(HDRS)
	@$(CLANG++) $(CL_FLAGS) -c $(SRC)
	@$(CLANG++) $(CL_FLAGS) $(NCURS) $(OBJ) -o $(NAME)
	@echo "\033[31mft_GKrellM \033[35mMAKED\033[0m"

clean:
	@rm -f $(OBJ)
	@echo "\033[35mCLEANED\033[0m"

fclean: clean
	@rm -f $(NAME)
	@echo "\033[35mCLEANED ALL\033[0m"

re: fclean all

.PHONY: all clean fclean re
