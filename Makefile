CXXFLAGS = -Wall -g -Wwrite-strings -pedantic -std=gnu++17
CXX = g++
RM = rm -rf
SRC = $(wildcard *.cpp)
OBJ = $(SRC:.cpp=.o)

all: big

big: $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^

.PHONY: clean

clean:
	$(RM) big $(OBJ)

