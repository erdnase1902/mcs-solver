CXX := g++
CXXFLAGS := -g -march=native
all: mcsp

mcsp: mcsp.cpp graph.cpp graph.hpp
	$(CXX) $(CXXFLAGS) -Wall -Wextra -std=c++11 -o mcsp graph.cpp mcsp.cpp -pthread -lboost_filesystem -lboost_system


.PHONY: clean
clean:
	\rm -f mcsp