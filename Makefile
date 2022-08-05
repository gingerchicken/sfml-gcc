# G++ configuration
CC = g++
CFLAGS = -Wall -Wextra -Werror -L /usr/local/lib/ -lsfml-graphics -lsfml-window -lsfml-system

# I/O directories
OBJ_DIR = obj
SRC_DIR = src
BIN_DIR = bin

# Files to compile
OBJS = $(OBJ_DIR)/main.o
SRCS = $(SRC_DIR)/main.cpp

PROG ?= MyGame

all: mkdirs $(PROG)

$(PROG): $(OBJS)
	$(CC) $(OBJS) -o $(BIN_DIR)/$(PROG) $(CFLAGS)

$(OBJS):
	$(CC) -c $(SRCS) -o $(OBJS) $(CFLAGS)

# Create the directories
mkdirs:
	mkdir -p bin
	mkdir -p obj

# Remove the directories
clean:
	rm -rf bin obj